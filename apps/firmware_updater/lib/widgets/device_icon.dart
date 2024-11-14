import 'package:flutter/widgets.dart';
import 'package:yaru/yaru.dart';

const extraIcons = <String, IconData>{
  'ac-adapter': YaruIcons.power,
  'audio-headphones': YaruIcons.headphones,
  'audio-headset': YaruIcons.headset,
  'audio-speakers': YaruIcons.speaker,
  'auth-fingerprint': YaruIcons.fingerprint,
  'drive-harddisk-solidstate': YaruIcons.drive_solidstatedisk,
  'drive-harddisk-usb': YaruIcons.drive_harddisk_usb,
  'drive-multidisk': YaruIcons.drive_multidisk,
  'input-dialpad': YaruIcons.dialpad,
  'media-removable': YaruIcons.drive_removable_media,
  'printer-network': YaruIcons.printer_network,
  'touchpad-disabled': YaruIcons.touchpad,
  'thunderbolt': YaruIcons.thunderbolt,
};

// TODO: https://specifications.freedesktop.org/icon-theme-spec/icon-theme-spec-latest.html
class DeviceIcon {
  static IconData fromName(String? name) {
    var icon = YaruFreedesktopIcons.all[name?.replaceAll('-', '_')]?.icon;
    if (icon == null && name != null) icon = extraIcons[name];
    if (icon == null && name != null) {
      debugPrint('Missing icon: $name');
      return YaruIcons.question;
    }
    return icon ?? YaruIcons.computer;
  }
}
