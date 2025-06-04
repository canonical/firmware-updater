abstract class RecoveryKeyService {
  Future<bool> checkRecoveryKey(String recoveryKey);
}

class RecoveryKeyMockService implements RecoveryKeyService {
  @override
  Future<bool> checkRecoveryKey(String recoveryKey) async {
    return recoveryKey == 'valid key';
  }
}
