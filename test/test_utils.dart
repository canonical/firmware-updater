import 'package:fwupd/fwupd.dart';
import 'package:mockito/mockito.dart';

import 'service_test.mocks.dart';

FwupdDevice createDevice({required String id, Set<FwupdDeviceFlag>? flags}) {
  return FwupdDevice(
    deviceId: id,
    name: '',
    plugin: '',
    flags: flags ?? {FwupdDeviceFlag.updatable},
  );
}

MockFwupdService createMockService({
  List<FwupdDevice>? devices,
  Map<String, List<FwupdRelease>>? releases,
}) {
  final service = MockFwupdService();
  when(service.getDevices()).thenAnswer((_) async => devices ?? []);
  when(service.getReleases(any)).thenAnswer((i) async {
    final id = i.positionalArguments[0];
    final value = releases?[id];
    if (value == null) throw const FwupdNothingToDoException();
    return value;
  });
  when(service.deviceAdded).thenAnswer((_) => const Stream.empty());
  when(service.deviceChanged).thenAnswer((_) => const Stream.empty());
  when(service.deviceRemoved).thenAnswer((_) => const Stream.empty());
  when(service.propertiesChanged).thenAnswer((_) => const Stream.empty());
  return service;
}
