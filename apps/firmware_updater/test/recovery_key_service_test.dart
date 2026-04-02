import 'dart:io';

import 'package:firmware_updater/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:snapd/snapd.dart';

import 'test_utils.dart';

@GenerateMocks([SnapdClient])
void main() {
  test('valid recovery key', () async {
    final snapdClient = mockSnapdClient(isValidRecoveryKey: true);
    final service = RecoveryKeySnapdService(
      snapdClient: snapdClient,
      udisksClient: mockUDisksClient(),
      runProcess: mockProcess().run,
    );
    expect(await service.checkRecoveryKey('foo'), isTrue);
  });

  test('invalid recovery key', () async {
    final snapdClient = mockSnapdClient(isValidRecoveryKey: false);
    final service = RecoveryKeySnapdService(
      snapdClient: snapdClient,
      udisksClient: mockUDisksClient(),
      runProcess: mockProcess().run,
    );
    expect(await service.checkRecoveryKey('foo'), isFalse);
  });

  test('bitlocker detected', () async {
    final udisks = mockUDisksClient(hasBitlocker: true);
    final service = RecoveryKeySnapdService(
      snapdClient: mockSnapdClient(),
      udisksClient: udisks,
      runProcess: mockProcess().run,
    );
    expect(service.hasBitlocker, isTrue);
  });
  test('no bitlocker detected', () async {
    final udisks = mockUDisksClient(hasBitlocker: false);
    final service = RecoveryKeySnapdService(
      snapdClient: mockSnapdClient(),
      udisksClient: udisks,
      runProcess: mockProcess().run,
    );
    expect(service.hasBitlocker, isFalse);
  });

  test('snapd fde managed', () async {
    final snapdClient = mockSnapdClient();
    final service = RecoveryKeySnapdService(
      snapdClient: snapdClient,
      udisksClient: mockUDisksClient(),
      runProcess: mockProcess(stdout: 'storage-encrypted: managed').run,
    );
    await service.init();
    expect(service.hasUbuntuFde, isTrue);
  });

  test('snapd fde not detected', () async {
    final snapdClient = mockSnapdClient();
    final service = RecoveryKeySnapdService(
      snapdClient: snapdClient,
      udisksClient: mockUDisksClient(),
      runProcess: mockProcess().run,
    );
    await service.init();
    expect(service.hasUbuntuFde, isFalse);
  });
}

MockProcess mockProcess({String? stdout}) {
  final mockProcess = MockProcess();
  when(mockProcess.run('snapctl', ['system-mode'])).thenAnswer(
    (_) async => ProcessResult(0, 0, stdout ?? '', ''),
  );
  return mockProcess;
}
