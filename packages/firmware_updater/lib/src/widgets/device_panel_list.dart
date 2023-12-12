import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class DevicePanelList extends StatefulWidget {
  const DevicePanelList({
    required this.devices,
    required this.headerBuilder,
    required this.bodyBuilder,
    super.key,
  });

  final List<FwupdDevice> devices;
  final ValueWidgetBuilder<FwupdDevice> headerBuilder;
  final ValueWidgetBuilder<FwupdDevice> bodyBuilder;

  @override
  State<DevicePanelList> createState() => _DevicePanelListState();
}

class _DevicePanelListState extends State<DevicePanelList> {
  final _expansions = <int, bool>{};

  @override
  Widget build(BuildContext context) {
    return YaruExpansionPanelList(
      customExpandIconData: YaruIcons.pan_down,
      elevation: 0.8,
      expansionCallback: (index, isExpanded) {
        setState(() => _expansions[index] = !isExpanded);
      },
      children: [
        for (var i = 0; i < widget.devices.length; ++i)
          ExpansionPanel(
            canTapOnHeader: true,
            isExpanded: _expansions[i] ?? false,
            headerBuilder: (context, isExpanded) => widget.headerBuilder(
              context,
              widget.devices[i],
              null,
            ),
            body: widget.bodyBuilder(context, widget.devices[i], null),
          ),
      ],
    );
  }
}
