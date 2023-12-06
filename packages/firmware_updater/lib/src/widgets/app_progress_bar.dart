import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';

class AppProgressBar extends AppBar {
  AppProgressBar({
    super.key,
    required String title,
    super.leading,
    double? height,
    double? progress,
    required FwupdStatus status,
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
