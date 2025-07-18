import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:firmware_updater/services.dart';
import 'package:meta/meta.dart';

class RecoveryKeyModel {
  RecoveryKeyModel(
    this._service, [
    @visibleForTesting FileSystem _fs = const LocalFileSystem(),
  ]) : hasUbuntuFde = _fs.file(dataDevicePath).existsSync();

  static const dataDevicePath = '/dev/disk/by-label/ubuntu-data-enc';

  final RecoveryKeyService _service;
  final bool hasUbuntuFde;

  Future<bool> checkRecoveryKey(String recoveryKey) =>
      _service.checkRecoveryKey(recoveryKey);

  bool get hasBitlocker => _service.hasBitlocker;
}
