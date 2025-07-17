import 'dart:io';

import 'package:firmware_updater/app.dart';
import 'package:firmware_updater/l10n/app_localizations.dart';
import 'package:firmware_updater/services.dart';
import 'package:firmware_updater/widgets/recovery_key_model.dart';
import 'package:flutter/material.dart';
import 'package:gtk/gtk.dart';
import 'package:path/path.dart' as p;
import 'package:provider/provider.dart';
import 'package:snapd/snapd.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:udisks/udisks.dart';
import 'package:xdg_directories/xdg_directories.dart' as xdg;
import 'package:yaru/yaru.dart';

const snapdAbstractSocketPath = '@/snapd/snapd-snap.socket';
const snapdFallbackSocketPath = '/run/snapd-snap.socket';

Future<void> main(List<String> args) async {
  final binaryName = p.basename(Platform.resolvedExecutable);
  final log = Logger.setup(
    path: p.join(
      xdg.dataHome.path,
      binaryName,
      '$binaryName.log',
    ),
  );

  registerService<ConfigService>(
    () => ConfigService(
      path: p.join(
        xdg.configHome.path,
        binaryName,
        '$binaryName.yml',
      ),
    ),
  );

  for (final element in args) {
    if (element.startsWith('--simulate=')) {
      registerService<FwupdMockService>(
        () => FwupdMockService(simulateYamlFilePath: element.split('=').last)
          ..init(),
        dispose: (s) => s.dispose(),
      );
    }
  }

  registerService<FwupdDbusService>(
    () => FwupdDbusService()..init(),
    dispose: (s) => s.dispose(),
  );

  registerService<GtkApplicationNotifier>(
    () => GtkApplicationNotifier(args),
    dispose: (s) => s.dispose(),
  );

  SnapdClient snapdClient;

  try {
    snapdClient = SnapdClient(socketPath: snapdAbstractSocketPath);
    await snapdClient.systemInfo();
  } on SocketException catch (e) {
    log.info(
      'Could not connect to $snapdAbstractSocketPath: $e. Using $snapdFallbackSocketPath instead.',
    );
    snapdClient = SnapdClient(socketPath: snapdFallbackSocketPath);
  }
  registerServiceInstance<SnapdClient>(snapdClient);

  registerService<UDisksClient>(UDisksClient.new);

  registerService<RecoveryKeyService>(
    RecoveryKeySnapdService.new,
    dispose: (s) => s.dispose(),
  );

  await getService<RecoveryKeyService>().init();

  runApp(
    YaruTheme(
      builder: (context, yaru, child) {
        final darkColorScheme = yaru.darkTheme?.colorScheme;
        final lightColorScheme = yaru.theme?.colorScheme;

        return Provider(
          create: (_) => RecoveryKeyModel(getService<RecoveryKeyService>()),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: createYaruLightTheme(
              primaryColor: YaruColors.orange,
              elevatedButtonColor: YaruColors.dark.success,
            ).copyWith(
              colorScheme: lightColorScheme?.copyWith(
                secondary: YaruColors.dark.success,
              ),
            ),
            darkTheme: createYaruDarkTheme(
              primaryColor: YaruColors.orange,
              elevatedButtonColor: YaruColors.dark.success,
            ).copyWith(
              colorScheme: darkColorScheme?.copyWith(
                secondary: YaruColors.dark.success,
              ),
            ),
            highContrastTheme: yaruHighContrastLight,
            highContrastDarkTheme: yaruHighContrastDark,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
            routes: const {'/': FirmwareApp.create},
          ),
        );
      },
    ),
  );
}
