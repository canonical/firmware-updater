// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'Bərpa açarları olmadan bütün məlumatlarınızı itirə bilərsiniz';

  @override
  String get affectsFdeWarningUbuntuFdeTitle =>
      'Bərpa açarınız olmadan bütün məlumatlarınızı itirə bilərsiniz';

  @override
  String get affectsFdeWarningOtherFdeBody =>
      'Bütün şifrələnmiş disklər üçün bərpa açarlarının olduğuna əmin olun. Mikroproqram yeniləndikdən sonra onları önyükləmə zamanı daxil etməli ola bilərsiniz.';

  @override
  String get affectsFdeWarningUbuntuFdeBody =>
      'Kompüterinizdə avadanlıq tərəfindən dəstəklənən şifrələmə aktivdir. Mikroproqram yeniləndikdən sonra bərpa açarını önyükləmə zamanı daxil etməli ola bilərsiniz. Bu kompüterdəki digər şifrələnmiş disklər üçün bərpa açarlarının da olduğuna əmin olun.';

  @override
  String get affectsFdeWarningBitlockerBody =>
      'BitLocker is enabled on your computer. Make sure you have recovery keys for all encrypted disks. You might need to enter them on boot after updating firmware.';

  @override
  String get affectsFdeCheckbox =>
      'Bütün şifrələnmiş disklərim üçün bərpa açarlarım var';

  @override
  String get affectsFdeTextFieldLabel => 'Bərpa açarınızı daxil edin';

  @override
  String get affectsFdeLinkLabel => 'Daha çox öyrən';

  @override
  String get affectsFdeIncorrectKey =>
      'Recovery key does not work, check or replace it in the Security Center';

  @override
  String get allVersions => 'Bütün versiyalar';

  @override
  String get appTitle => 'Mikroproqram yeniləyicisi';

  @override
  String get batteryWarning =>
      'Xəbərdarlıq: bəzi cihaz yenilənmələri yalnız xarici enerji ilə əlçatan ola bilər!';

  @override
  String get checksum => 'Checksum';

  @override
  String get close => 'Bağla';

  @override
  String get cancel => 'İmtina';

  @override
  String get current => 'Hazırki';

  @override
  String get deviceUnavailable =>
      'Qurğu bu əməliyyat zamanı əlçatan olmayacaq.';

  @override
  String get deviceRequest => 'Qurğu sorğusu';

  @override
  String get downgrade => 'Aşağı versiyaya keç';

  @override
  String downgradeConfirm(String name, String version) {
    return '<b>$name</b> <b>$version</b> versiyasına endirilsin?';
  }

  @override
  String get flags => 'Bayraqlar';

  @override
  String get fwupdDeviceFlagInternal => 'Daxili cihaz';

  @override
  String get fwupdDeviceFlagUpdatable => 'Yenilənəbilən';

  @override
  String get fwupdDeviceFlagOnlyOffline =>
      'Yenilənmə yenidən önyükləmə tələb edir';

  @override
  String get fwupdDeviceFlagRequireAc =>
      'System requires external power source';

  @override
  String get fwupdDeviceFlagLocked => 'Device is locked';

  @override
  String get fwupdDeviceFlagSupported => 'Uzaq serverdə dəstəklənir';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Önyükləyici tələb edir';

  @override
  String get fwupdDeviceFlagRegistered => 'Registered';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'Quraşdırmadan sonra önyükləmə tələb edir';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'Needs shutdown after installation';

  @override
  String get fwupdDeviceFlagReported => 'Reported to remote server';

  @override
  String get fwupdDeviceFlagNotified => 'User has been notified';

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
  String get fwupdDeviceFlagTrusted => 'Etibar edilən';

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
  String get fwupdErrorInternal => 'Daxili xəta';

  @override
  String get fwupdErrorVersionNewer =>
      'Mikroproqramın daha yeni versiyası quraşdırıldı';

  @override
  String get fwupdErrorVersionSame =>
      'Eyni mikroproqram versiyası quraşdırıldı';

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
  String get fwupdStatusUnknown => 'Naməlum vəziyyət';

  @override
  String get fwupdStatusIdle => 'Idle';

  @override
  String get fwupdStatusLoading => 'Resurs yüklənir';

  @override
  String get fwupdStatusDecompressing => 'Decompressing firmware';

  @override
  String get fwupdStatusDeviceRestart => 'Cihaz yenidən başladılır';

  @override
  String get fwupdStatusDeviceWrite => 'Cihaza yazılır';

  @override
  String get fwupdStatusDeviceVerify => 'Cihaz təsdiqlənir (oxunur)';

  @override
  String get fwupdStatusScheduling => 'Scheduling an offline update';

  @override
  String get fwupdStatusDownloading => 'Bir fayl endirilir';

  @override
  String get fwupdStatusDeviceRead => 'Cihazdan oxunur';

  @override
  String get fwupdStatusDeviceErase => 'Erasing a device';

  @override
  String get fwupdStatusWaitingForAuth => 'Kimlik doğrulanması üçün gözləyir';

  @override
  String get fwupdStatusDeviceBusy => 'Cihaz məşğuldur';

  @override
  String get fwupdStatusShutdown => 'The daemon is shutting down';

  @override
  String get guid => 'GUIDs';

  @override
  String get installError => 'Failed to install firmware!';

  @override
  String get noDevicesFound => 'No devices found';

  @override
  String get ok => 'Oldu';

  @override
  String get olderVersions => 'Köhnə versiyalar';

  @override
  String get rebootLater => 'Daha sonra yenidən başlat';

  @override
  String get rebootNow => 'İndi yenidən başlat';

  @override
  String get rebootConfirmMessage =>
      'Yeniləməni tamamlamaq üçün cihazınızı yenidən başlatmalısınız. Cihazınızın qoşulduğuna və ya tam şarj edildiyinə əmin olun. Məlumatları itirməmək üçün yenidən başlatmazdan əvvəl fayllarınızı yadda saxlayın.';

  @override
  String get rebootConfirmTitle =>
      'Bu yeniləməni tamamlamaq üçün yenidən başladın';

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
  String get update => 'Yenilə';

  @override
  String get updateAvailable => 'Yenilənmə mövcuddur';

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
  String get updateChecksumsSuccess => 'Checksums updated';

  @override
  String get updateChecksumsError => 'Failed to update checksums!';

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
  String get verifyFirmwareSuccess => 'Firmware verified';

  @override
  String get verifyFirmwareError => 'Failed to verify firmware!';

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
