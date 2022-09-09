import 'dart:async';

import 'package:fwupd/fwupd.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

import 'fwupd_service.dart';

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
      for (final property in properties) {
        switch (property) {
          case 'Status':
            log.debug(status);
            notifyListeners();
            break;
          case 'Percentage':
            log.debug('$percentage%');
            notifyListeners();
            break;
          default:
            log.debug('$property changed');
            break;
        }
      }
    });
  }

  @override
  Future<void> dispose() async {
    await _listener?.cancel();
    _listener = null;
    super.dispose();
  }
}
