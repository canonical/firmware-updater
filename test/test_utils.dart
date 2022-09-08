import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';
import 'package:mockito/mockito.dart';

import 'service_test.mocks.dart';

FwupdDevice testDevice({
  required String id,
  String? name,
  String? summary,
  String? icon,
  Set<FwupdDeviceFlag>? flags,
}) {
  return FwupdDevice(
    deviceId: id,
    name: name ?? '',
    summary: summary,
    icon: icon != null ? [icon] : [],
    plugin: '',
    flags: flags ?? {FwupdDeviceFlag.updatable},
  );
}

MockFwupdService mockService({
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

extension WidgetTesterX on WidgetTester {
  static Type context = Scaffold;

  AppLocalizations get lang {
    final widget = element(find.byType(context).first);
    return AppLocalizations.of(widget);
  }

  Future<void> pumpApp(WidgetBuilder builder) {
    binding.window.devicePixelRatioTestValue = 1;
    binding.window.physicalSizeTestValue = const Size(700, 850);
    return pumpWidget(MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      home: Builder(builder: builder),
    ));
  }
}
