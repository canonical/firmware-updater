import 'package:flutter/widgets.dart';
import 'package:yaru_icons/yaru_icons.dart';

const yaruIcons = <String, IconData>{
  'audio-card': YaruIcons.audio,
  'computer': YaruIcons.computer,
  'drive-harddisk': YaruIcons.drive_harddisk,
  'input-gaming': YaruIcons.input_gaming,
  'preferences-desktop-keyboard': YaruIcons.input_keyboard,
};

// TODO: https://specifications.freedesktop.org/icon-theme-spec/icon-theme-spec-latest.html
class DeviceIcon {
  static Widget? fromName(String? name) {
    final icon = yaruIcons[name];
    if (icon == null) {
      if (name != null) print('Missing icon: $name');
      return const SizedBox(width: 24, height: 24, child: Placeholder());
    }
    return Icon(icon);
  }
}
