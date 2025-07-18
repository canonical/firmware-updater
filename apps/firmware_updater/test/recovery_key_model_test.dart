import 'package:file/memory.dart';
import 'package:firmware_updater/recovery_key_model.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_utils.dart';

void main() {
  test('detect ubuntu fde', () async {
    final service = mockRecoveryKeyService();
    final fs = MemoryFileSystem.test();
    fs.file(RecoveryKeyModel.dataDevicePath).createSync(recursive: true);

    final recoveryKeyModel = RecoveryKeyModel(service, fs);
    expect(recoveryKeyModel.hasUbuntuFde, isTrue);
  });

  test('no ubuntu fde', () async {
    final service = mockRecoveryKeyService();
    final fs = MemoryFileSystem.test();

    final recoveryKeyModel = RecoveryKeyModel(service, fs);
    expect(recoveryKeyModel.hasUbuntuFde, isFalse);
  });
}
