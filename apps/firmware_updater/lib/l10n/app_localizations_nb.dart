// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class AppLocalizationsNb extends AppLocalizations {
  AppLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'You may lose all your data without recovery keys';

  @override
  String get affectsFdeWarningUbuntuFdeTitle =>
      'You may lose all your data without your recovery key';

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
  String get affectsFdeTextFieldLabel => 'Enter your recovery key';

  @override
  String get affectsFdeLinkLabel => 'Learn more';

  @override
  String get affectsFdeIncorrectKey =>
      'Recovery key does not work, check or replace it in the Security Center';

  @override
  String get allVersions => 'Alle versjoner';

  @override
  String get appTitle => 'Fastvare-oppgraderer';

  @override
  String get batteryWarning =>
      'Warning: some device updates may only be available on external power!';

  @override
  String get checksum => 'Sjekksum';

  @override
  String get close => 'Lukk';

  @override
  String get cancel => 'Avbryt';

  @override
  String get current => 'Nåværende';

  @override
  String get deviceUnavailable =>
      'The device will be unavailable during this action.';

  @override
  String get deviceRequest => 'Enhetsforespørsel';

  @override
  String get downgrade => 'Nedgrader';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Nedgrader <b>$name</b> til <b>$version</b>?';
  }

  @override
  String get flags => 'Flagg';

  @override
  String get fwupdDeviceFlagInternal => 'Internenhet';

  @override
  String get fwupdDeviceFlagUpdatable => 'Updatable';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'Update requires a reboot';

  @override
  String get fwupdDeviceFlagRequireAc =>
      'System requires external power source';

  @override
  String get fwupdDeviceFlagLocked => 'Enheten er låst';

  @override
  String get fwupdDeviceFlagSupported => 'Supported on remote server';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Krever en oppstartslaster';

  @override
  String get fwupdDeviceFlagRegistered => 'Registrert';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'Needs a reboot after installation';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'Needs shutdown after installation';

  @override
  String get fwupdDeviceFlagReported => 'Reported to remote server';

  @override
  String get fwupdDeviceFlagNotified => 'Brukeren har fått beskjed';

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
  String get fwupdDeviceFlagTrusted => 'Betrodd';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'Device update needs activation';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'Device will not re-appear after update completes';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'Cryptographic hash verification is available';

  @override
  String get fwupdDeviceFlagDualImage => 'Device stages updates';

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
  String get fwupdDeviceFlagUnreachable => 'Enheten kan ikke nås';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Full disk encryption secrets may be invalidated when updating';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Levetidsslutt';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Signed Payload';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Unsigned Payload';

  @override
  String get fwupdErrorInternal => 'Intern feil';

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
  String get fwupdErrorSignatureInvalid => 'Ugyldig signatur';

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
  String get fwupdErrorUnknown => 'Ukjent feil';

  @override
  String get fwupdStatusUnknown => 'Ukjent tilstand';

  @override
  String get fwupdStatusIdle => 'Idle';

  @override
  String get fwupdStatusLoading => 'Loading a resource';

  @override
  String get fwupdStatusDecompressing => 'Pakker ut fastvare …';

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
  String get fwupdStatusDeviceBusy => 'Enheten er opptatt';

  @override
  String get fwupdStatusShutdown => 'The daemon is shutting down';

  @override
  String get guid => 'GUID-er';

  @override
  String get installError => 'Failed to install firmware!';

  @override
  String get noDevicesFound => 'Fant ingen enheter';

  @override
  String get ok => 'OK';

  @override
  String get olderVersions => 'Eldre versjoner';

  @override
  String get rebootLater => 'Restart later';

  @override
  String get rebootNow => 'Omstart nå';

  @override
  String get rebootConfirmMessage =>
      'You must restart your device to complete the update. Make sure your device is plugged in or fully charged. Save your files before you restart to avoid losing data.';

  @override
  String get rebootConfirmTitle => 'Restart to complete this update';

  @override
  String get reinstall => 'Reinstaller';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Reinstaller <b>$name</b> versjon <b>$current</b>?';
  }

  @override
  String get showReleases => 'Vis utgivelser';

  @override
  String get showUpdates => 'Show Updates';

  @override
  String get update => 'Update';

  @override
  String get updateAvailable => 'Update available';

  @override
  String get updateChecksums => 'Oppdater sjekksummer';

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
  String get currentVersion => 'Nåværende versjon';

  @override
  String get minVersion => 'Minimumsversjon';

  @override
  String get latestVersion => 'Seneste versjon';
}
