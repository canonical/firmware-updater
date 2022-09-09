import 'package:firmware_updater/service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'service_test.mocks.dart';

@GenerateMocks([FwupdClient])
void main() {
  test('connects and closes the fwupd client', () async {
    final client = MockFwupdClient();
    when(client.propertiesChanged).thenAnswer((_) => const Stream.empty());

    final service = FwupdService(fwupd: client);

    await service.init();
    verify(client.connect()).called(1);

    await service.dispose();
    verify(client.close()).called(1);
  });
}
