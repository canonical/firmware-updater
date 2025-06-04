import 'package:firmware_updater/services.dart';

class RecoveryKeyModel {
  RecoveryKeyModel(this._service);
  final RecoveryKeyService _service;

  Future<bool> checkRecoveryKey(String recoveryKey) =>
      _service.checkRecoveryKey(recoveryKey);
}
