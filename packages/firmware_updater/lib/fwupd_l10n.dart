import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fwupd/fwupd.dart';

extension FwupdDeviceFlagL10n on FwupdDeviceFlag {
  String? localize(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return switch (this) {
      FwupdDeviceFlag.internal => l10n.fwupdDeviceFlagInternal,
      FwupdDeviceFlag.updatable => l10n.fwupdDeviceFlagUpdatable,
      FwupdDeviceFlag.onlyOffline => l10n.fwupdDeviceFlagOnlyOffline,
      FwupdDeviceFlag.requireAc => l10n.fwupdDeviceFlagRequireAc,
      FwupdDeviceFlag.locked => l10n.fwupdDeviceFlagLocked,
      FwupdDeviceFlag.supported => l10n.fwupdDeviceFlagSupported,
      FwupdDeviceFlag.needsBootloader => l10n.fwupdDeviceFlagNeedsBootloader,
      FwupdDeviceFlag.registered => l10n.fwupdDeviceFlagRegistered,
      FwupdDeviceFlag.needsReboot => l10n.fwupdDeviceFlagNeedsReboot,
      FwupdDeviceFlag.needsShutdown => l10n.fwupdDeviceFlagNeedsShutdown,
      FwupdDeviceFlag.reported => l10n.fwupdDeviceFlagReported,
      FwupdDeviceFlag.notified => l10n.fwupdDeviceFlagNotified,
      FwupdDeviceFlag.useRuntimeVersion => null,
      FwupdDeviceFlag.installParentFirst =>
        l10n.fwupdDeviceFlagInstallParentFirst,
      FwupdDeviceFlag.isBootloader => l10n.fwupdDeviceFlagIsBootloader,
      FwupdDeviceFlag.waitForReplug => l10n.fwupdDeviceFlagWaitForReplug,
      FwupdDeviceFlag.ignoreValidation => l10n.fwupdDeviceFlagIgnoreValidation,
      FwupdDeviceFlag.trusted => l10n.fwupdDeviceFlagTrusted,
      FwupdDeviceFlag.anotherWriteRequired => null,
      FwupdDeviceFlag.noAutoInstanceIds => null,
      FwupdDeviceFlag.needsActivation => l10n.fwupdDeviceFlagNeedsActivation,
      FwupdDeviceFlag.ensureSemver => null,
      FwupdDeviceFlag.historical => null,
      FwupdDeviceFlag.onlySupported => null,
      FwupdDeviceFlag.willDisappear => l10n.fwupdDeviceFlagWillDisappear,
      FwupdDeviceFlag.canVerify => l10n.fwupdDeviceFlagCanVerify,
      FwupdDeviceFlag.canVerifyImage => null,
      FwupdDeviceFlag.dualImage => l10n.fwupdDeviceFlagDualImage,
      FwupdDeviceFlag.selfRecovery => l10n.fwupdDeviceFlagSelfRecovery,
      FwupdDeviceFlag.usableDuringUpdate =>
        l10n.fwupdDeviceFlagUsableDuringUpdate,
      FwupdDeviceFlag.versionCheckRequired =>
        l10n.fwupdDeviceFlagVersionCheckRequired,
      FwupdDeviceFlag.installAllReleases =>
        l10n.fwupdDeviceFlagInstallAllReleases,
      FwupdDeviceFlag.mdSetName => null,
      FwupdDeviceFlag.mdSetNameCategory => null,
      FwupdDeviceFlag.mdSetVerfmt => null,
      FwupdDeviceFlag.mdSetIcon => null,
      FwupdDeviceFlag.addCounterpartGuids => null,
      FwupdDeviceFlag.noGuidMatching => null,
      FwupdDeviceFlag.updatableHidden => l10n.fwupdDeviceFlagUpdatable,
      FwupdDeviceFlag.skipsRestart => null,
      FwupdDeviceFlag.hasMultipleBranches =>
        l10n.fwupdDeviceFlagHasMultipleBranches,
      FwupdDeviceFlag.backupBeforeInstall =>
        l10n.fwupdDeviceFlagBackupBeforeInstall,
      FwupdDeviceFlag.wildcardInstall => l10n.fwupdDeviceFlagWildcardInstall,
      FwupdDeviceFlag.onlyVersionUpgrade =>
        l10n.fwupdDeviceFlagOnlyVersionUpgrade,
      FwupdDeviceFlag.unreachable => l10n.fwupdDeviceFlagUnreachable,
      FwupdDeviceFlag.affectsFde => l10n.fwupdDeviceFlagAffectsFde,
    };
  }
}

extension FwupdStatusL10n on FwupdStatus {
  String localize(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return switch (this) {
      FwupdStatus.unknown => l10n.fwupdStatusUnknown,
      FwupdStatus.idle => l10n.fwupdStatusIdle,
      FwupdStatus.loading => l10n.fwupdStatusLoading,
      FwupdStatus.decompressing => l10n.fwupdStatusDecompressing,
      FwupdStatus.deviceRestart => l10n.fwupdStatusDeviceRestart,
      FwupdStatus.deviceWrite => l10n.fwupdStatusDeviceWrite,
      FwupdStatus.deviceVerify => l10n.fwupdStatusDeviceVerify,
      FwupdStatus.scheduling => l10n.fwupdStatusScheduling,
      FwupdStatus.downloading => l10n.fwupdStatusDownloading,
      FwupdStatus.deviceRead => l10n.fwupdStatusDeviceRead,
      FwupdStatus.deviceErase => l10n.fwupdStatusDeviceErase,
      FwupdStatus.waitingForAuth => l10n.fwupdStatusWaitingForAuth,
      FwupdStatus.deviceBusy => l10n.fwupdStatusDeviceBusy,
      FwupdStatus.shutdown => l10n.fwupdStatusShutdown,
    };
  }
}

extension FwupdExceptionL10n on FwupdException {
  String localize(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return switch (runtimeType) {
      const (FwupdInternalException) => l10n.fwupdErrorInternal,
      const (FwupdVersionNewerException) => l10n.fwupdErrorVersionNewer,
      const (FwupdVersionSameException) => l10n.fwupdErrorVersionSame,
      const (FwupdAlreadyPendingException) => l10n.fwupdErrorAlreadyPending,
      const (FwupdAuthFailedException) => l10n.fwupdErrorAuthFailed,
      const (FwupdReadException) => l10n.fwupdErrorRead,
      const (FwupdWriteException) => l10n.fwupdErrorWrite,
      const (FwupdInvalidFileException) => l10n.fwupdErrorInvalidFile,
      const (FwupdNotFoundException) => l10n.fwupdErrorNotFound,
      const (FwupdNothingToDoException) => l10n.fwupdErrorNothingToDo,
      const (FwupdNotSupportedException) => l10n.fwupdErrorNotSupported,
      const (FwupdSignatureInvalidException) => l10n.fwupdErrorSignatureInvalid,
      const (FwupdAcPowerRequiredException) => l10n.fwupdErrorAcPowerRequired,
      const (FwupdPermissionDeniedException) => l10n.fwupdErrorPermissionDenied,
      const (FwupdBrokenSystemException) => l10n.fwupdErrorBrokenSystem,
      const (FwupdBatteryLevelTooLowException) =>
        l10n.fwupdErrorBatteryLevelTooLow,
      const (FwupdNeedsUserActionException) => l10n.fwupdErrorNeedsUserAction,
      //const (FwupdAuthExpiredException) => l10n.fwupdErrorAuthExpired,
      _ => l10n.fwupdErrorUnknown,
    };
  }
}
