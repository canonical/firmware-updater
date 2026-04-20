// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'ਰਿਕਵਰੀ ਕੁੰਜੀਆਂ ਦੇ ਬਿਨਾਂ ਤੁਹਾਡਾ ਸਾਰਾ ਡਾਟਾ ਗੁੰਮ ਹੋ ਸਕਦਾ ਹੈ';

  @override
  String get affectsFdeWarningUbuntuFdeTitle =>
      'ਤੁਹਾਡੀਆਂ ਰਿਕਵਰੀ ਕੁੰਜੀਆਂ ਦੇ ਬਿਨਾਂ ਤੁਹਾਡਾ ਸਾਰਾ ਡਾਟਾ ਗੁੰਮ ਹੋ ਸਕਦਾ ਹੈ';

  @override
  String get affectsFdeWarningOtherFdeBody =>
      'Make sure you have recovery keys for all encrypted disks. You might need to enter them on boot after updating firmware.';

  @override
  String get affectsFdeWarningUbuntuFdeBody =>
      'Hardware-backed encryption is enabled on your computer. You may need to enter your recovery key on boot after updating firmware. Make sure you also have recovery keys for any other encrypted disks on this computer.';

  @override
  String get affectsFdeWarningBitlockerBody =>
      'BitLocker is enabled on your computer. Make sure you have recovery keys for all encrypted disks. You might need to enter them on boot after updating firmware.';

  @override
  String get affectsFdeCheckbox =>
      'I have recovery keys for all my encrypted drives';

  @override
  String get affectsFdeTextFieldLabel => 'ਆਪਣੀ ਰਿਕਵਰੀ ਕੁੰਜੀ ਦਿਓ';

  @override
  String get affectsFdeLinkLabel => 'ਹੋਰ ਜਾਣੋ';

  @override
  String get affectsFdeIncorrectKey =>
      'Recovery key does not work, check or replace it in the Security Center';

  @override
  String get allVersions => 'ਸਾਰੇ ਵਰਜ਼ਨ';

  @override
  String get appTitle => 'ਫ਼ਿਰਮਵੇਅਰ ਅੱਪਡੇਟਰ';

  @override
  String get batteryWarning =>
      'Warning: some device updates may only be available on external power!';

  @override
  String get checksum => 'ਚੈਕ-ਸਮ';

  @override
  String get close => 'ਬੰਦ ਕਰੋ';

  @override
  String get cancel => 'ਰੱਦ ਕਰੋ';

  @override
  String get current => 'ਮੌਜੂਦਾ';

  @override
  String get deviceUnavailable =>
      'The device will be unavailable during this action.';

  @override
  String get deviceRequest => 'ਡਿਵਾਈਸ ਬੇਨਤੀ';

  @override
  String get downgrade => 'ਡਾਊਨਗਰੇਡ';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Downgrade <b>$name</b> to version <b>$version</b>?';
  }

  @override
  String get flags => 'Flags';

  @override
  String get fwupdDeviceFlagInternal => 'ਅੰਦਰੂਨੀ ਡਿਵਾਈਸ';

  @override
  String get fwupdDeviceFlagUpdatable => 'ਅੱਪਡੇਟ ਹੋਣ ਯੋਗ';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'ਅੱਪਡੇਟ ਲਈ ਮੁੜ-ਚਾਲੂ ਕਰਨ ਦੀ ਲੋੜ ਹੈ';

  @override
  String get fwupdDeviceFlagRequireAc => 'ਸਿਸਟਮ ਨੂੰ ਬਾਹਰੀ ਪਾਵਰ ਸਰੋਤ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get fwupdDeviceFlagLocked => 'ਡਿਵਾਈਸ ਲਾਕ ਹੈ';

  @override
  String get fwupdDeviceFlagSupported => 'Supported on remote server';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'ਬੂਟਲੋਡਰ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get fwupdDeviceFlagRegistered => 'ਰਜਿਸਟਰ ਹੈ';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'ਇੰਸਟਾਲੇਸ਼ਨ ਦੇ ਬਾਅਦ ਮੁੜ-ਚਾਲੂ ਕਰਨ ਦੀ ਲੋੜ ਹੈ';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'ਇੰਸਟਾਲੇਸ਼ਨ ਦੇ ਬਾਅਦ ਬੰਦ ਕਰਨ ਦੀ ਲੋੜ ਹੈ';

  @override
  String get fwupdDeviceFlagReported => 'Reported to remote server';

  @override
  String get fwupdDeviceFlagNotified => 'ਵਰਤੋਂਕਾਰ ਨੂੰ ਸੂਚਿਤ ਕੀਤਾ ਗਿਆ ਹੈ';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'Install to parent device first';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Is in bootloader mode';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'Hardware is waiting to be replugged';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'Ignore validation safety checks';

  @override
  String get fwupdDeviceFlagTrusted => 'ਭਰੋਸੇਯੋਗ';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'ਡਿਵਾਈਸ ਅੱਪਡੇਟ ਨੂੰ ਐਕਟੀਵੇਸ਼ਨ ਦੀ ਲੋੜ ਹੈ';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'Device will not re-appear after update completes';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'Cryptographic hash verification is available';

  @override
  String get fwupdDeviceFlagDualImage => 'ਡਿਵਾਈਸ ਨੇ ਅੱਪਡੇਟ ਸੈੱਟ ਕੀਤੇ';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'Device can recover flash failures';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'Device is usable for the duration of the update';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'Device firmware is required to have a version check';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'Device is required to install all provided releases';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'Device supports switching to a different branch of firmware';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'Device will backup firmware before installing';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'All devices of the same type will be updated at the same time';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Only version upgrades are allowed';

  @override
  String get fwupdDeviceFlagUnreachable => 'Device is unreachable';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Full disk encryption secrets may be invalidated when updating';

  @override
  String get fwupdDeviceFlagEndOfLife => 'End of life';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Signed Payload';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Unsigned Payload';

  @override
  String get fwupdErrorInternal => 'Internal error';

  @override
  String get fwupdErrorVersionNewer => 'Installed newer firmware version';

  @override
  String get fwupdErrorVersionSame => 'Installed same firmware version';

  @override
  String get fwupdErrorAlreadyPending => 'Already set to be installed offline';

  @override
  String get fwupdErrorAuthFailed => 'Failed to get authentication';

  @override
  String get fwupdErrorRead => 'Failed to read from device';

  @override
  String get fwupdErrorWrite => 'Failed to write to the device';

  @override
  String get fwupdErrorInvalidFile => 'Invalid file format';

  @override
  String get fwupdErrorNotFound => 'No matching device exists';

  @override
  String get fwupdErrorNothingToDo => 'Nothing to do';

  @override
  String get fwupdErrorNotSupported => 'Action was not possible';

  @override
  String get fwupdErrorSignatureInvalid => 'Signature was invalid';

  @override
  String get fwupdErrorAcPowerRequired => 'AC power was required';

  @override
  String get fwupdErrorPermissionDenied => 'Permission was denied';

  @override
  String get fwupdErrorBrokenSystem =>
      'User has configured their system in a broken way';

  @override
  String get fwupdErrorBatteryLevelTooLow =>
      'The system battery level is too low';

  @override
  String get fwupdErrorNeedsUserAction =>
      'User needs to do an action to complete the update';

  @override
  String get fwupdErrorAuthExpired =>
      'Failed to get auth as credentials have expired';

  @override
  String get fwupdErrorUnknown => 'Unknown error';

  @override
  String get fwupdStatusUnknown => 'Unknown state';

  @override
  String get fwupdStatusIdle => 'Idle';

  @override
  String get fwupdStatusLoading => 'Loading a resource';

  @override
  String get fwupdStatusDecompressing => 'Decompressing firmware';

  @override
  String get fwupdStatusDeviceRestart => 'Restarting the device';

  @override
  String get fwupdStatusDeviceWrite => 'Writing to a device';

  @override
  String get fwupdStatusDeviceVerify => 'Verifying (reading) a device';

  @override
  String get fwupdStatusScheduling => 'Scheduling an offline update';

  @override
  String get fwupdStatusDownloading => 'A file is downloading';

  @override
  String get fwupdStatusDeviceRead => 'Reading from a device';

  @override
  String get fwupdStatusDeviceErase => 'Erasing a device';

  @override
  String get fwupdStatusWaitingForAuth => 'Waiting for authentication';

  @override
  String get fwupdStatusDeviceBusy => 'The device is busy';

  @override
  String get fwupdStatusShutdown => 'The daemon is shutting down';

  @override
  String get guid => 'GUIDs';

  @override
  String get installError => 'Failed to install firmware!';

  @override
  String get noDevicesFound => 'No devices found';

  @override
  String get ok => 'OK';

  @override
  String get olderVersions => 'Older Versions';

  @override
  String get rebootLater => 'Restart later';

  @override
  String get rebootNow => 'Restart now';

  @override
  String get rebootConfirmMessage =>
      'You must restart your device to complete the update. Make sure your device is plugged in or fully charged. Save your files before you restart to avoid losing data.';

  @override
  String get rebootConfirmTitle => 'Restart to complete this update';

  @override
  String get reinstall => 'Reinstall';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Reinstall <b>$name</b> version <b>$current</b>?';
  }

  @override
  String get showReleases => 'Show Releases';

  @override
  String get showUpdates => 'Show Updates';

  @override
  String get update => 'Update';

  @override
  String get updateAvailable => 'Update available';

  @override
  String get updateChecksums => 'Update Checksums';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Update device checksums of <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo =>
      'This will record the current cryptographic hashes as verified.';

  @override
  String get updateToLatest => 'Update to Latest';

  @override
  String updateConfirm(String name, String version) {
    return 'Update <b>$name</b> to version <b>$version</b>?';
  }

  @override
  String get vendor => 'Vendor';

  @override
  String get verifyFirmware => 'Verify Firmware';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Verify firmware checksums of $name?';
  }

  @override
  String get currentVersion => 'Current Version';

  @override
  String get minVersion => 'Minimum Version';

  @override
  String get latestVersion => 'Latest Version';
}
