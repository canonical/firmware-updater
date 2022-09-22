import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:fwupd/fwupd.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:ubuntu_logger/ubuntu_logger.dart';

import 'fwupd_x.dart';

final log = Logger('fwupd_service');

class FwupdService {
  FwupdService({
    @visibleForTesting FwupdClient? fwupd,
    @visibleForTesting Dio? dio,
    @visibleForTesting FileSystem? fs,
  })  : _dio = dio ?? Dio(),
        _fs = fs ?? const LocalFileSystem(),
        _fwupd = fwupd ?? FwupdClient();

  final Dio _dio;
  final FileSystem _fs;
  final FwupdClient _fwupd;
  int? _downloadProgress;
  final _propertiesChanged = StreamController<List<String>>();

  FwupdStatus get status =>
      _downloadProgress != null ? FwupdStatus.downloading : _fwupd.status;
  int get percentage => _downloadProgress ?? _fwupd.percentage;
  String get daemonVersion => _fwupd.daemonVersion;

  Stream<FwupdDevice> get deviceAdded => _fwupd.deviceAdded;
  Stream<FwupdDevice> get deviceChanged => _fwupd.deviceChanged;
  Stream<FwupdDevice> get deviceRemoved => _fwupd.deviceRemoved;
  Stream<List<String>> get propertiesChanged => _propertiesChanged.stream;

  Future<void> init() async {
    await _fwupd.connect();
    unawaited(_propertiesChanged.addStream(_fwupd.propertiesChanged));
  }

  Future<void> dispose() {
    _dio.close();
    return _fwupd.close();
  }

  Future<File> _fetchRelease(FwupdRelease release) async {
    final remote = await _fwupd.getRemotes().then((remotes) {
      return remotes.firstWhere((remote) => remote.id == release.remoteId);
    });

    assert(release.locations.isNotEmpty, 'TODO: handle multiple locations');

    late final File file;
    switch (remote.kind) {
      case FwupdRemoteKind.download:
        // TODO:
        // - should the .cab be stored in the cache directory?
        file = await _downloadRelease(release.locations.first);
        break;
      case FwupdRemoteKind.local:
        final cache = p.dirname(remote.filenameCache ?? '');
        file = _fs.file(p.join(cache, release.locations.first));
        break;
      default:
        throw UnimplementedError('Remote kind ${remote.kind} not implemented');
    }
    return file;
  }

  Future<File> _downloadRelease(String url) async {
    final path = p.join(_fs.systemTempDirectory.path, p.basename(url));
    log.debug('download $url to $path');
    try {
      return await _dio.download(url, path, onReceiveProgress: (recvd, total) {
        _setDownloadProgress(100 * recvd ~/ total);
      }).then((response) => _fs.file(path));
    } on DioError catch (e) {
      throw Exception(e.message);
    } finally {
      _setDownloadProgress(null);
    }
  }

  void _setDownloadProgress(int? progress) {
    if (_downloadProgress == progress) return;
    _downloadProgress = progress;
    _propertiesChanged.add(['Percentage']);
  }

  Future<void> activate(FwupdDevice device) {
    log.debug('activate $device');
    return _fwupd.activate(device.id);
  }

  Future<void> clearResults(FwupdDevice device) {
    log.debug('clearResults $device');
    return _fwupd.clearResults(device.id);
  }

  Future<List<FwupdDevice>> getDevices() => _fwupd.getDevices();

  Future<List<FwupdRelease>> getDowngrades(String deviceId) {
    return _fwupd.getDowngrades(deviceId);
  }

  Future<List<FwupdPlugin>> getPlugins() => _fwupd.getPlugins();

  Future<List<FwupdRelease>> getReleases(String deviceId) {
    return _fwupd.getReleases(deviceId);
  }

  Future<List<FwupdRemote>> getRemotes() => _fwupd.getRemotes();

  Future<List<FwupdRelease>> getUpgrades(String deviceId) {
    return _fwupd.getUpgrades(deviceId);
  }

  Future<void> install(
    FwupdDevice device,
    FwupdRelease release, [
    @visibleForTesting
        ResourceHandle Function(RandomAccessFile file)? resourceHandleFromFile,
  ]) async {
    log.debug('install $release');
    log.debug('on $device');
    final file = await _fetchRelease(release);
    resourceHandleFromFile ??= ResourceHandle.fromFile;
    return _fwupd.install(
      device.id,
      resourceHandleFromFile(file.openSync()),
      flags: {
        if (release.isDowngrade) FwupdInstallFlag.allowOlder,
        if (!release.isDowngrade && !release.isUpgrade)
          FwupdInstallFlag.allowReinstall,
      },
    );
  }

  Future<void> unlock(FwupdDevice device) {
    log.debug('unlock $device');
    return _fwupd.unlock(device.id);
  }

  Future<void> verify(FwupdDevice device) {
    log.debug('verify $device');
    return _fwupd.verify(device.id);
  }

  Future<void> verifyUpdate(FwupdDevice device) {
    log.debug('verifyUpdate $device');
    return _fwupd.verifyUpdate(device.id);
  }
}
