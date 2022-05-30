import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fwupd/fwupd.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:yaru/yaru.dart';

import 'page.dart';
import 'service.dart';

Future<void> main() async {
  registerService<FwupdClient>(FwupdClient.new, dispose: (c) => c.close());
  registerService<FwupdService>(FwupdService.new, dispose: (s) => s.dispose());

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
    routes: {'/': (context) => YaruTheme(child: FwupdPage.create(context))},
  ));
}
