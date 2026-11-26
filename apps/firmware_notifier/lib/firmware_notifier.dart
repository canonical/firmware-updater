import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:dbus/dbus.dart';
import 'package:desktop_notifications/desktop_notifications.dart';
import 'package:fwupd/fwupd.dart';

// Desktop file snapd generates for the `firmware-updater` snap app.
const desktopEntryName = 'firmware-updater_firmware-updater';

const _dismissalsFileName = 'dismissals.json';
const _dismissalsVersion = 1;

/// The per-user directory where dismissals are stored.
///
/// Inside the snap this is `$SNAP_USER_COMMON`, which survives refreshes and
/// reverts. Outside the snap (e.g. `just run-bg` during development) it falls
/// back to the user's XDG data directory. [environment] defaults to
/// [Platform.environment].
Directory defaultDismissalsDirectory([Map<String, String>? environment]) {
  environment ??= Platform.environment;
  final snapUserCommon = environment['SNAP_USER_COMMON'];
  if (snapUserCommon != null && snapUserCommon.isNotEmpty) {
    return Directory(snapUserCommon);
  }

  final xdgDataHome = environment['XDG_DATA_HOME'];
  final dataHome = xdgDataHome != null && xdgDataHome.isNotEmpty
      ? xdgDataHome
      : '${environment['HOME']}/.local/share';
  return Directory('$dataHome/firmware-updater');
}

/// Sends a notification for every device's Latest update and waits until all
/// of them have been closed.
///
/// [fwupdClient] is used to find the Available updates, [dbusClient] is the
/// session D-Bus used for notifications and for opening the app, and
/// [dismissalsDirectory] holds the user's dismissals.
Future<void> runNotifier(
  FwupdClient fwupdClient,
  DBusClient dbusClient,
  Directory dismissalsDirectory,
) async {
  final dismissalStore = await _DismissalStore.load(dismissalsDirectory);
  final client = NotificationsClient(bus: dbusClient);
  final updates = await getUpdates(fwupdClient);
  updates.removeWhere(
    (device, update) =>
        dismissalStore.contains(device.deviceId, update.version),
  );
  final notifications = await sendUpdateNotifications(client, updates);

  await Future.wait(
    notifications.map(
      (notification) =>
          _handleNotification(notification, dbusClient, dismissalStore),
    ),
  );
  await client.close();
}

Future<void> _handleNotification(
  Notification notification,
  DBusClient dbusClient,
  _DismissalStore dismissalStore,
) async {
  var actionTaken = false;
  final actionHandled = notification.action.then((action) async {
    actionTaken = true;
    final parsed = _NotificationAction.parse(action);
    if (parsed.kind == _ActionKind.install) {
      await _openApplication(dbusClient, [parsed.deviceId, parsed.version]);
    } else {
      await dismissalStore.add(parsed.deviceId, parsed.version);
      await notification.close();
    }
  });

  await Future.any([actionHandled, notification.closeReason]);
  if (actionTaken) {
    await actionHandled;
  }
  await notification.closeReason;
}

Future<Map<FwupdDevice, FwupdRelease>> getUpdates([
  FwupdClient? client,
]) async {
  final fwupdClient = client ?? FwupdClient();
  await fwupdClient.connect();

  final devices = await fwupdClient.getDevices().catchError(
    (_) => Future.value(<FwupdDevice>[]),
    test: (e) => e is FwupdNothingToDoException,
  );
  final updates = {
    for (final device in devices)
      device:
          (await fwupdClient
                  .getReleases(device.deviceId)
                  .catchError(
                    (_) => <FwupdRelease>[],
                    test: (e) =>
                        e is FwupdNothingToDoException ||
                        e is FwupdNotSupportedException,
                  ))
              .firstWhereOrNull(
                (r) => r.flags.contains(FwupdReleaseFlag.isUpgrade),
              ),
  }..removeWhere((_, update) => update == null);
  await fwupdClient.close();
  return Map<FwupdDevice, FwupdRelease>.from(updates);
}

Future<List<Notification>> sendUpdateNotifications(
  NotificationsClient client,
  Map<FwupdDevice, FwupdRelease> updates,
) async {
  return Future.wait(
    updates.entries.map(
      (e) => client.notify(
        'Firmware update available for ${e.key.name}',
        body:
            '${e.key.name} can be upgraded from version ${e.key.version} to ${e.value.version}.',
        appName: 'Firmware Updater',
        appIcon: 'software-update-available',
        hints: [NotificationHint.desktopEntry(desktopEntryName)],
        actions: [
          NotificationAction(
            _NotificationAction(
              _ActionKind.install,
              e.key.deviceId,
              e.value.version,
            ).key,
            'Install',
          ),
          NotificationAction(
            _NotificationAction(
              _ActionKind.dismissal,
              e.key.deviceId,
              e.value.version,
            ).key,
            "Don't Remind Me",
          ),
        ],
      ),
    ),
  );
}

class _Dismissal {
  const _Dismissal(this.deviceId, this.version);

  final String deviceId;
  final String version;
}

class _DismissalStore {
  _DismissalStore._(this._directory, this._dismissals);

  final Directory _directory;
  final List<_Dismissal> _dismissals;

  File get _file => File('${_directory.path}/$_dismissalsFileName');

  static Future<_DismissalStore> load(Directory directory) async {
    final store = _DismissalStore._(directory, []);
    final file = store._file;
    try {
      if (!await file.exists()) {
        return store;
      }

      final contents = jsonDecode(await file.readAsString());
      if (contents is! Map<String, dynamic> ||
          contents['version'] != _dismissalsVersion ||
          contents['dismissals'] is! List) {
        stderr.writeln(
          'firmware-notifier: ignoring unreadable dismissals file ${file.path}',
        );
        return store;
      }

      for (final entry in contents['dismissals'] as List) {
        if (entry is Map &&
            entry['deviceId'] is String &&
            entry['version'] is String) {
          store._dismissals.add(
            _Dismissal(
              entry['deviceId'] as String,
              entry['version'] as String,
            ),
          );
        }
      }
    } on Object catch (error, stackTrace) {
      stderr.writeln(
        'firmware-notifier: failed to read dismissals file ${file.path}: '
        '$error\n$stackTrace',
      );
    }
    return store;
  }

  bool contains(String deviceId, String version) => _dismissals.any(
    (dismissal) =>
        dismissal.deviceId == deviceId && dismissal.version == version,
  );

  Future<void> add(String deviceId, String version) async {
    if (contains(deviceId, version)) {
      return;
    }
    _dismissals.add(_Dismissal(deviceId, version));

    final file = _file;
    final temporaryFile = File('${file.path}.tmp');
    try {
      await _directory.create(recursive: true);
      await temporaryFile.writeAsString(
        const JsonEncoder.withIndent('  ').convert({
          'version': _dismissalsVersion,
          'dismissals': [
            for (final dismissal in _dismissals)
              {
                'deviceId': dismissal.deviceId,
                'version': dismissal.version,
              },
          ],
        }),
        flush: true,
      );
      await temporaryFile.rename(file.path);
    } on Object catch (error, stackTrace) {
      stderr.writeln(
        'firmware-notifier: failed to write dismissals file ${file.path}: '
        '$error\n$stackTrace',
      );
    }
  }
}

enum _ActionKind { install, dismissal }

/// A notification action, identified by its [kind] and the update it acts on.
///
/// The D-Bus action key is `<kind>/<device ID>/<version>`, with the ID and
/// version URI-encoded, so the device ID can't collide with the separators.
class _NotificationAction {
  const _NotificationAction(this.kind, this.deviceId, this.version);

  factory _NotificationAction.parse(String key) {
    final parts = key.split('/');
    final kind = parts.length == 3
        ? _ActionKind.values.asNameMap()[parts[0]]
        : null;
    if (kind == null) {
      throw FormatException('Invalid notification action key: $key');
    }
    return _NotificationAction(
      kind,
      Uri.decodeComponent(parts[1]),
      Uri.decodeComponent(parts[2]),
    );
  }

  final _ActionKind kind;
  final String deviceId;
  final String version;

  String get key =>
      '${kind.name}/${Uri.encodeComponent(deviceId)}/'
      '${Uri.encodeComponent(version)}';
}

Future<void> _openApplication(
  DBusClient dbusClient,
  List<String> arguments,
) async {
  await dbusClient.callMethod(
    path: DBusObjectPath('/com/canonical/firmware_updater'),
    interface: 'org.gtk.Application',
    destination: 'com.canonical.firmware_updater',
    name: 'CommandLine',
    values: [
      DBusObjectPath('/com/canonical/firmware_updater'),
      DBusArray(
        DBusSignature.array(DBusSignature.byte),
        [
          DBusArray.byte([0]),
          for (final arg in arguments)
            DBusArray.byte(arg.runes.followedBy([0])),
        ],
      ),
      DBusDict.stringVariant({}),
    ],
    replySignature: DBusSignature.int32,
  );
}
