// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsEu extends AppLocalizations {
  AppLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'Datu guztiak gal ditzakezu berreskuratze gakorik ez baduzu';

  @override
  String get affectsFdeWarningUbuntuFdeTitle =>
      'Datu guztiak gal ditzakezu berreskuratze gakoa ez badaukazu';

  @override
  String get affectsFdeWarningOtherFdeBody =>
      'Ziurtatu zifratutako disko guztientzako berreskuratze gakoak dituzula. Baliteke firmwarea eguneratu ondoren abiatzean hauek sartu behar izatea.';

  @override
  String get affectsFdeWarningUbuntuFdeBody =>
      'Hardware bidezko zifratzea gaituta dago ordenagailuan. Baliteke firmwarea eguneratu ondorengo abioan berreskuratze gakoa sartu behar izatea. Ziurtatu ordenagailuko beste disko zifratuentzako berreskuratze gakoak ere badituzula.';

  @override
  String get affectsFdeWarningBitlockerBody =>
      'BitLocker gaituta dago ordenagailuan. Ziurtatu zifratutako disko guztientzako berreskuratze gakoak dituzula. Baliteke firmwarea eguneratu ondoren abiatzean hauek sartu behar izatea.';

  @override
  String get affectsFdeCheckbox =>
      'Zifratutako disko guztientzako berreskuratze gakoak ditut';

  @override
  String get affectsFdeTextFieldLabel => 'Sartu berreskuratze gakoa';

  @override
  String get affectsFdeLinkLabel => 'Informazio gehiago';

  @override
  String get affectsFdeIncorrectKey =>
      'Berreskuratze gakoak ez du funtzionatzen, egiaztatu edo ordezkatu Segurtasun zentroan';

  @override
  String get allVersions => 'Bertsio guztiak';

  @override
  String get appTitle => 'Firmware eguneratzailea';

  @override
  String get batteryWarning =>
      'Abisua: baliteke gailuen eguneratze batzuk argindarrera konektatuta soilik egotea erabilgarri!';

  @override
  String get checksum => 'Egiaztapen-batura (checksum)';

  @override
  String get close => 'Itxi';

  @override
  String get cancel => 'Utzi';

  @override
  String get current => 'Unekoa';

  @override
  String get deviceUnavailable =>
      'Gailua ez da erabilgarri egongo ekintza burutu bitartean.';

  @override
  String get deviceRequest => 'Gailuaren eskaera';

  @override
  String get downgrade => 'Deseguneratu';

  @override
  String downgradeConfirm(String name, String version) {
    return '<b>$name</b> <b>$version</b> bertsiora deseguneratu?';
  }

  @override
  String get flags => 'Adierazleak';

  @override
  String get fwupdDeviceFlagInternal => 'Barneko gailua';

  @override
  String get fwupdDeviceFlagUpdatable => 'Eguneragarria';

  @override
  String get fwupdDeviceFlagOnlyOffline =>
      'Eguneratzeko berrabiarazi beharra dago';

  @override
  String get fwupdDeviceFlagRequireAc =>
      'Sistema argindarrera konektatuta egon behar da';

  @override
  String get fwupdDeviceFlagLocked => 'Gailua blokeatuta dago';

  @override
  String get fwupdDeviceFlagSupported => 'Urruneko zerbitzarian onartua';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Abio-kargatzaile bat behar du';

  @override
  String get fwupdDeviceFlagRegistered => 'Erregistratua';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'Instalatu ondoren berrabiarazi beharra dago';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'Instalatu ondoren itzali beharra dago';

  @override
  String get fwupdDeviceFlagReported => 'Urruneko zerbitzariari jakinarazia';

  @override
  String get fwupdDeviceFlagNotified => 'Erabiltzaileari jakinarazi zaio';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'Aurrena instalatu guraso gailuan';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Abio-kargatzaile moduan dago';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'Hardwarea berriro konektatu zain dago';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'Ez ikusi egin segurtasun egiaztapenen balioztatzeari';

  @override
  String get fwupdDeviceFlagTrusted => 'Fidagarria';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'Gailuaren eguneratzeak aktibazioa behar du';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'Gailua ez da berragertuko eguneratzea osatzen denean';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'Hash kriptografikoaren egiaztapena erabilgarri dago';

  @override
  String get fwupdDeviceFlagDualImage =>
      'Gailuak eguneratzeak faseka burutzen ditu';

  @override
  String get fwupdDeviceFlagSelfRecovery =>
      'Gailua instalazio-akatsetatik berreskura daiteke';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'Gailua erabil daiteke eguneratzea osatu bitartean';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'Gailuaren firmwarearen bertsioa egiaztatu beharra dago';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'Gailuak hornitutako bertsio guztiak instalatu behar ditu';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'Gailuak firmwarearen beste adar batera aldatzea baimentzen du';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'Gailuak firmwarearen babes-kopia egingo du instalatu aurretik';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'Mota bereko gailu guztiak aldi berean eguneratuko dira';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Bertsio-berritzeak soilik daude baimenduta';

  @override
  String get fwupdDeviceFlagUnreachable => 'Gailua ez dago eskuragarri';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Baliteke eguneratzean diskoaren zifratze osorako gakoak baliogabetzea';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Balio-bizitzaren amaiera';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Karga erabilgarri sinatua';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Karga erabilgarri sinatu gabea';

  @override
  String get fwupdErrorInternal => 'Barne-errorea';

  @override
  String get fwupdErrorVersionNewer =>
      'Firmwarearen bertsio berriagoa dago instalatuta';

  @override
  String get fwupdErrorVersionSame => 'Instalatutako firmwarearen bertsioa';

  @override
  String get fwupdErrorAlreadyPending =>
      'Dagoeneko lineaz kanpo instalatzeko konfiguratuta';

  @override
  String get fwupdErrorAuthFailed => 'Huts egin du autentifikazioa lortzean';

  @override
  String get fwupdErrorRead => 'Huts egin du gailutik irakurtzean';

  @override
  String get fwupdErrorWrite => 'Huts egin du gailuan idaztean';

  @override
  String get fwupdErrorInvalidFile => 'Fitxategi formatu baliogabea';

  @override
  String get fwupdErrorNotFound => 'Ez da bat datorren gailurik existitzen';

  @override
  String get fwupdErrorNothingToDo => 'Ez dago egitekorik';

  @override
  String get fwupdErrorNotSupported => 'Ekintza ez zen egingarria';

  @override
  String get fwupdErrorSignatureInvalid => 'Sinadura baliogabea zen';

  @override
  String get fwupdErrorAcPowerRequired => 'AC elikadura beharrezkoa zen';

  @override
  String get fwupdErrorPermissionDenied => 'Baimena ukatu da';

  @override
  String get fwupdErrorBrokenSystem =>
      'Erabiltzaileak sistema modu okerrean konfiguratu du';

  @override
  String get fwupdErrorBatteryLevelTooLow =>
      'Sistemaren bateria-maila baxuegia da';

  @override
  String get fwupdErrorNeedsUserAction =>
      'Erabiltzaileak ekintza bat burutu behar du eguneratzea osatzeko';

  @override
  String get fwupdErrorAuthExpired =>
      'Ezin izan da autentikatu, kredentzialak iraungi direlako';

  @override
  String get fwupdErrorUnknown => 'Errore ezezaguna';

  @override
  String get fwupdStatusUnknown => 'Egoera ezezaguna';

  @override
  String get fwupdStatusIdle => 'Ez-aktibo';

  @override
  String get fwupdStatusLoading => 'Baliabide bat kargatzen';

  @override
  String get fwupdStatusDecompressing => 'Firmwarea deskonprimatzen';

  @override
  String get fwupdStatusDeviceRestart => 'Gailua berrabiarazten';

  @override
  String get fwupdStatusDeviceWrite => 'Gailu batera idazten';

  @override
  String get fwupdStatusDeviceVerify => 'Gailu bat egiaztatzen (irakurtzen)';

  @override
  String get fwupdStatusScheduling =>
      'Lineaz kanpoko eguneratze bat programatzen';

  @override
  String get fwupdStatusDownloading => 'Fitxategi bat deskargatzen';

  @override
  String get fwupdStatusDeviceRead => 'Gailu batetik irakurtzen';

  @override
  String get fwupdStatusDeviceErase => 'Gailu bat ezabatzen';

  @override
  String get fwupdStatusWaitingForAuth => 'Autentikazioaren zain';

  @override
  String get fwupdStatusDeviceBusy => 'Gailua lanpetuta dago';

  @override
  String get fwupdStatusShutdown => 'Daemona itzaltzen ari da';

  @override
  String get guid => 'GUIDak';

  @override
  String get installError => 'Huts egin du firmwarea instalatzeak!';

  @override
  String get noDevicesFound => 'Ez da gailurik aurkitu';

  @override
  String get ok => 'Ados';

  @override
  String get olderVersions => 'Bertsio zaharragoak';

  @override
  String get rebootLater => 'Berrabiarazi geroago';

  @override
  String get rebootNow => 'Berrabiarazi orain';

  @override
  String get rebootConfirmMessage =>
      'Eguneratzea osatzeko gailua berrabiarazi behar duzu. Ziurtatu gailua argindarrera konektatuta edo guztiz kargatuta dagoela. Berrabiarazi aurretik, gorde fitxategiak datuen galera ekiditeko.';

  @override
  String get rebootConfirmTitle => 'Berrabiarazi eguneratzea osatzeko';

  @override
  String get reinstall => 'Berrinstalatu';

  @override
  String reinstallConfirm(String name, String current) {
    return '<b>$name</b> <b>$current</b> bertsioa berrinstalatu?';
  }

  @override
  String get showReleases => 'Erakutsi argitaratzeak';

  @override
  String get showUpdates => 'Erakutsi eguneratzeak';

  @override
  String get update => 'Eguneratu';

  @override
  String get updateAvailable => 'Eguneratzea eskuragarri';

  @override
  String get updateChecksums => 'Eguneratu egiaztapen-baturak';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Eguneratu <b>$name</b> gailuaren egiaztapen-baturak?';
  }

  @override
  String get updateChecksumsInfo =>
      'Honek uneko hash kriptografikoak egiaztatu gisa grabatuko ditu.';

  @override
  String get updateToLatest => 'Eguneratu azkenekora';

  @override
  String updateConfirm(String name, String version) {
    return '<b>$name</b> <b>$version</b> bertsiora eguneratu?';
  }

  @override
  String get vendor => 'Hornitzailea';

  @override
  String get verifyFirmware => 'Egiaztatu firmwarea';

  @override
  String verifyFirmwareConfirm(String name) {
    return '$name(r)en firmware egiaztapen-baturak egiaztatu?';
  }

  @override
  String get currentVersion => 'Uneko bertsioa';

  @override
  String get minVersion => 'Gutxieneko bertsioa';

  @override
  String get latestVersion => 'Azken bertsioa';
}
