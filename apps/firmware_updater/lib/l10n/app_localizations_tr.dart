// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'Kurtarma anahtarlarınız olmadan tüm verilerinizi kaybedebilirsiniz';

  @override
  String get affectsFdeWarningUbuntuFdeTitle =>
      'Bir veri kurtarma anahtarın olmadan bütün verilerini kaybedebilirsin';

  @override
  String get affectsFdeWarningOtherFdeBody =>
      'Bütün şifrelenmiş disklerin için kurtarma anahtarlarına sahip olduğundan emin ol. Onları sistem güncellemelerinden sonra başlangıçta girmen gerekebilir.';

  @override
  String get affectsFdeWarningUbuntuFdeBody =>
      'Bilgisayarında donanım destekli şifreleme etkin. Yazılım güncellemelerinden sonra kurtarma anahtarını girmen gerekebilir. Bu bilgisayarda diğer şifrelenmiş diskler için de bir kurtarma anahtarına sahip olduğundan emin ol.';

  @override
  String get affectsFdeWarningBitlockerBody =>
      'Bu bilgisayarda BitLocker etkin. Şifrelenmiş tüm disklerin kurtarma anahtarlarına sahip olduğundan emin ol. Yazılım güncellemeleri sonrası başlangıçta onları girmen gerekebilir.';

  @override
  String get affectsFdeCheckbox =>
      'Tüm şifreli sürücülerim için kurtarma anahtarlarım var';

  @override
  String get affectsFdeTextFieldLabel => 'Kurtarma anahtarınızı girin';

  @override
  String get affectsFdeLinkLabel => 'Daha fazla bilgi edinin';

  @override
  String get affectsFdeIncorrectKey =>
      'Kurtarma anahtarı çalışmıyor, Güvenlik Merkezi\'nde kontrol edin veya değiştirin';

  @override
  String get allVersions => 'Tüm Sürümler';

  @override
  String get appTitle => 'Yazılım Güncelleyici';

  @override
  String get batteryWarning =>
      'Uyarı: Bazı cihaz güncellemeleri yalnızca harici güçle kullanılabilir!';

  @override
  String get checksum => 'Sağlama toplamı';

  @override
  String get close => 'Kapat';

  @override
  String get cancel => 'İptal et';

  @override
  String get current => 'Geçerli';

  @override
  String get deviceUnavailable => 'Bu işlem sırasında cihaz kullanılamayacak.';

  @override
  String get deviceRequest => 'Cihaz isteği';

  @override
  String get downgrade => 'Düşür';

  @override
  String downgradeConfirm(String name, String version) {
    return '<b>$name</b> sürümünü <b>$version</b> sürümüne düşürmek istiyor musunuz?';
  }

  @override
  String get flags => 'Bayraklar';

  @override
  String get fwupdDeviceFlagInternal => 'Dahili cihaz';

  @override
  String get fwupdDeviceFlagUpdatable => 'Güncellenebilir';

  @override
  String get fwupdDeviceFlagOnlyOffline =>
      'Güncelleme yeniden başlatmayı gerektirir';

  @override
  String get fwupdDeviceFlagRequireAc => 'Sistem harici güç kaynağı gerektirir';

  @override
  String get fwupdDeviceFlagLocked => 'Cihaz kilitli';

  @override
  String get fwupdDeviceFlagSupported => 'Uzak sunucuda desteklenir';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Bir önyükleyici gerektirir';

  @override
  String get fwupdDeviceFlagRegistered => 'Kayıtlı';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'Kurulumdan sonra yeniden başlatma gerekiyor';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'Kurulumdan sonra kapatılması gerekiyor';

  @override
  String get fwupdDeviceFlagReported => 'Uzak sunucuya bildirildi';

  @override
  String get fwupdDeviceFlagNotified => 'Kullanıcıya bildirimde bulunuldu';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'Önce ana cihaza yükleyin';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Önyükleyici modunda';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'Donanım yeniden takılmayı bekliyor';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'Doğrulama güvenlik kontrollerini göz ardı edin';

  @override
  String get fwupdDeviceFlagTrusted => 'Güvenilir';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'Cihaz güncellemesinin etkinleştirilmesi gerekiyor';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'Güncelleme tamamlandıktan sonra cihaz yeniden görünmeyecek';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'Kriptografik karma doğrulaması mevcuttur';

  @override
  String get fwupdDeviceFlagDualImage => 'Cihaz aşamaları güncellemeleri';

  @override
  String get fwupdDeviceFlagSelfRecovery =>
      'Cihaz flaş arızalarını giderebilir';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'Cihaz güncelleme süresince kullanılabilir';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'Cihaz yazılımının sürüm kontrolüne ihtiyacı vardır';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'Sağlanan tüm sürümleri yüklemek için cihaz gereklidir';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'Cihaz, farklı bir donanım yazılımına geçişi destekliyor';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'Cihaz, kurulumdan önce aygıt yazılımını yedekleyecektir';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'Aynı tipteki tüm cihazlar aynı anda güncellenecektir';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Yalnızca sürüm yükseltmelerine izin verilir';

  @override
  String get fwupdDeviceFlagUnreachable => 'Cihaza ulaşılamıyor';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Güncelleme sırasında tam disk şifreleme sırları geçersiz kılınabilir';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Desteğin sonu';

  @override
  String get fwupdDeviceFlagSignedPayload => 'İmzalanmış Yük';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'İmzalanmamış Yük';

  @override
  String get fwupdErrorInternal => 'Dahili hata';

  @override
  String get fwupdErrorVersionNewer =>
      'Daha yeni bir aygıt yazılımı sürümü yüklendi';

  @override
  String get fwupdErrorVersionSame => 'Aynı aygıt yazılımı sürümü yüklendi';

  @override
  String get fwupdErrorAlreadyPending =>
      'Zaten çevrimdışı olarak kurulacak şekilde ayarlandı';

  @override
  String get fwupdErrorAuthFailed => 'Kimlik doğrulaması alınamadı';

  @override
  String get fwupdErrorRead => 'Aygıttan okuma başarısız oldu';

  @override
  String get fwupdErrorWrite => 'Aygıta yazılamadı';

  @override
  String get fwupdErrorInvalidFile => 'Geçersiz dosya biçimi';

  @override
  String get fwupdErrorNotFound => 'Eşleşen cihaz yok';

  @override
  String get fwupdErrorNothingToDo => 'Yapacak bir şey yok';

  @override
  String get fwupdErrorNotSupported => 'Eylem mümkün olmadı';

  @override
  String get fwupdErrorSignatureInvalid => 'İmza geçersizdi';

  @override
  String get fwupdErrorAcPowerRequired => 'AC gücü gerekliydi';

  @override
  String get fwupdErrorPermissionDenied => 'İzin reddedildi';

  @override
  String get fwupdErrorBrokenSystem =>
      'Kullanıcı sistemini bozuk bir şekilde yapılandırdı';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'Sistem pil seviyesi çok düşük';

  @override
  String get fwupdErrorNeedsUserAction =>
      'Kullanıcının güncellemeyi tamamlamak için bir işlem yapması gerekiyor';

  @override
  String get fwupdErrorAuthExpired =>
      'Kimlik bilgilerinin süresi dolduğu için yetkilendirme alınamadı';

  @override
  String get fwupdErrorUnknown => 'Bilinmeyen hata';

  @override
  String get fwupdStatusUnknown => 'Bilinmeyen durum';

  @override
  String get fwupdStatusIdle => 'Boşta';

  @override
  String get fwupdStatusLoading => 'Bir kaynak yükleniyor';

  @override
  String get fwupdStatusDecompressing => 'Ürün yazılımının sıkıştırılması';

  @override
  String get fwupdStatusDeviceRestart => 'Cihazı yeniden başlatma';

  @override
  String get fwupdStatusDeviceWrite => 'Bir cihaza yazma';

  @override
  String get fwupdStatusDeviceVerify => 'Bir cihazın doğrulanması (okunması)';

  @override
  String get fwupdStatusScheduling => 'Çevrimdışı bir güncelleme planlama';

  @override
  String get fwupdStatusDownloading => 'Bir dosya indiriliyor';

  @override
  String get fwupdStatusDeviceRead => 'Bir cihazdan okuma';

  @override
  String get fwupdStatusDeviceErase => 'Bir cihazı silme';

  @override
  String get fwupdStatusWaitingForAuth => 'Kimlik doğrulama bekleniyor';

  @override
  String get fwupdStatusDeviceBusy => 'Cihaz meşgul';

  @override
  String get fwupdStatusShutdown => 'Daemon kapanıyor';

  @override
  String get guid => 'GUIDs';

  @override
  String get installError => 'Yazılım kurulumu başarısız oldu!';

  @override
  String get noDevicesFound => 'Hiçbir cihaz bulunamadı';

  @override
  String get ok => 'TAMAM';

  @override
  String get olderVersions => 'Eski Sürümler';

  @override
  String get rebootLater => 'Daha sonra yeniden başlat';

  @override
  String get rebootNow => 'Şimdi yeniden başlat';

  @override
  String get rebootConfirmMessage =>
      'Güncellemeyi tamamlamak için cihazınızı yeniden başlatmanız gerekir. Cihazınızın prize takılı veya tam şarjlı olduğundan emin olun. Veri kaybını önlemek için yeniden başlatmadan önce dosyalarınızı kaydedin.';

  @override
  String get rebootConfirmTitle =>
      'Bu güncellemeyi tamamlamak için yeniden başlatın';

  @override
  String get reinstall => 'Yeniden yükle';

  @override
  String reinstallConfirm(String name, String current) {
    return '<b>$name</b> sürümü <b>$current</b> yeniden yüklensin mi?';
  }

  @override
  String get showReleases => 'Sürümleri Göster';

  @override
  String get showUpdates => 'Güncellemeleri Göster';

  @override
  String get update => 'Güncelle';

  @override
  String get updateAvailable => 'Güncelleme mevcut';

  @override
  String get updateChecksums => 'Kontrol Toplamlarını Güncelle';

  @override
  String updateChecksumsConfirm(String name) {
    return '<b>$name</b> cihazının toplam kontrol değerleri güncellensin mi?';
  }

  @override
  String get updateChecksumsInfo =>
      'Bu, güncel kriptografik karmaların doğrulanmış olarak kaydedilmesini sağlayacaktır.';

  @override
  String get updateToLatest => 'En Sona Güncelle';

  @override
  String updateConfirm(String name, String version) {
    return '<b>$name</b> sürümü <b>$version</b> sürümüne güncellensin mi?';
  }

  @override
  String get vendor => 'Satıcı';

  @override
  String get verifyFirmware => 'Ürün Yazılımını Doğrula';

  @override
  String verifyFirmwareConfirm(String name) {
    return '$name için aygıt yazılımı kontrol toplamları doğrulansın mı?';
  }

  @override
  String get currentVersion => 'Güncel Sürüm';

  @override
  String get minVersion => 'Minimum Sürüm';

  @override
  String get latestVersion => 'Son Sürüm';
}
