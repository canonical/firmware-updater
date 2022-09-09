import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({
    super.key,
    required this.status,
    required this.daemonVersion,
  });

  final FwupdStatus status;
  final String daemonVersion;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text('Status: ${status.toString().split('.').last}'),
            const Spacer(),
            Text('fwupd $daemonVersion'),
          ],
        ),
      ),
    );
  }
}
