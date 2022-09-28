import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwupd/fwupd.dart';

part 'firmware_state.freezed.dart';

@freezed
class FirmwareState with _$FirmwareState {
  const FirmwareState._();

  const factory FirmwareState.data({
    required List<FwupdDevice> devices,
  }) = FirmareDataState;

  const factory FirmwareState.loading({
    FirmwareState? previous,
  }) = FirmwareLoadingState;

  const factory FirmwareState.error({
    required Object error,
    StackTrace? stackTrace,
    FirmwareState? previous,
  }) = FirmwareErrorState;

  static const empty = FirmwareState.data(devices: []);

  List<FwupdDevice>? getDevices() {
    return when(
      data: (devices) => devices,
      loading: (previous) => previous?.getDevices(),
      error: (error, stackTrace, previous) => previous?.getDevices(),
    );
  }
}
