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

  bool get isBusy => status.index > FwupdStatus.idle.index;
  FwupdStatus get status => _service.status;
  int get percentage => _service.percentage;
  String get version => _service.daemonVersion;

  Future<void> init() {
    return _service.init().then((_) {
      _listener ??= _service.propertiesChanged.listen((properties) {
        log.debug('changed $properties');
        notifyListeners();
      });
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
