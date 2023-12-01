import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gtk/gtk.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:yaru/yaru.dart';

import 'firmware_app.dart';
import 'fwupd_service.dart';

Future<void> main(List<String> args) async {
  Logger.setup(level: LogLevel.fromString(kDebugMode ? 'debug' : 'info'));

  registerService<FwupdService>(
    () => FwupdService()..init(),
    dispose: (s) => s.dispose(),
  );

  registerService<GtkApplicationNotifier>(() => GtkApplicationNotifier(args),
      dispose: (s) => s.dispose());

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
