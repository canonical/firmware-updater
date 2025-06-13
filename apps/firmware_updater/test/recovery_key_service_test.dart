import 'package:firmware_updater/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:snapd/snapd.dart';

import 'recovery_key_service_test.mocks.dart';

@GenerateMocks([SnapdClient])
void main() {
  test('valid recovery key', () async {
    final snapdClient = MockSnapdClient();
    final service = RecoveryKeySnapdService(snapdClient: snapdClient);
    expect(await service.checkRecoveryKey('foo'), isTrue);
  });

  test('invalid recovery key', () async {
    final snapdClient = MockSnapdClient();
    when(snapdClient.checkRecoveryKey(any))
        .thenThrow(SnapdException(message: 'invalid recovery key'));
    final service = RecoveryKeySnapdService(snapdClient: snapdClient);
    expect(await service.checkRecoveryKey('foo'), isFalse);
  });
}
