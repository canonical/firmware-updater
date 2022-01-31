import 'dart:async';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:fwupd/fwupd.dart';
import 'package:path/path.dart' as p;

import 'service.dart';

class FwupdModel extends ChangeNotifier {
  FwupdModel({required FwupdClient client, required FwupdService service})
      : _client = client,
        _service = service;

  final FwupdClient _client;
  final FwupdService _service;
  var _devices = <FwupdDevice>[];
  final _releases = <String, List<FwupdRelease>>{};
  var _remotes = <String, FwupdRemote>{};
  StreamSubscription<FwupdDevice>? _deviceAdded;
  StreamSubscription<FwupdDevice>? _deviceChanged;
  StreamSubscription<FwupdDevice>? _deviceRemoved;
  StreamSubscription<List<String>>? _propsChanged;
  int? _progress;
  void Function(String error)? _onError;

  bool get isBusy => status.index > FwupdStatus.idle.index;
  FwupdStatus get status =>
      _progress != null ? FwupdStatus.downloading : _client.status;
  int get percentage => _progress ?? _client.percentage;
  String get daemonVersion => _client.daemonVersion;

  List<FwupdDevice> get devices => _devices;
  List<FwupdRelease> releases(FwupdDevice device) => _releases[device.id] ?? [];
  bool hasUpgrade(FwupdDevice device) =>
      _releases[device.id]?.firstWhereOrNull((release) => release.isUpgrade) !=
      null;

  Future<void> init({required void Function(String error) onError}) {
    _onError = onError;
    // TODO: sync _devices
    _deviceAdded = _client.deviceAdded.listen((_) => _fetchDevices());
    _deviceChanged = _client.deviceChanged.listen((_) => _fetchDevices());
    _deviceRemoved = _client.deviceRemoved.listen((_) => _fetchDevices());
    _propsChanged = _client.propertiesChanged.listen((_) => notifyListeners());
    return _client.connect().then((_) => refresh());
  }

  Future<void> refresh() => Future.wait([_fetchDevices(), _fetchRemotes()]);

  @override
  void dispose() {
    _deviceAdded?.cancel();
    _deviceAdded = null;
    _deviceChanged?.cancel();
    _deviceChanged = null;
    _deviceRemoved?.cancel();
    _deviceRemoved = null;
    _propsChanged?.cancel();
    _propsChanged = null;
    super.dispose();
  }

  Future<void> install(FwupdDevice device, FwupdRelease release) async {
    try {
      final file = await _fetchRelease(release);
      return await _client.install(
        device.id,
        ResourceHandle.fromFile(file.openSync()),
        allowOlder: release.isDowngrade,
        allowReinstall: !release.isDowngrade && !release.isUpgrade,
      );
      // TODO: FwupdException
    } on Exception catch (e) {
      _onError?.call(e.toString());
    }
  }

  Future<void> activate(FwupdDevice device) => _client.activate(device.id);
  Future<void> clearResults(FwupdDevice device) =>
      _client.clearResults(device.id);
  Future<void> unlock(FwupdDevice device) => _client.activate(device.id);
  Future<void> verify(FwupdDevice device) => _client.verify(device.id);
  Future<void> verifyUpdate(FwupdDevice device) =>
      _client.verifyUpdate(device.id);

  Future<void> _fetchDevices() async {
    var devices = <FwupdDevice>[];
    try {
      devices = await _client.getDevices().then((devices) {
        return devices.where((device) {
          if (!device.isUpdatable) return false;
          _fetchReleases(device);
          return true;
        }).toList();
      });
    } on FwupdException catch (_) {}
    _devices = devices;
    notifyListeners();
  }

  Future<void> _fetchReleases(FwupdDevice device) async {
    _releases[device.id] = await _client
        .getReleases(device.id)
        .catchError((_) => <FwupdRelease>[], test: (e) => e is FwupdException);
    notifyListeners();
  }

  Future<void> _fetchRemotes() async {
    final remotes = await _client
        .getRemotes()
        .catchError((_) {}, test: (e) => e is FwupdException);
    _remotes = {
      for (final remote in remotes) remote.id: remote,
    };
    notifyListeners();
  }

  Future<File> _fetchRelease(FwupdRelease release) async {
    final remote = _remotes[release.remoteId];
    assert(remote != null);

    assert(release.locations.isNotEmpty, 'TODO: handle multiple locations');

    late final File file;
    switch (remote!.kind) {
      case FwupdRemoteKind.download:
        // TODO:
        // - should the .cab be stored in the cache directory?
        try {
          file = await _service.download(
            release.locations.first,
            onProgress: _updateProgress,
          );
        } finally {
          _updateProgress(null);
        }
        break;
      case FwupdRemoteKind.local:
        final cache = p.dirname(remote.filenameCache ?? '');
        file = File(p.join(cache, release.locations.first));
        break;
      default:
        throw UnimplementedError('Remote kind ${remote.kind} not implemented');
    }
    return file;
  }

  void _updateProgress(int? progress) {
    if (_progress == progress) return;
    _progress = progress;
    notifyListeners();
  }
}

extension FwupdDeviceX on FwupdDevice {
  String get id => deviceId;
  bool get canVerify => flags.contains(FwupdDeviceFlag.canVerify);
  bool get isUpdatable =>
      flags.contains(FwupdDeviceFlag.updatable) ||
      flags.contains(FwupdDeviceFlag.updatableHidden);
}

extension FwupdReleaseX on FwupdRelease {
  bool get isUpgrade => flags.contains(FwupdReleaseFlag.isUpgrade);
  bool get isDowngrade => flags.contains(FwupdReleaseFlag.isDowngrade);
}
