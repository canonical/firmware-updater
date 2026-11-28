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
      'BitLocker kompüterinizdə aktivdir. Bütün şifrələnmiş disklər üçün bərpa açarlarının olduğuna əmin olun. Mikroproqramı yenilədikdən sonra onları önyükləmə zamanı daxil etməli ola bilərsiniz.';

  @override
  String get affectsFdeCheckbox =>
      'Bütün şifrələnmiş disklərim üçün bərpa açarlarım var';

  @override
  String get affectsFdeTextFieldLabel => 'Bərpa açarınızı daxil edin';

  @override
  String get affectsFdeLinkLabel => 'Daha çox öyrən';

  @override
  String get affectsFdeIncorrectKey =>
      'Bərpa açarı işləmir, onu Təhlükəsizlik Mərkəzində yoxlayın və ya dəyişdirin';

  @override
  String get allVersions => 'Bütün versiyalar';

  @override
  String get appTitle => 'Mikroproqram yeniləyicisi';

  @override
  String get batteryWarning =>
      'Xəbərdarlıq: bəzi cihaz yenilənmələri yalnız xarici enerji ilə əlçatan ola bilər!';

  @override
  String get checksum => 'Yoxlama cəmi';

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
      'Sistem xarici enerji mənbəyi tələb edir';

  @override
  String get fwupdDeviceFlagLocked => 'Qurğu kilidləndi';

  @override
  String get fwupdDeviceFlagSupported => 'Uzaq serverdə dəstəklənir';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Önyükləyici tələb edir';

  @override
  String get fwupdDeviceFlagRegistered => 'Qeydiyyatdan keçib';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'Quraşdırmadan sonra önyükləmə tələb edir';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'Quraşdırmadan sonra söndürülməlidir';

  @override
  String get fwupdDeviceFlagReported => 'Uzaq serverə hesabat verildi';

  @override
  String get fwupdDeviceFlagNotified => 'İstifadəçi xəbərdar edildi';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'Öncə ana qurğuya quraşdır';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Önyükləmə rejimindədir';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'Hardware is waiting to be replugged';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'Doğrulama təhlükəsizlik yoxlamalarını görməzdən gəl';

  @override
  String get fwupdDeviceFlagTrusted => 'Etibar edilən';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'Qurğu yenilənməsi aktivləşdirilməlidir';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'Yenilənmə tamamlandıqdan sonra qurğu yenidən görünməyəcək';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'Kriptoqrafik heş doğrulama əlçatandır';

  @override
  String get fwupdDeviceFlagDualImage => 'Qurğu mərhələləri yenilənmələri';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'Device can recover flash failures';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'Qurğu güncəllənmə zamanı istifadə edilə bilər';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'Versiya yoxlanışı üçün qurğu mikroproqramı tələb olunur';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'Bütün təqdim edilmiş buraxılışları quraşdırmaq üçün qurğu tələb olunur';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'Device supports switching to a different branch of firmware';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'Quraşdırmadan əvvəl qurğu mikroproqramı yedəkləyəcək';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'All devices of the same type will be updated at the same time';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Yalnız versiya yüksəltmələri əlçatandır';

  @override
  String get fwupdDeviceFlagUnreachable => 'Qurğu əlçatan deyil';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Yenilənmə zamanı tam disk şifrələmə sirləri etibarsız ola bilər';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Ömrünün sonu';

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
  String get fwupdErrorAlreadyPending =>
      'Oflayn quraşdırmaq üçün ayarlanıb artıq';

  @override
  String get fwupdErrorAuthFailed => 'Kimlik doğrulanması əldə edilə bilmədi';

  @override
  String get fwupdErrorRead => 'Qurğudan oxunma uğursuz oldu';

  @override
  String get fwupdErrorWrite => 'Qurğuya yazma uğursuz oldu';

  @override
  String get fwupdErrorInvalidFile => 'Etibarsız fayl formatı';

  @override
  String get fwupdErrorNotFound => 'Uyğun gələn qurğu mövcud deyil';

  @override
  String get fwupdErrorNothingToDo => 'Ediləcək heç nə yoxdur';

  @override
  String get fwupdErrorNotSupported => 'Əməliyyat mümkün deyildi';

  @override
  String get fwupdErrorSignatureInvalid => 'İmza etibarsız idi';

  @override
  String get fwupdErrorAcPowerRequired =>
      'Dəyişən cərəyan enerjisi tələb olunurdu';

  @override
  String get fwupdErrorPermissionDenied => 'İcazə rədd edildi';

  @override
  String get fwupdErrorBrokenSystem =>
      'User has configured their system in a broken way';

  @override
  String get fwupdErrorBatteryLevelTooLow =>
      'Sistemin batareya səviyyəsi çox aşağıdır';

  @override
  String get fwupdErrorNeedsUserAction =>
      'Yenilənməni tamamlamaq üçün istifadəçi əməliyyat icra etməlidir';

  @override
  String get fwupdErrorAuthExpired =>
      'Giriş məlumatlarının müddəti bitdiyi üçün doğrulama alınmadı';

  @override
  String get fwupdErrorUnknown => 'Naməlum xəta';

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
  String get guid => 'QUİ-lər';

  @override
  String get installError => 'Mikroproqram quraşdırıla bilmədi!';

  @override
  String get noDevicesFound => 'Heç bir qurğu tapılmadı';

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
  String get reinstall => 'Yenidən quraşdır';

  @override
  String reinstallConfirm(String name, String current) {
    return '<b>$name</b> <b>$current</b> versiyası yenidən quraşdırılsın?';
  }

  @override
  String get showReleases => 'Buraxılışları göstər';

  @override
  String get showUpdates => 'Yenilənmələri göstər';

  @override
  String get update => 'Yenilə';

  @override
  String get updateAvailable => 'Yenilənmə mövcuddur';

  @override
  String get updateChecksums => 'Yoxlama cəmini yenilə';

  @override
  String updateChecksumsConfirm(String name) {
    return '<b>$name</b> cihaz yoxlama cəmi yenilənsin?';
  }

  @override
  String get updateChecksumsInfo =>
      'Bu, hazırki kriptoqrafik heşləri doğrulanmış kimi qeydə alacaq.';

  @override
  String get updateChecksumsSuccess => 'Yoxlama cəmi yeniləndi';

  @override
  String get updateChecksumsError => 'Yoxlama cəmləri yenilənə bilmədi!';

  @override
  String get updateToLatest => 'Ən sonuncuya yüksəlt';

  @override
  String updateConfirm(String name, String version) {
    return '<b>$name</b> <b>$version</b> versiyasına yenilənsin?';
  }

  @override
  String get vendor => 'Təminatçı';

  @override
  String get verifyFirmware => 'Mikroproqramı təsdiqlə';

  @override
  String get verifyFirmwareSuccess => 'Mikroproqram təsdiqləndi';

  @override
  String get verifyFirmwareError => 'Mikroproqram təsdiqlənə bilmədi!';

  @override
  String verifyFirmwareConfirm(String name) {
    return '$name mikroproqramının yoxlama cəmləri doğrulansın?';
  }

  @override
  String get currentVersion => 'Hazırki versiya';

  @override
  String get minVersion => 'Ən aşağı versiya';

  @override
  String get latestVersion => 'Latest Version';
}
