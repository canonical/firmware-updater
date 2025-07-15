import 'package:flutter/foundation.dart';
import 'package:snapd/snapd.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

final _log = Logger('recovery_key_service');

abstract class RecoveryKeyService {
  Future<bool> checkRecoveryKey(String recoveryKey);
}

class RecoveryKeyMockService implements RecoveryKeyService {
  @override
  Future<bool> checkRecoveryKey(String recoveryKey) async {
    return recoveryKey == 'valid key';
  }
}

class RecoveryKeySnapdService implements RecoveryKeyService {
  RecoveryKeySnapdService({@visibleForTesting SnapdClient? snapdClient})
      : _snapdClient =
            snapdClient ?? SnapdClient(socketPath: '/run/snapd-snap.socket');
  final SnapdClient _snapdClient;

  @override
  Future<bool> checkRecoveryKey(String recoveryKey) async {
    try {
      await _snapdClient.checkRecoveryKey(recoveryKey);
      return true;
    } on SnapdException catch (e) {
      _log.info('caught snapd exception $e');
      _log.info('assuming recovery key is invalid');
      return false;
    } on Exception catch (e) {
      _log.error(e);
      rethrow;
    }
  }
}
