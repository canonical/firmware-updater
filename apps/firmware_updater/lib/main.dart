import 'dart:io';

import 'package:firmware_updater/app.dart';
import 'package:firmware_updater/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gtk/gtk.dart';
import 'package:path/path.dart' as p;
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:xdg_directories/xdg_directories.dart' as xdg;
import 'package:yaru/yaru.dart';

Future<void> main(List<String> args) async {
  final binaryName = p.basename(Platform.resolvedExecutable);
  Logger.setup(
    path: p.join(
      xdg.dataHome.path,
      binaryName,
      '$binaryName.log',
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

  runApp(
    YaruTheme(
      builder: (context, yaru, child) {
        final darkColorScheme = yaru.darkTheme?.colorScheme;
        final lightColorScheme = yaru.theme?.colorScheme;

        return MaterialApp(
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
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
          routes: const {'/': FirmwareApp.create},
        );
      },
    ),
  );
}
