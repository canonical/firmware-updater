import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'device_model.dart';
import 'fwupd_service.dart';
import 'fwupd_x.dart';
import 'widgets.dart';

class FirmwareBodyPage extends StatefulWidget {
  const FirmwareBodyPage({
    super.key,
    required this.device,
  });

  final FwupdDevice device;

  static Widget create(BuildContext context, {required FwupdDevice device}) {
    final service = getService<FwupdService>();
    final key = GlobalKey();
    return ChangeNotifierProvider(
      key: key,
      create: (_) => DeviceModel(service, device),
      child: FirmwareBodyPage(device: device),
    );
  }

  @override
  State<FirmwareBodyPage> createState() => _FirmwareBodyPageState();
}

class _FirmwareBodyPageState extends State<FirmwareBodyPage> {
  @override
  void initState() {
    super.initState();
    context.read<DeviceModel>().init();
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<DeviceModel>();
    return model.state.map(
      data: (state) => DeviceBody(
        device: widget.device,
        canVerify: widget.device.canVerify,
        onVerify: model.verify,
        releases: state.releases,
        onInstall: model.install,
        hasUpgrade: state.hasUpgrade(),
      ),
      loading: (state) => const Center(child: YaruCircularProgressIndicator()),
      error: (state) => ErrorWidget(state.error),
    );
  }
}
