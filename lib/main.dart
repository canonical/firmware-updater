import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:yaru/yaru.dart';

import 'page.dart';
import 'service.dart';

Future<void> main() async {
  Logger.setup(level: LogLevel.fromString(kDebugMode ? 'debug' : 'info'));

  registerService<FwupdService>(FwupdService.new, dispose: (s) => s.dispose());

  runApp(YaruTheme(
    builder: (context, yaru, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: yaru.variant?.theme ?? yaruLight,
      darkTheme: yaru.variant?.darkTheme ?? yaruDark,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      routes: const {'/': FwupdPage.create},
    ),
  ));
}
