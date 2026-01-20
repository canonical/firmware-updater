import 'package:firmware_updater/recovery_key_model.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_utils.dart';

void main() {
  test('detect ubuntu fde', () async {
    final service = mockRecoveryKeyService(hasSnapdFde: true);
    final recoveryKeyModel = RecoveryKeyModel(service);
    expect(recoveryKeyModel.hasUbuntuFde, isTrue);
  });

  test('no ubuntu fde', () async {
    final service = mockRecoveryKeyService(hasSnapdFde: false);
    final recoveryKeyModel = RecoveryKeyModel(service);
    expect(recoveryKeyModel.hasUbuntuFde, isFalse);
  });
}
