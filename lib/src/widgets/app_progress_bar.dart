import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';

import '../../fwupd_x.dart';
import 'refresh_button.dart';

class AppProgressBar extends AppBar {
  AppProgressBar({
    super.key,
    required String title,
    double? height,
    double? progress,
    required FwupdStatus status,
    required VoidCallback onRefresh,
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
          actions: <Widget>[
            RefreshButton(isBusy: status.isBusy, onPressed: onRefresh),
            const SizedBox(width: 8),
          ],
        );
}
