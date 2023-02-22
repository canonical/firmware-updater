import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'device_model.dart';
import 'device_store.dart';
import 'fwupd_notifier.dart';
import 'src/widgets/release_card.dart';

class ReleasePage extends StatelessWidget {
  const ReleasePage({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<DeviceModel>();
    final device = model.device;
    final releases = model.releases ?? [];

    return YaruDetailPage(
      appBar: YaruWindowTitleBar(
        title: Text('${device.name} ${device.version}'),
        leading: Navigator.of(context).canPop() ? const YaruBackButton() : null,
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        children: releases
            .map(
              (release) => ReleaseCard(
                release: release,
                device: device,
                onInstall: () async {
                  final notifier = context.read<FwupdNotifier>();
                  final store = context.read<DeviceStore>();
                  store.showReleases = false;
                  await model.install(release);
                  await notifier.refresh();

                  // refresh [DeviceStore] to force updates of all
                  // [DeviceModel]s even if fwupd didn't send an
                  // appropriate DBus signal (possible bug in 1.7.5
                  // on Ubuntu 22.04)
                  // TODO: improve when better solution is found
                  await store.refresh();
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
