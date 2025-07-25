import 'package:collection/collection.dart';
import 'package:firmware_updater/app.dart';
import 'package:firmware_updater/l10n/app_localizations.dart';
import 'package:firmware_updater/pages.dart';
import 'package:firmware_updater/recovery_key_model.dart';
import 'package:firmware_updater/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:snapd/snapd.dart';
import 'package:udisks/udisks.dart';

import 'test_utils.mocks.dart';

@GenerateMocks([DeviceModel])
DeviceModel mockModel({
  required FwupdDevice device,
  bool? hasUpgrade,
  List<FwupdRelease>? releases,
  FwupdException? error,
  bool? testDeviceAffectsFde,
  bool? ubuntuFdeDetected,
}) {
  final model = MockDeviceModel();
  when(model.device).thenReturn(device);
  when(model.hasUpgrade).thenReturn(hasUpgrade ?? false);
  when(model.releases).thenReturn(releases ?? []);
  when(model.latestRelease).thenReturn(releases?.firstOrNull);
  when(model.testDeviceAffectsFde).thenReturn(testDeviceAffectsFde ?? false);
  return model;
}

@GenerateMocks([FwupdNotifier])
MockFwupdNotifier mockNotifier({
  FwupdStatus? status,
  int? percentage,
  String? version,
  bool? onBattery,
}) {
  final notifier = MockFwupdNotifier();
  when(notifier.status).thenReturn(status ?? FwupdStatus.idle);
  when(notifier.percentage).thenReturn(percentage ?? 0);
  when(notifier.version).thenReturn(version ?? 'v1.2.3');
  when(notifier.onBattery).thenReturn(onBattery ?? false);
  return notifier;
}

@GenerateMocks([FwupdDbusService])
MockFwupdDbusService mockService({
  List<FwupdDevice>? devices,
  Map<String, List<FwupdRelease>>? releases,
}) {
  final service = MockFwupdDbusService();
  when(service.getDevices()).thenAnswer((_) async {
    if (devices == null) throw const FwupdNothingToDoException();
    return devices;
  });
  when(service.getReleases(any)).thenAnswer((i) async {
    final device = i.positionalArguments[0] as FwupdDevice;
    final value = releases?[device.deviceId];
    if (value == null) throw const FwupdNothingToDoException();
    return value;
  });
  when(service.deviceAdded).thenAnswer((_) => const Stream.empty());
  when(service.deviceChanged).thenAnswer((_) => const Stream.empty());
  when(service.deviceRemoved).thenAnswer((_) => const Stream.empty());
  when(service.deviceRequest).thenAnswer((_) => const Stream.empty());
  when(service.propertiesChanged).thenAnswer((_) => const Stream.empty());
  when(service.onBattery).thenAnswer((_) => false);
  return service;
}

@GenerateMocks([DeviceStore])
DeviceStore mockStore() => MockDeviceStore();

@GenerateMocks([RecoveryKeyModel])
MockRecoveryKeyModel mockRecoveryKeyModel({
  String? validKey,
  bool? hasUbuntuFde,
  bool? hasBitlocker,
}) {
  final model = MockRecoveryKeyModel();
  when(model.checkRecoveryKey(any)).thenAnswer(
    (i) async =>
        validKey != null ? i.positionalArguments.first == validKey : true,
  );
  when(model.hasBitlocker).thenReturn(hasBitlocker ?? false);
  when(model.hasUbuntuFde).thenReturn(hasUbuntuFde ?? false);
  return model;
}

@GenerateMocks([RecoveryKeyService])
RecoveryKeyService mockRecoveryKeyService({bool? hasBitlocker}) {
  final service = MockRecoveryKeyService();
  when(service.hasBitlocker).thenReturn(hasBitlocker ?? false);
  return service;
}

@GenerateMocks([SnapdClient])
SnapdClient mockSnapdClient({bool? isValidRecoveryKey}) {
  final client = MockSnapdClient();
  if (!(isValidRecoveryKey ?? true)) {
    when(client.checkRecoveryKey(any))
        .thenThrow(SnapdException(message: 'invalid recovery key'));
  }
  return client;
}

@GenerateMocks([UDisksClient, UDisksBlockDevice])
UDisksClient mockUDisksClient({bool? hasBitlocker}) {
  final client = MockUDisksClient();
  final mockDevice = MockUDisksBlockDevice();
  when(mockDevice.idType)
      .thenReturn(hasBitlocker ?? false ? 'BitLocker' : 'ext4');
  when(client.blockDevices).thenReturn([mockDevice]);
  return client;
}

@GenerateMocks([ConfigService])
MockConfigService mockConfigService({Map<String, dynamic>? config}) {
  final service = MockConfigService();
  when(service.config).thenReturn(UnmodifiableMapView(config ?? {}));
  return service;
}

FwupdDevice testDevice({
  required String id,
  String? name,
  String? summary,
  String? icon,
  List<String>? guid,
  String? vendor,
  String? version,
  String? versionLowest,
  String? checksum,
  Set<FwupdDeviceFlag>? flags,
}) {
  return FwupdDevice(
    deviceId: id,
    name: name ?? '',
    summary: summary,
    icon: icon != null ? [icon] : [],
    guid: guid ?? [],
    vendor: vendor,
    version: version,
    versionLowest: versionLowest,
    checksum: checksum,
    plugin: '',
    flags: flags ?? {FwupdDeviceFlag.updatable},
  );
}

extension WidgetTesterX on WidgetTester {
  BuildContext get context => element(find.byType(Scaffold).first);
  AppLocalizations get lang => AppLocalizations.of(context);
  ThemeData get theme => Theme.of(context);

  Future<void> pumpApp(
    WidgetBuilder builder, {
    Size size = const Size(700, 850),
    List<SingleChildWidget>? providers,
  }) {
    view.devicePixelRatio = 1;
    view.physicalSize = size;
    final app = MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      home: Builder(builder: builder),
    );
    return pumpWidget(
      providers != null ? MultiProvider(providers: providers, child: app) : app,
    );
  }
}
