import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dbus/dbus.dart';

/// A notification sent to [FakeNotificationsServer].
class FakeNotification {
  FakeNotification({
    required this.id,
    required this.appName,
    required this.appIcon,
    required this.summary,
    required this.body,
    required this.actions,
    required this.hints,
  });

  final int id;
  final String appName;
  final String appIcon;
  final String summary;
  final String body;

  /// Action labels by key, in the order they were sent.
  final Map<String, String> actions;

  final Map<String, DBusValue> hints;
}

/// An in-process `org.freedesktop.Notifications` server.
class FakeNotificationsServer extends DBusObject {
  FakeNotificationsServer()
    : super(DBusObjectPath('/org/freedesktop/Notifications'));

  /// The `NotificationClosed` reason for a `CloseNotification` call.
  static const closedByCall = 3;

  final _received = StreamController<FakeNotification>.broadcast();

  /// Notifications that have not been closed.
  final notifications = <int, FakeNotification>{};

  var _nextId = 1;

  /// Whether the server closes a notification itself when one of its actions
  /// is invoked, as GNOME does. A later `CloseNotification` for that ID then
  /// fails, as some servers do for an unknown notification.
  bool closeOnActionInvoked = false;

  /// Notifications as they are sent.
  Stream<FakeNotification> get received => _received.stream;

  @override
  Future<DBusMethodResponse> handleMethodCall(
    DBusMethodCall methodCall,
  ) async {
    if (methodCall.interface != 'org.freedesktop.Notifications') {
      return DBusMethodErrorResponse.unknownInterface();
    }

    switch (methodCall.name) {
      case 'Notify':
        final [appName, _, appIcon, summary, body, actions, hints, _] =
            methodCall.values;
        final actionList = actions.asStringArray().toList();
        final notification = FakeNotification(
          id: _nextId++,
          appName: appName.asString(),
          appIcon: appIcon.asString(),
          summary: summary.asString(),
          body: body.asString(),
          actions: {
            for (var i = 0; i + 1 < actionList.length; i += 2)
              actionList[i]: actionList[i + 1],
          },
          hints: hints.asStringVariantDict(),
        );
        notifications[notification.id] = notification;
        _received.add(notification);
        return DBusMethodSuccessResponse([DBusUint32(notification.id)]);
      case 'CloseNotification':
        final id = methodCall.values[0].asUint32();
        if (!notifications.containsKey(id)) {
          return DBusMethodErrorResponse(
            'org.freedesktop.Notifications.Error.UnknownNotification',
            [DBusString('Unknown notification ID $id')],
          );
        }
        await emitNotificationClosed(id);
        return DBusMethodSuccessResponse([]);
      default:
        return DBusMethodErrorResponse.unknownMethod();
    }
  }

  Future<void> emitActionInvoked(int id, String actionKey) async {
    await emitSignal('org.freedesktop.Notifications', 'ActionInvoked', [
      DBusUint32(id),
      DBusString(actionKey),
    ]);
    if (closeOnActionInvoked && notifications.containsKey(id)) {
      await emitNotificationClosed(id);
    }
  }

  Future<void> emitNotificationClosed(
    int id, {
    int reason = closedByCall,
  }) async {
    notifications.remove(id);
    await emitSignal('org.freedesktop.Notifications', 'NotificationClosed', [
      DBusUint32(id),
      DBusUint32(reason),
    ]);
  }
}

/// An in-process `com.canonical.firmware_updater` application.
class FakeApplication extends DBusObject {
  FakeApplication() : super(DBusObjectPath('/com/canonical/firmware_updater'));

  final _received = StreamController<List<String>>.broadcast();

  /// Arguments received through `org.gtk.Application.CommandLine`.
  final commandLines = <List<String>>[];

  /// Arguments as they arrive, before the call is answered.
  Stream<List<String>> get received => _received.stream;

  /// When set, `CommandLine` does not reply until this completes.
  Future<void>? responseGate;

  @override
  Future<DBusMethodResponse> handleMethodCall(
    DBusMethodCall methodCall,
  ) async {
    if (methodCall.interface != 'org.gtk.Application' ||
        methodCall.name != 'CommandLine') {
      return DBusMethodErrorResponse.unknownMethod();
    }

    // Arguments are NUL-terminated byte strings. GTK drops the program name
    // before it delivers them to the app.
    final arguments = methodCall.values[1]
        .asArray()
        .skip(1)
        .map(
          (argument) => utf8.decode(
            argument.asByteArray().takeWhile((byte) => byte != 0).toList(),
          ),
        )
        .toList();
    commandLines.add(arguments);
    _received.add(arguments);
    await responseGate;
    return DBusMethodSuccessResponse([DBusInt32(0)]);
  }
}

/// An in-process session bus hosting a fake notification server and app.
class NotifierTestHarness {
  NotifierTestHarness._(this._server, this._services, this.bus);

  final DBusServer _server;
  final DBusClient _services;

  /// The session bus passed to `runNotifier`.
  final DBusClient bus;
  final notifications = FakeNotificationsServer();
  final application = FakeApplication();

  static Future<NotifierTestHarness> start() async {
    final server = DBusServer();
    final address = await server.listenAddress(
      DBusAddress.unix(dir: Directory.systemTemp),
    );
    final harness = NotifierTestHarness._(
      server,
      DBusClient(address),
      DBusClient(address),
    );
    await harness._services.requestName('org.freedesktop.Notifications');
    await harness._services.requestName('com.canonical.firmware_updater');
    await harness._services.registerObject(harness.notifications);
    await harness._services.registerObject(harness.application);
    return harness;
  }

  Future<void> close() async {
    await bus.close();
    await notifications._received.close();
    await application._received.close();
    await _services.close();
    await _server.close();
  }
}
