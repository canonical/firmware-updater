// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get affectsFdeWarningTitle => 'You may lose all your data without recovery keys';

  @override
  String get affectsFdeWarningBody1 => 'Make sure you have recovery keys for all your encrypted drives. You will need to enter them on boot after updating firmware.';

  @override
  String get affectsFdeWarningBody2 => 'You need recovery keys because you have enabled hardware-backed encryption in Ubuntu or other operating systems on this computer.';

  @override
  String get affectsFdeCheckbox => 'I have recovery keys for all my encrypted drives';

  @override
  String get allVersions => 'Totes les versions';

  @override
  String get appTitle => 'Firmware Updater';

  @override
  String get batteryWarning => 'Warning: some device updates may only be available on external power!';

  @override
  String get checksum => 'Checksum';

  @override
  String get close => 'Tanca';

  @override
  String get cancel => 'Cancel·la';

  @override
  String get current => 'Current';

  @override
  String get deviceUnavailable => 'El dispositiu no estarà disponible durant aquesta acció';

  @override
  String get deviceRequest => 'Device request';

  @override
  String get downgrade => 'Downgrade';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Downgrade <b>$name</b> to version <b>$version</b>?';
  }

  @override
  String get flags => 'Flags';

  @override
  String get fwupdDeviceFlagInternal => 'Dispositiu intern';

  @override
  String get fwupdDeviceFlagUpdatable => 'Updatable';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'Update requires a reboot';

  @override
  String get fwupdDeviceFlagRequireAc => 'System requires external power source';

  @override
  String get fwupdDeviceFlagLocked => 'Device is locked';

  @override
  String get fwupdDeviceFlagSupported => 'Supported on remote server';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Requires a bootloader';

  @override
  String get fwupdDeviceFlagRegistered => 'Registrat';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'Needs a reboot after installation';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'Needs shutdown after installation';

  @override
  String get fwupdDeviceFlagReported => 'Reported to remote server';

  @override
  String get fwupdDeviceFlagNotified => 'L\'usuari ha sigut notificat';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'Install to parent device first';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Is in bootloader mode';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'El maquinari està esperant a ser reconnectat';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'Ignore validation safety checks';

  @override
  String get fwupdDeviceFlagTrusted => 'Trusted';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'L\'actualització del dispositiu necessita activació';

  @override
  String get fwupdDeviceFlagWillDisappear => 'El dispositiu no tornarà a aparèixer després que l\'actualització s\'hagi completat';

  @override
  String get fwupdDeviceFlagCanVerify => 'Cryptographic hash verification is available';

  @override
  String get fwupdDeviceFlagDualImage => 'Device stages updates';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'Device can recover flash failures';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => 'Device is usable for the duration of the update';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => 'Device firmware is required to have a version check';

  @override
  String get fwupdDeviceFlagInstallAllReleases => 'Device is required to install all provided releases';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => 'Device supports switching to a different branch of firmware';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => 'Device will backup firmware before installing';

  @override
  String get fwupdDeviceFlagWildcardInstall => 'Tots els dispositius del mateix tipus seran actualitzats a la vegada';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => 'Only version upgrades are allowed';

  @override
  String get fwupdDeviceFlagUnreachable => 'No es pot accedir al dispositiu';

  @override
  String get fwupdDeviceFlagAffectsFde => 'Les claus de xifratge complet de disc podrien invalidar-se en actualitzar';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Fi de vida útil';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Càrrega útil signada';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Càrrega útil no signada';

  @override
  String get fwupdErrorInternal => 'Error intern';

  @override
  String get fwupdErrorVersionNewer => 'Installed newer firmware version';

  @override
  String get fwupdErrorVersionSame => 'Installed same firmware version';

  @override
  String get fwupdErrorAlreadyPending => 'Already set to be installed offline';

  @override
  String get fwupdErrorAuthFailed => 'No s\'ha pogut obtenir l\'autenticació';

  @override
  String get fwupdErrorRead => 'No s\'ha pogut llegir del dispositiu';

  @override
  String get fwupdErrorWrite => 'No s\'ha pogut escriure en el dispositiu';

  @override
  String get fwupdErrorInvalidFile => 'El format de fitxer no és vàlid';

  @override
  String get fwupdErrorNotFound => 'No matching device exists';

  @override
  String get fwupdErrorNothingToDo => 'Res a fer';

  @override
  String get fwupdErrorNotSupported => 'Action was not possible';

  @override
  String get fwupdErrorSignatureInvalid => 'La signatura no era vàlida';

  @override
  String get fwupdErrorAcPowerRequired => 'AC power was required';

  @override
  String get fwupdErrorPermissionDenied => 'S\'ha denegat el permís';

  @override
  String get fwupdErrorBrokenSystem => 'User has configured their system in a broken way';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'El nivell de bateria del sistema és massa baix';

  @override
  String get fwupdErrorNeedsUserAction => 'L\'usuari ha mester de fer una acció per completar l\'actualització';

  @override
  String get fwupdErrorAuthExpired => 'Failed to get auth as credentials have expired';

  @override
  String get fwupdErrorUnknown => 'Error desconegut';

  @override
  String get fwupdStatusUnknown => 'Estat desconegut';

  @override
  String get fwupdStatusIdle => 'Inactiu';

  @override
  String get fwupdStatusLoading => 'Carregant un recurs';

  @override
  String get fwupdStatusDecompressing => 'Decompressing firmware';

  @override
  String get fwupdStatusDeviceRestart => 'Reiniciant el dispositiu';

  @override
  String get fwupdStatusDeviceWrite => 'Escrivint en un dispositiu';

  @override
  String get fwupdStatusDeviceVerify => 'Verifying (reading) a device';

  @override
  String get fwupdStatusScheduling => 'Programant una actualització fora línia';

  @override
  String get fwupdStatusDownloading => 'L\'arxiu s\'està descarregant';

  @override
  String get fwupdStatusDeviceRead => 'Llegint des d\'un dispositiu';

  @override
  String get fwupdStatusDeviceErase => 'Esborrant un dispositiu';

  @override
  String get fwupdStatusWaitingForAuth => 'Waiting for authentication';

  @override
  String get fwupdStatusDeviceBusy => 'El dispositiu està ocupat';

  @override
  String get fwupdStatusShutdown => 'The daemon is shutting down';

  @override
  String get guid => 'GUID';

  @override
  String get installError => 'Failed to install firmware!';

  @override
  String get noDevicesFound => 'No s\'ha trobat cap dispositiu';

  @override
  String get ok => 'D\'acord';

  @override
  String get olderVersions => 'Versions antigues';

  @override
  String get rebootLater => 'Reinicia més tard';

  @override
  String get rebootNow => 'Reinicia ara';

  @override
  String get rebootConfirmMessage => 'You must restart your device to complete the update. Make sure your device is plugged in or fully charged. Save your files before you restart to avoid losing data.';

  @override
  String get rebootConfirmTitle => 'Restart to complete this update';

  @override
  String get reinstall => 'Reinstal·lar';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Reinstall <b>$name</b> version <b>$current</b>?';
  }

  @override
  String get showReleases => 'Show Releases';

  @override
  String get showUpdates => 'Mostra actualitzacións';

  @override
  String get update => 'Actualitza';

  @override
  String get updateAvailable => 'Actualització disponible';

  @override
  String get updateChecksums => 'Update Checksums';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Update device checksums of <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo => 'This will record the current cryptographic hashes as verified.';

  @override
  String get updateToLatest => 'Update to Latest';

  @override
  String updateConfirm(String name, String version) {
    return 'Actualitzar <b>$name</b> a la versió </b> $version</b>?';
  }

  @override
  String get vendor => 'Fabricant';

  @override
  String get verifyFirmware => 'Verify Firmware';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Verify firmware checksums of $name?';
  }

  @override
  String get currentVersion => 'Versió actual';

  @override
  String get minVersion => 'Versió mínima';

  @override
  String get latestVersion => 'Última versió';
}
