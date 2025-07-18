import 'package:firmware_updater/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:snapd/snapd.dart';

import 'test_utils.dart';

@GenerateMocks([SnapdClient])
void main() {
  test('valid recovery key', () async {
    final snapdClient = mockSnapdClient(isValidRecoveryKey: true);
    final service = RecoveryKeySnapdService(
      snapdClient: snapdClient,
      udisksClient: mockUDisksClient(),
    );
    expect(await service.checkRecoveryKey('foo'), isTrue);
  });

  test('invalid recovery key', () async {
    final snapdClient = mockSnapdClient(isValidRecoveryKey: false);
    final service = RecoveryKeySnapdService(
      snapdClient: snapdClient,
      udisksClient: mockUDisksClient(),
    );
    expect(await service.checkRecoveryKey('foo'), isFalse);
  });

  test('bitlocker detected', () async {
    final udisks = mockUDisksClient(hasBitlocker: true);
    final service = RecoveryKeySnapdService(
      snapdClient: mockSnapdClient(),
      udisksClient: udisks,
    );
    expect(service.hasBitlocker, isTrue);
  });
  test('no bitlocker detected', () async {
    final udisks = mockUDisksClient(hasBitlocker: false);
    final service = RecoveryKeySnapdService(
      snapdClient: mockSnapdClient(),
      udisksClient: udisks,
    );
    expect(service.hasBitlocker, isFalse);
  });
}
