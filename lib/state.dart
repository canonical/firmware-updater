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
    required Map<String, FwupdRemote> remotes,
  }) = _FwupdState;

  const factory FwupdState.loading({
    required FwupdState? previous,
  }) = FwupdLoadingState;

  const factory FwupdState.error({
    required Object error,
    StackTrace? stackTrace,
    required FwupdState? previous,
  }) = FwupdErrorState;

  static const none = FwupdState.data(devices: [], releases: {}, remotes: {});

  List<FwupdDevice>? getDevices() {
    return when(
      data: (devices, releases, remotes) => devices,
      loading: (previous) => previous?.getDevices(),
      error: (error, stackTrace, previous) => previous?.getDevices(),
    );
  }

  List<FwupdRelease>? getReleases(FwupdDevice device) {
    return when(
      data: (devices, releases, remotes) => releases[device.id],
      loading: (previous) => previous?.getReleases(device),
      error: (error, stackTrace, previous) => previous?.getReleases(device),
    );
  }

  bool hasUpgrade(FwupdDevice device) {
    return getReleases(device)?.firstWhereOrNull((r) => r.isUpgrade) != null;
  }
}
