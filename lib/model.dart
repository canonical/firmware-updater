import 'dart:async';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:fwupd/fwupd.dart';
import 'package:path/path.dart' as p;
import 'package:ubuntu_logger/ubuntu_logger.dart';

import 'fwupd_x.dart';
import 'service.dart';

final log = Logger('model');

class FwupdModel extends ChangeNotifier {
  FwupdModel(this._service);

  final FwupdService _service;
  var _devices = <FwupdDevice>[];
  final _releases = <String, List<FwupdRelease>>{};
  var _remotes = <String, FwupdRemote>{};
  StreamSubscription<FwupdDevice>? _deviceAdded;
  StreamSubscription<FwupdDevice>? _deviceChanged;
  StreamSubscription<FwupdDevice>? _deviceRemoved;
  StreamSubscription<List<String>>? _propsChanged;
  void Function(String error)? _onError;

  bool get isBusy => status.index > FwupdStatus.idle.index;
  FwupdStatus get status => _service.status;
  int get percentage => _service.percentage;
  String get daemonVersion => _service.daemonVersion;

  List<FwupdDevice> get devices => _devices;
  List<FwupdRelease> releases(FwupdDevice device) => _releases[device.id] ?? [];
  bool hasUpgrade(FwupdDevice device) =>
      _releases[device.id]?.firstWhereOrNull((release) => release.isUpgrade) !=
      null;

  Future<void> init({required void Function(String error) onError}) {
    _onError = onError;
    // TODO: sync _devices
    _deviceAdded = _service.deviceAdded.listen((device) {
      log.debug('added $device');
      _fetchDevices();
    });
    _deviceChanged = _service.deviceChanged.listen((device) {
      log.debug('changed $device');
      _fetchDevices();
    });
    _deviceRemoved = _service.deviceRemoved.listen((device) {
      log.debug('removed $device');
      _fetchDevices();
    });
    _propsChanged = _service.propertiesChanged.listen((_) => notifyListeners());
    return _service.init().then((_) => refresh());
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
    log.debug('install $release on $device');
    try {
      final file = await _fetchRelease(release);
      return await _service.install(
        device.id,
        ResourceHandle.fromFile(file.openSync()),
        flags: {
          if (release.isDowngrade) FwupdInstallFlag.allowOlder,
          if (!release.isDowngrade && !release.isUpgrade)
            FwupdInstallFlag.allowReinstall,
        },
      );
      // TODO: FwupdException
    } on Exception catch (e) {
      _onError?.call(e.toString());
    }
  }

  Future<void> activate(FwupdDevice device) {
    log.debug('activate $device');
    return _service.activate(device.id);
  }

  Future<void> clearResults(FwupdDevice device) {
    log.debug('clearResults $device');
    return _service.clearResults(device.id);
  }

  Future<void> unlock(FwupdDevice device) {
    log.debug('unlock $device');
    return _service.activate(device.id);
  }

  Future<void> verify(FwupdDevice device) {
    log.debug('verify $device');
    return _service.verify(device.id);
  }

  Future<void> verifyUpdate(FwupdDevice device) {
    log.debug('verifyUpdate $device');
    return _service.verifyUpdate(device.id);
  }

  Future<void> _fetchDevices() async {
    var devices = <FwupdDevice>[];
    try {
      devices = await _service.getDevices().then((devices) {
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
    _releases[device.id] = await _service
        .getReleases(device.id)
        .catchError((_) => <FwupdRelease>[], test: (e) => e is FwupdException);
    notifyListeners();
  }

  Future<void> _fetchRemotes() async {
    final remotes = await _service
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
        file = await _service.download(release.locations.first);
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
}
