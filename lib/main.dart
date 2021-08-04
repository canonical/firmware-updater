import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';
import 'package:yaru/yaru.dart' as yaru;

import 'fwupd_page.dart';

Future<void> main() async {
  runApp(Provider(
    create: (_) => FwupdClient(),
    child: MaterialApp(
      title: 'Firmware Updater',
      theme: yaru.lightTheme,
      darkTheme: yaru.darkTheme,
      debugShowCheckedModeBanner: false,
      routes: const {'/': FwupdPage.create},
    ),
  ));
}
