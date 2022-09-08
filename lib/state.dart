import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwupd/fwupd.dart';

import 'fwupd_x.dart';

part 'state.freezed.dart';

@freezed
class FwupdState with _$FwupdState {
  const FwupdState._();

  const factory FwupdState.data({
    required List<FwupdDevice> devices,
    required Map<String, List<FwupdRelease>> releases,
  }) = _FwupdState;

  const factory FwupdState.loading({
    FwupdState? previous,
  }) = FwupdLoadingState;

  const factory FwupdState.error({
    required Object error,
    StackTrace? stackTrace,
    FwupdState? previous,
  }) = FwupdErrorState;

  static const empty = FwupdState.data(devices: [], releases: {});

  List<FwupdDevice>? getDevices() {
    return when(
      data: (devices, releases) => devices,
      loading: (previous) => previous?.getDevices(),
      error: (error, stackTrace, previous) => previous?.getDevices(),
    );
  }

  List<FwupdRelease>? getReleases(FwupdDevice device) {
    return when(
      data: (devices, releases) => releases[device.id],
      loading: (previous) => previous?.getReleases(device),
      error: (error, stackTrace, previous) => previous?.getReleases(device),
    );
  }

  bool hasUpgrade(FwupdDevice device) {
    return getReleases(device)?.firstWhereOrNull((r) => r.isUpgrade) != null;
  }
}
