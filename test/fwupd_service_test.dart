import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file/memory.dart';
import 'package:firmware_updater/fwupd_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_session/ubuntu_session.dart';
import 'package:upower/upower.dart';

import 'fwupd_service_test.mocks.dart';
import 'test_utils.dart';

@GenerateMocks([Dio, FwupdClient, UbuntuSession, UPowerClient])
void main() {
  test('connects and closes the fwupd client', () async {
    final client = MockFwupdClient();
    final session = MockUbuntuSession();
    when(client.propertiesChanged).thenAnswer((_) => const Stream.empty());
    final upower = MockUPowerClient();

    final service = FwupdService(
      fwupd: client,
      session: session,
      upower: upower,
    );

    await service.init();
    verify(client.connect()).called(1);
    verify(upower.connect()).called(1);

    await service.dispose();
    verify(client.close()).called(1);
    verify(upower.close()).called(1);
  });

  test('download', () async {
    const url = 'http://test.fake/myrelease.cab';

    final fs = MemoryFileSystem.test();
    final file = fs.file('${fs.systemTempDirectory.path}/myrelease.cab');
    file.createSync(recursive: true);
    expect(file.existsSync(), isTrue);

    final dio = MockDio();
    when(dio.download(url, file.path,
            onReceiveProgress: anyNamed('onReceiveProgress')))
        .thenAnswer((i) async {
      i.namedArguments[#onReceiveProgress]!(0, 1);
      return Response(requestOptions: RequestOptions(path: file.path));
    });

    final fwupd = MockFwupdClient();
    when(fwupd.propertiesChanged).thenAnswer((_) => const Stream.empty());
    when(fwupd.getRemotes()).thenAnswer((_) async =>
        [FwupdRemote(id: 'myremote', kind: FwupdRemoteKind.download)]);

    final device = testDevice(id: 'mydevice');
    final release = FwupdRelease(
      name: 'myrelease',
      remoteId: 'myremote',
      locations: const [url],
    );

    final session = MockUbuntuSession();
    final upower = MockUPowerClient();
    final service = FwupdService(
      fwupd: fwupd,
      dio: dio,
      fs: fs,
      session: session,
      upower: upower,
    );
    await service.init();

    await service.install(device, release, (f) => MockResourceHandle());

    verify(dio.download(url, file.path,
            onReceiveProgress: anyNamed('onReceiveProgress')))
        .called(1);
  });
}

class MockResourceHandle extends Mock implements ResourceHandle {}
