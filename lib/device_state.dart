import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwupd/fwupd.dart';

import 'fwupd_x.dart';

part 'device_state.freezed.dart';

@freezed
class DeviceState with _$DeviceState {
  const DeviceState._();

  const factory DeviceState.data({
    required FwupdDevice device,
    required List<FwupdRelease> releases,
  }) = DeviceDataState;

  const factory DeviceState.loading({
    DeviceState? previous,
  }) = DeviceLoadingState;

  const factory DeviceState.error({
    required Object error,
    StackTrace? stackTrace,
    DeviceState? previous,
  }) = DeviceErrorState;

  // static const empty = DeviceState.data(releases: []);

  List<FwupdRelease>? getReleases() {
    return when(
      data: (device, releases) => releases,
      loading: (previous) => previous?.getReleases(),
      error: (error, stackTrace, previous) => previous?.getReleases(),
    );
  }

  bool hasUpgrade() {
    return getReleases()?.firstWhereOrNull((r) => r.isUpgrade) != null;
  }
}
