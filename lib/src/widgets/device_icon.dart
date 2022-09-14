import 'package:flutter/widgets.dart';
import 'package:yaru_icons/yaru_icons.dart';

const yaruIcons = <String, IconData>{
  'ac-adapter': YaruIcons.power,
  'audio-card': YaruIcons.audio,
  'audio-headphones': YaruIcons.headphones,
  'audio-headset': YaruIcons.headset,
  'audio-input-microphone': YaruIcons.microphone,
  'audio-speakers': YaruIcons.audio,
  'auth-fingerprint': YaruIcons.fingerprint,
  'battery': YaruIcons.battery_level_100,
  'camera-photo': YaruIcons.camera_photo,
  'camera-video': YaruIcons.camera_video,
  'computer': YaruIcons.computer,
  'drive-harddisk': YaruIcons.drive_harddisk,
  'drive-harddisk-solidstate': YaruIcons.drive_solidstatedisk,
  'drive-harddisk-usb': YaruIcons.drive_harddisk_usb,
  'drive-multidisk': YaruIcons.drive_multidisk,
  'drive-optical': YaruIcons.drive_optical,
  'drive-removable-media': YaruIcons.drive_removable_media,
  'input-dialpad': YaruIcons.input_dialpad,
  'input-gaming': YaruIcons.input_gaming,
  'input-keyboard': YaruIcons.input_keyboard,
  'input-mouse': YaruIcons.input_mouse,
  'input-touchpad': YaruIcons.input_touchpad,
  'media-flash': YaruIcons.media_flash,
  'media-floppy': YaruIcons.media_floppy,
  'media-optical': YaruIcons.media_optical,
  'media-removable': YaruIcons.media_removable,
  'media-tape': YaruIcons.media_tape,
  'multimedia-player': YaruIcons.multimedia_player,
  'network-wired': YaruIcons.network_wired,
  'network-wireless': YaruIcons.network_wireless,
  'pda': YaruIcons.smartphone,
  'phone': YaruIcons.phone_old,
  'printer': YaruIcons.printer,
  'printer-network': YaruIcons.printer_network,
  'video-display': YaruIcons.desktop_display,
  'preferences-desktop-keyboard': YaruIcons.input_keyboard,
  'touchpad-disabled': YaruIcons.input_touchpad,
  'thunderbolt': YaruIcons.thunderbolt
};

// TODO: https://specifications.freedesktop.org/icon-theme-spec/icon-theme-spec-latest.html
class DeviceIcon {
  static IconData fromName(String? name) {
    final icon = yaruIcons[name];
    if (icon == null && name != null) {
      debugPrint('Missing icon: $name');
      return YaruIcons.question;
    }
    return icon ?? YaruIcons.computer;
  }
}
