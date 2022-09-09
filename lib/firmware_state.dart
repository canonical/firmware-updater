import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwupd/fwupd.dart';

import 'fwupd_x.dart';

part 'firmware_state.freezed.dart';

@freezed
class FirmwareState with _$FirmwareState {
  const FirmwareState._();

  const factory FirmwareState.data({
    required List<FwupdDevice> devices,
    required Map<String, List<FwupdRelease>> releases,
  }) = FirmareDataState;

  const factory FirmwareState.loading({
    FirmwareState? previous,
  }) = FirmwareLoadingState;

  const factory FirmwareState.error({
    required Object error,
    StackTrace? stackTrace,
    FirmwareState? previous,
  }) = FirmwareErrorState;

  static const empty = FirmwareState.data(devices: [], releases: {});

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
