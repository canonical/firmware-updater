import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:fwupd/fwupd.dart';

import 'option_card.dart';

class ReleaseCard extends StatelessWidget {
  const ReleaseCard({
    Key? key,
    required this.release,
    required this.selected,
    required this.onSelected,
  }) : super(key: key);

  final FwupdRelease release;
  final bool selected;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: OptionCard(
        selected: selected,
        onSelected: onSelected,
        child: Stack(
          children: [
            Html(
              data:
                  '<h3>${release.version}</h3>${release.summary}${release.description}',
              style: {'body': Style(margin: EdgeInsets.zero)},
              shrinkWrap: true,
            ),
            Positioned(
              top: 16,
              right: 0,
              child: Text(
                release.isUpgrade
                    ? l10n.upgrade
                    : release.isDowngrade
                        ? l10n.downgrade
                        : l10n.current,
                style: Theme.of(context).textTheme.caption!.copyWith(
                      fontSize: 10,
                      color: release.isUpgrade
                          ? Theme.of(context).colorScheme.primary
                          : null,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

extension _FwupdReleaseX on FwupdRelease {
  bool get isUpgrade => flags.contains(FwupdReleaseFlag.isUpgrade);
  bool get isDowngrade => flags.contains(FwupdReleaseFlag.isDowngrade);
}
