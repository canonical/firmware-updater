import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';
import 'package:yaru/yaru.dart';

import 'page.dart';
import 'service.dart';

Future<void> main() async {
  runApp(MultiProvider(
    providers: [
      Provider<FwupdClient>(
        create: (_) => FwupdClient(),
        dispose: (_, client) => client.close(),
      ),
      Provider<FwupdService>(
        create: (_) => FwupdService(),
        dispose: (_, service) => service.dispose(),
      ),
    ],
    child: MaterialApp(
      theme: yaruLight,
      darkTheme: yaruDark,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      routes: const {'/': FwupdPage.create},
    ),
  ));
}
