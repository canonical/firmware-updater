import 'dart:async';
import 'dart:io';

import 'package:dbus/dbus.dart';
import 'package:dio/dio.dart';
import 'package:file/memory.dart';
import 'package:firmware_updater/fwupd_dbus_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:upower/upower.dart';

import 'fwupd_dbus_service_test.mocks.dart';
import 'test_utils.dart';

@GenerateNiceMocks([
  MockSpec<Dio>(),
  MockSpec<FwupdClient>(),
  MockSpec<DBusClient>(),
  MockSpec<UPowerClient>()
])
void main() {
  test('connects and closes the fwupd client', () async {
    final client = MockFwupdClient();
    final dbus = MockDBusClient();
    when(client.propertiesChanged).thenAnswer((_) => const Stream.empty());
    final upower = MockUPowerClient();
    when(upower.propertiesChanged).thenAnswer((_) => const Stream.empty());

    final service = FwupdDbusService(
      fwupd: client,
      dbus: dbus,
      upower: upower,
    );

    await service.init();
    verify(client.connect()).called(1);
    verify(upower.connect()).called(1);

    await service.dispose();
    verify(client.close()).called(1);
    verify(upower.close()).called(1);
  });

  group('download', () {
    const url = 'http://test.fake/myrelease.cab';

    final fs = MemoryFileSystem.test();
    final file = fs.file('${fs.systemTempDirectory.path}/myrelease.cab');

    final device = testDevice(id: 'mydevice');
    final release = FwupdRelease(
      name: 'myrelease',
      remoteId: 'myremote',
      locations: const [url],
    );

    final dio = MockDio();
    final fwupd = MockFwupdClient();
    final dbus = MockDBusClient();
    when(dbus.callMethod(
      destination: anyNamed('destination'),
      path: anyNamed('path'),
      interface: anyNamed('interface'),
      name: anyNamed('name'),
      values: anyNamed('values'),
      replySignature: anyNamed('replySignature'),
    )).thenAnswer((_) async => DBusMethodSuccessResponse());
    final upower = MockUPowerClient();

    final service = FwupdDbusService(
      fwupd: fwupd,
      dio: dio,
      fs: fs,
      dbus: dbus,
      upower: upower,
    );

    setUp(() async {
      file.createSync(recursive: true);
      expect(file.existsSync(), isTrue);

      when(dio.download(
        url,
        file.path,
        onReceiveProgress: anyNamed('onReceiveProgress'),
        options: anyNamed('options'),
      )).thenAnswer((i) async {
        i.namedArguments[#onReceiveProgress]!(0, 1);
        return Response(requestOptions: RequestOptions(path: file.path));
      });

      when(fwupd.propertiesChanged).thenAnswer((_) => const Stream.empty());
      when(fwupd.getRemotes()).thenAnswer((_) async =>
          [FwupdRemote(id: release.remoteId!, kind: FwupdRemoteKind.download)]);

      when(upower.propertiesChanged).thenAnswer((_) => const Stream.empty());

      await service.init();
    });
    test('success', () async {
      await service.install(device, release, (f) => MockResourceHandle());

      verify(dio.download(
        url,
        file.path,
        onReceiveProgress: anyNamed('onReceiveProgress'),
        options: anyNamed('options'),
      )).called(1);
      verifyNever(service.reboot());
    });

    test('error', () async {
      when(dio.download(
        url,
        file.path,
        onReceiveProgress: anyNamed('onReceiveProgress'),
        options: anyNamed('options'),
      )).thenThrow(DioException(
          requestOptions: RequestOptions(path: url), error: 'dio error'));

      service.registerErrorListener(
          expectAsync1((e) => expect(e, isInstanceOf<DioException>())));
      await service.install(device, release, (f) => MockResourceHandle());
      verifyNever(service.reboot());
    });

    test('reboot', () async {
      service
          .registerConfirmationListener(expectAsync0(() => Future.value(true)));
      await service.install(
          testDevice(
              id: 'b',
              flags: {FwupdDeviceFlag.updatable, FwupdDeviceFlag.needsReboot}),
          release,
          (f) => MockResourceHandle());
      verify(service.reboot()).called(1);
    });
  });

  test('fwupd methods', () async {
    final fwupd = MockFwupdClient();
    when(fwupd.propertiesChanged).thenAnswer((_) => const Stream.empty());
    when(fwupd.getDowngrades(any)).thenAnswer((_) async => []);
    when(fwupd.getReleases(any)).thenAnswer((_) async => []);
    when(fwupd.getUpgrades(any)).thenAnswer((_) async => []);
    when(fwupd.getDevices()).thenAnswer((_) async => []);
    when(fwupd.getPlugins()).thenAnswer((_) async => []);
    when(fwupd.getRemotes()).thenAnswer((_) async => []);

    final upower = MockUPowerClient();
    when(upower.propertiesChanged).thenAnswer((_) => const Stream.empty());

    final service = FwupdDbusService(
      fwupd: fwupd,
      dbus: MockDBusClient(),
      upower: upower,
    );

    final device = testDevice(id: 'a');

    await service.init();

    await service.refreshProperties();
    verify(fwupd.refreshPropertyCache()).called(1);

    await service.activate(device);
    verify(fwupd.activate(device.deviceId)).called(1);

    await service.clearResults(device);
    verify(fwupd.clearResults(device.deviceId)).called(1);

    await service.getDowngrades(device);
    verify(fwupd.getDowngrades(device.deviceId)).called(1);

    await service.getReleases(device);
    verify(fwupd.getReleases(device.deviceId)).called(1);

    await service.getUpgrades(device);
    verify(fwupd.getUpgrades(device.deviceId)).called(1);

    await service.getDevices();
    verify(fwupd.getDevices()).called(1);

    await service.getPlugins();
    verify(fwupd.getPlugins()).called(1);

    await service.getRemotes();
    verify(fwupd.getRemotes()).called(1);

    await service.unlock(device);
    verify(fwupd.unlock(device.deviceId)).called(1);

    await service.verify(device);
    verify(fwupd.verify(device.deviceId)).called(1);

    await service.verifyUpdate(device);
    verify(fwupd.verifyUpdate(device.deviceId)).called(1);
  });

  test('onBattery', () async {
    final fwupd = MockFwupdClient();
    when(fwupd.propertiesChanged).thenAnswer((_) => const Stream.empty());

    final upower = MockUPowerClient();
    when(upower.propertiesChanged).thenAnswer((_) => const Stream.empty());
    when(upower.onBattery).thenReturn(true);

    final service = FwupdDbusService(
      fwupd: fwupd,
      dbus: MockDBusClient(),
      upower: upower,
    );

    await service.init();
    expect(service.onBattery, true);
  });

  test('reboot', () async {
    final fwupd = MockFwupdClient();
    when(fwupd.propertiesChanged).thenAnswer((_) => const Stream.empty());

    final upower = MockUPowerClient();
    when(upower.propertiesChanged).thenAnswer((_) => const Stream.empty());

    final dbus = MockDBusClient();
    when(dbus.callMethod(
      destination: anyNamed('destination'),
      path: anyNamed('path'),
      interface: anyNamed('interface'),
      name: anyNamed('name'),
      values: anyNamed('values'),
      replySignature: anyNamed('replySignature'),
    )).thenAnswer((_) async => DBusMethodSuccessResponse());

    final service = FwupdDbusService(
      fwupd: fwupd,
      dbus: dbus,
      upower: upower,
    );

    await service.init();
    await service.reboot();
    verify(dbus.callMethod(
      destination: 'org.freedesktop.login1',
      path: DBusObjectPath('/org/freedesktop/login1'),
      interface: 'org.freedesktop.login1.Manager',
      name: 'Reboot',
      values: [const DBusBoolean(true)],
      replySignature: DBusSignature(''),
    )).called(1);
  });
}

class MockResourceHandle extends Mock implements ResourceHandle {}
