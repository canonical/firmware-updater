import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';

class AppProgressBar extends AppBar {
  AppProgressBar({
    required String title,
    required FwupdStatus status,
    super.key,
    super.leading,
    double? height,
    double? progress,
  }) : super(
          title: Text(title),
          bottom: PreferredSize(
            preferredSize: Size(
              double.infinity,
              height ?? 6,
            ),
            child: Visibility(
              visible:
                  status != FwupdStatus.idle && status != FwupdStatus.unknown,
              child: LinearProgressIndicator(value: progress),
            ),
          ),
        );
}
