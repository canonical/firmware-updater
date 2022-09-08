import 'dart:async';

import 'package:fwupd/fwupd.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

import 'service.dart';

final log = Logger('daemon');

class FwupdDaemon extends SafeChangeNotifier {
  FwupdDaemon(this._service);

  final FwupdService _service;
  StreamSubscription? _listener;

  FwupdStatus get status => _service.status;
  int get percentage => _service.percentage;
  String get version => _service.daemonVersion;

  Future<void> init() async {
    _listener ??= _service.propertiesChanged.listen((properties) {
      log.debug('properties $properties changed');
      notifyListeners();
    });
  }

  @override
  Future<void> dispose() async {
    await _listener?.cancel();
    _listener = null;
    super.dispose();
  }
}
