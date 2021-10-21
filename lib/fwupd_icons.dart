import 'package:flutter/widgets.dart';
import 'package:yaru_icons/widgets/yaru_icons.dart';

const yaruIcons = <String, IconData>{
  'audio-card': YaruIcons.audio,
  'computer': YaruIcons.computer,
  'drive-harddisk': YaruIcons.drive_harddisk,
  'preferences-desktop-keyboard': YaruIcons.input_keyboard,
};

// TODO: https://specifications.freedesktop.org/icon-theme-spec/icon-theme-spec-latest.html
extension FwupdIcons on String {
  Widget? toDeviceIcon() {
    final icon = yaruIcons[this];
    if (icon == null) {
      print('Missing icon: $this');
      return const SizedBox(width: 24, height: 24, child: Placeholder());
    }
    return Icon(icon);
  }
}
