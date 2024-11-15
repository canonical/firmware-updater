import 'package:fwupd/fwupd.dart';

extension FwupdDeviceX on FwupdDevice {
  String get id => deviceId;
  bool get canVerify => flags.contains(FwupdDeviceFlag.canVerify);
  bool get isUpdatable =>
      flags.contains(FwupdDeviceFlag.updatable) ||
      flags.contains(FwupdDeviceFlag.updatableHidden);
}

extension FwupdReleaseX on FwupdRelease {
  bool get isUpgrade => flags.contains(FwupdReleaseFlag.isUpgrade);
  bool get isDowngrade => flags.contains(FwupdReleaseFlag.isDowngrade);
}

extension FwupdStatusX on FwupdStatus {
  bool get isBusy => index > FwupdStatus.idle.index;
}
