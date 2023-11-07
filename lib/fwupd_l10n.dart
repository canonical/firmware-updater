import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fwupd/fwupd.dart';

extension FwupdDeviceFlagL10n on FwupdDeviceFlag {
  String? localize(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    switch (this) {
      case FwupdDeviceFlag.internal:
        return l10n.fwupdDeviceFlagInternal;
      case FwupdDeviceFlag.updatable:
        return l10n.fwupdDeviceFlagUpdatable;
      case FwupdDeviceFlag.onlyOffline:
        return l10n.fwupdDeviceFlagOnlyOffline;
      case FwupdDeviceFlag.requireAc:
        return l10n.fwupdDeviceFlagRequireAc;
      case FwupdDeviceFlag.locked:
        return l10n.fwupdDeviceFlagLocked;
      case FwupdDeviceFlag.supported:
        return l10n.fwupdDeviceFlagSupported;
      case FwupdDeviceFlag.needsBootloader:
        return l10n.fwupdDeviceFlagNeedsBootloader;
      case FwupdDeviceFlag.registered:
        return l10n.fwupdDeviceFlagRegistered;
      case FwupdDeviceFlag.needsReboot:
        return l10n.fwupdDeviceFlagNeedsReboot;
      case FwupdDeviceFlag.needsShutdown:
        return l10n.fwupdDeviceFlagNeedsShutdown;
      case FwupdDeviceFlag.reported:
        return l10n.fwupdDeviceFlagReported;
      case FwupdDeviceFlag.notified:
        return l10n.fwupdDeviceFlagNotified;
      case FwupdDeviceFlag.useRuntimeVersion:
        return null;
      case FwupdDeviceFlag.installParentFirst:
        return l10n.fwupdDeviceFlagInstallParentFirst;
      case FwupdDeviceFlag.isBootloader:
        return l10n.fwupdDeviceFlagIsBootloader;
      case FwupdDeviceFlag.waitForReplug:
        return l10n.fwupdDeviceFlagWaitForReplug;
      case FwupdDeviceFlag.ignoreValidation:
        return l10n.fwupdDeviceFlagIgnoreValidation;
      case FwupdDeviceFlag.trusted:
        return l10n.fwupdDeviceFlagTrusted;
      case FwupdDeviceFlag.anotherWriteRequired:
        return null;
      case FwupdDeviceFlag.noAutoInstanceIds:
        return null;
      case FwupdDeviceFlag.needsActivation:
        return l10n.fwupdDeviceFlagNeedsActivation;
      case FwupdDeviceFlag.ensureSemver:
        return null;
      case FwupdDeviceFlag.historical:
        return null;
      case FwupdDeviceFlag.onlySupported:
        return null;
      case FwupdDeviceFlag.willDisappear:
        return l10n.fwupdDeviceFlagWillDisappear;
      case FwupdDeviceFlag.canVerify:
        return l10n.fwupdDeviceFlagCanVerify;
      case FwupdDeviceFlag.canVerifyImage:
        return null;
      case FwupdDeviceFlag.dualImage:
        return l10n.fwupdDeviceFlagDualImage;
      case FwupdDeviceFlag.selfRecovery:
        return l10n.fwupdDeviceFlagSelfRecovery;
      case FwupdDeviceFlag.usableDuringUpdate:
        return l10n.fwupdDeviceFlagUsableDuringUpdate;
      case FwupdDeviceFlag.versionCheckRequired:
        return l10n.fwupdDeviceFlagVersionCheckRequired;
      case FwupdDeviceFlag.installAllReleases:
        return l10n.fwupdDeviceFlagInstallAllReleases;
      case FwupdDeviceFlag.mdSetName:
        return null;
      case FwupdDeviceFlag.mdSetNameCategory:
        return null;
      case FwupdDeviceFlag.mdSetVerfmt:
        return null;
      case FwupdDeviceFlag.mdSetIcon:
        return null;
      case FwupdDeviceFlag.addCounterpartGuids:
        return null;
      case FwupdDeviceFlag.noGuidMatching:
        return null;
      case FwupdDeviceFlag.updatableHidden:
        return l10n.fwupdDeviceFlagUpdatable;
      case FwupdDeviceFlag.skipsRestart:
        return null;
      case FwupdDeviceFlag.hasMultipleBranches:
        return l10n.fwupdDeviceFlagHasMultipleBranches;
      case FwupdDeviceFlag.backupBeforeInstall:
        return l10n.fwupdDeviceFlagBackupBeforeInstall;
      case FwupdDeviceFlag.wildcardInstall:
        return l10n.fwupdDeviceFlagWildcardInstall;
      case FwupdDeviceFlag.onlyVersionUpgrade:
        return l10n.fwupdDeviceFlagOnlyVersionUpgrade;
      case FwupdDeviceFlag.unreachable:
        return l10n.fwupdDeviceFlagUnreachable;
      case FwupdDeviceFlag.affectsFde:
        return l10n.fwupdDeviceFlagAffectsFde;
    }
  }
}

extension FwupdStatusL10n on FwupdStatus {
  String localize(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    switch (this) {
      case FwupdStatus.unknown:
        return l10n.fwupdStatusUnknown;
      case FwupdStatus.idle:
        return l10n.fwupdStatusIdle;
      case FwupdStatus.loading:
        return l10n.fwupdStatusLoading;
      case FwupdStatus.decompressing:
        return l10n.fwupdStatusDecompressing;
      case FwupdStatus.deviceRestart:
        return l10n.fwupdStatusDeviceRestart;
      case FwupdStatus.deviceWrite:
        return l10n.fwupdStatusDeviceWrite;
      case FwupdStatus.deviceVerify:
        return l10n.fwupdStatusDeviceVerify;
      case FwupdStatus.scheduling:
        return l10n.fwupdStatusScheduling;
      case FwupdStatus.downloading:
        return l10n.fwupdStatusDownloading;
      case FwupdStatus.deviceRead:
        return l10n.fwupdStatusDeviceRead;
      case FwupdStatus.deviceErase:
        return l10n.fwupdStatusDeviceErase;
      case FwupdStatus.waitingForAuth:
        return l10n.fwupdStatusWaitingForAuth;
      case FwupdStatus.deviceBusy:
        return l10n.fwupdStatusDeviceBusy;
      case FwupdStatus.shutdown:
        return l10n.fwupdStatusShutdown;
    }
  }
}

extension FwupdExceptionL10n on FwupdException {
  String localize(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    switch (runtimeType) {
      case const (FwupdInternalException):
        return l10n.fwupdErrorInternal;
      case const (FwupdVersionNewerException):
        return l10n.fwupdErrorVersionNewer;
      case const (FwupdVersionSameException):
        return l10n.fwupdErrorVersionSame;
      case const (FwupdAlreadyPendingException):
        return l10n.fwupdErrorAlreadyPending;
      case const (FwupdAuthFailedException):
        return l10n.fwupdErrorAuthFailed;
      case const (FwupdReadException):
        return l10n.fwupdErrorRead;
      case const (FwupdWriteException):
        return l10n.fwupdErrorWrite;
      case const (FwupdInvalidFileException):
        return l10n.fwupdErrorInvalidFile;
      case const (FwupdNotFoundException):
        return l10n.fwupdErrorNotFound;
      case const (FwupdNothingToDoException):
        return l10n.fwupdErrorNothingToDo;
      case const (FwupdNotSupportedException):
        return l10n.fwupdErrorNotSupported;
      case const (FwupdSignatureInvalidException):
        return l10n.fwupdErrorSignatureInvalid;
      case const (FwupdAcPowerRequiredException):
        return l10n.fwupdErrorAcPowerRequired;
      case const (FwupdPermissionDeniedException):
        return l10n.fwupdErrorPermissionDenied;
      case const (FwupdBrokenSystemException):
        return l10n.fwupdErrorBrokenSystem;
      case const (FwupdBatteryLevelTooLowException):
        return l10n.fwupdErrorBatteryLevelTooLow;
      case const (FwupdNeedsUserActionException):
        return l10n.fwupdErrorNeedsUserAction;
      // case FwupdAuthExpiredException:
      //   return l10n.fwupdErrorAuthExpired;
      default:
        return l10n.fwupdErrorUnknown;
    }
  }
}
