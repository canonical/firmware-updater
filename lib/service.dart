import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fwupd/fwupd.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:ubuntu_logger/ubuntu_logger.dart';

final log = Logger('service');

class FwupdService {
  FwupdService({
    @visibleForTesting FwupdClient? fwupd,
    @visibleForTesting Dio? dio,
  })  : _dio = dio ?? Dio(),
        _fwupd = fwupd ?? FwupdClient();

  final Dio _dio;
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
    _propertiesChanged.addStream(_fwupd.propertiesChanged);
  }

  Future<void> dispose() {
    _dio.close();
    return _fwupd.close();
  }

  Future<File> download(String url) async {
    final path = p.join(Directory.systemTemp.path, p.basename(url));
    log.debug('download $url to $path');
    try {
      return await _dio.download(url, path, onReceiveProgress: (recvd, total) {
        _setDownloadProgress(100 * recvd ~/ total);
      }).then((response) => File(path));
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

  Future<void> activate(String id) => _fwupd.activate(id);

  Future<void> clearResults(String id) => _fwupd.clearResults(id);

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
    String id,
    ResourceHandle handle, {
    Set<FwupdInstallFlag> flags = const {},
  }) {
    return _fwupd.install(id, handle, flags: flags);
  }

  Future<void> unlock(String id) => _fwupd.unlock(id);

  Future<void> verify(String id) => _fwupd.verify(id);

  Future<void> verifyUpdate(String id) => _fwupd.verifyUpdate(id);
}
