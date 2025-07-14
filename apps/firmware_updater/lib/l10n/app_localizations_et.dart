// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'Ilma taastevõtmeteta võid kaotada ligipääsu oma andmetele';

  @override
  String get affectsFdeWarningCheckboxBody1 =>
      'Make sure you have recovery keys for all your encrypted drives. You will need to enter them on boot after updating firmware.';

  @override
  String get affectsFdeWarningCheckboxBody2 =>
      'You need recovery keys because you have enabled hardware-backed encryption in Ubuntu or other operating systems on this computer.';

  @override
  String get affectsFdeWarningPassphraseBody1 =>
      'You may need to enter it on boot after updating firmware. Make sure you also have recovery keys for any other encrypted drives on this computer.';

  @override
  String get affectsFdeWarningPassphraseBody2 =>
      'You need to provide a recovery key because you enabled hardware-backed encryption.';

  @override
  String get affectsFdeCheckbox =>
      'Mul on taastevõtmed kõikide minu krüptitud andmekandjate jaoks';

  @override
  String get affectsFdeTextFieldLabel => 'Enter your recovery key';

  @override
  String get affectsFdeLinkLabel => 'Lisateave';

  @override
  String get affectsFdeIncorrectKey =>
      'Recovery key does not work, check or replace it in the Security Center';

  @override
  String get allVersions => 'Kõik versioonid';

  @override
  String get appTitle => 'Püsivara uuendaja';

  @override
  String get batteryWarning =>
      'Hoiatus: mõnede seadmete uuendamine on võimalik vaid võrgutoite kasutamisel!';

  @override
  String get checksum => 'Kontrollsumma';

  @override
  String get close => 'Sulge';

  @override
  String get cancel => 'Katkesta';

  @override
  String get current => 'Praegune';

  @override
  String get deviceUnavailable => 'Seade pole selle toimingu ajal saadaval.';

  @override
  String get deviceRequest => 'Seadmepäring';

  @override
  String get downgrade => 'Varasema versiooni taastamine';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Kas taastame varasema versiooni: <b>$name</b> -> <b>$version</b>?';
  }

  @override
  String get flags => 'Tegevusmärked';

  @override
  String get fwupdDeviceFlagInternal => 'Sisemine seade';

  @override
  String get fwupdDeviceFlagUpdatable => 'Uuendatav';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'Uuendamine eeldab taaskäivitust';

  @override
  String get fwupdDeviceFlagRequireAc =>
      'Süsteem eeldab välise toiteallika kasutamist';

  @override
  String get fwupdDeviceFlagLocked => 'Seade on lukustatud';

  @override
  String get fwupdDeviceFlagSupported => 'Toetatud kaugserveris';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Vajab alglaadurit';

  @override
  String get fwupdDeviceFlagRegistered => 'Registreeritud';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'Eeldab peale paigaldust taaskäivitust';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'Eeldab peale paigaldust süsteemi väljalülitamist';

  @override
  String get fwupdDeviceFlagReported => 'Teatatud kaugserverile';

  @override
  String get fwupdDeviceFlagNotified => 'Kasutaja on teavitatud';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'Paigalda esmalt kõrgema taseme seadmes';

  @override
  String get fwupdDeviceFlagIsBootloader => 'On alglaaduri režiimis';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'Raudvara on uuesti ühendamise ootel';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'Eira õigsuse- ja turvakontrolle';

  @override
  String get fwupdDeviceFlagTrusted => 'Usaldusväärne';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'Seadme uuendus vajab aktiveerimist';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'Seade pole nähtav peale paigalduse lõppu';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'Krüptograafilise räsi verifitseerimine on saadaval';

  @override
  String get fwupdDeviceFlagDualImage => 'Seade teeb uuendused sammude kaupa';

  @override
  String get fwupdDeviceFlagSelfRecovery =>
      'Seade oskab paigaldusvigadest taastuda';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'Seade on uuenduse ajal kasutatav';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'Nõutav on seadme püsivara versioonikontroll';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'Nõutav on kõikide versioonide paigaldamine seadmes';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'Seade toetab teise püsivara arendusharu kasutamist';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'Seade teeb enne paigaldamist senisest püsivarast varukoopia';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'Kõik sama tüüpi seadmed uuendatakse samaaegselt';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Lubatud on vaid versiooniuuendused';

  @override
  String get fwupdDeviceFlagUnreachable => 'Seade pole kättesaadav';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Andmekandjaülese krüptimise võtmed/salasõnad võivad uuenduse käigus katki minna';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Seadme tugi on lõppenud';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Allkirjastatud sisu';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Allkirjastamata sisu';

  @override
  String get fwupdErrorInternal => 'Sisemine viga';

  @override
  String get fwupdErrorVersionNewer => 'Uuem püsivara versioon on paigaldatud';

  @override
  String get fwupdErrorVersionSame => 'Sama püsivara versioon on paigaldatud';

  @override
  String get fwupdErrorAlreadyPending =>
      'Juba on määratud paigaldamiseks vallasrežiimis';

  @override
  String get fwupdErrorAuthFailed => 'Autentimine ei õnnestunud';

  @override
  String get fwupdErrorRead => 'Seadmest lugemine ei õnnestunud';

  @override
  String get fwupdErrorWrite => 'Seadmesse kirjutamine ei õnnestunud';

  @override
  String get fwupdErrorInvalidFile => 'Vigane failivorming';

  @override
  String get fwupdErrorNotFound => 'Sobivat seadet ei leidunud';

  @override
  String get fwupdErrorNothingToDo => 'Mitte midagi pole tega';

  @override
  String get fwupdErrorNotSupported => 'Toiming pole võimalik';

  @override
  String get fwupdErrorSignatureInvalid => 'Allkiri oli vigane';

  @override
  String get fwupdErrorAcPowerRequired => 'Väline toiteühendus on nõutav';

  @override
  String get fwupdErrorPermissionDenied => 'Loa andmisest keelduti';

  @override
  String get fwupdErrorBrokenSystem =>
      'Kasutaja on seadistanud oma arvutisüsteemi vigasel viisil';

  @override
  String get fwupdErrorBatteryLevelTooLow =>
      'Arvutisüsteemi aku laetuse tase on liiga madal';

  @override
  String get fwupdErrorNeedsUserAction =>
      'Uuenduse lõpetamiseks on vajalik kasutajapoolne toiming';

  @override
  String get fwupdErrorAuthExpired =>
      'Kuna autentimise meetodid on aegunud, siis autentimine polnud võimalik';

  @override
  String get fwupdErrorUnknown => 'Tundmatu viga';

  @override
  String get fwupdStatusUnknown => 'Tundmatu olek';

  @override
  String get fwupdStatusIdle => 'Jõude';

  @override
  String get fwupdStatusLoading => 'Laadime ressurssi';

  @override
  String get fwupdStatusDecompressing => 'Pakime püsivara lahti';

  @override
  String get fwupdStatusDeviceRestart => 'Taaskäivitan seadet';

  @override
  String get fwupdStatusDeviceWrite => 'Kirjutan seadmesse';

  @override
  String get fwupdStatusDeviceVerify =>
      'Verifitseerime (andmeid lugedes) seadet';

  @override
  String get fwupdStatusScheduling => 'Ajastan vallasrežiimis uuendust';

  @override
  String get fwupdStatusDownloading => 'Fail on allalaadimisel';

  @override
  String get fwupdStatusDeviceRead => 'Loeme seadmest andmeid';

  @override
  String get fwupdStatusDeviceErase => 'Kustutan seadmest andmeid';

  @override
  String get fwupdStatusWaitingForAuth => 'Ootan autentimist';

  @override
  String get fwupdStatusDeviceBusy => 'Seade on hõivatud';

  @override
  String get fwupdStatusShutdown => 'Seade on väljalülitamisel';

  @override
  String get guid => 'GUID-tunnused';

  @override
  String get installError => 'Püsivara paigaldamine ei õnnestunud!';

  @override
  String get noDevicesFound => 'Seadmeid ei leidunud';

  @override
  String get ok => 'Sobib';

  @override
  String get olderVersions => 'Vanemad versioonid';

  @override
  String get rebootLater => 'Taaskäivita hiljem';

  @override
  String get rebootNow => 'Taaskäivita kohe';

  @override
  String get rebootConfirmMessage =>
      'Selle uuendamise lõpetamiseks pead arvuti taaskäivitama. Palun kontrolli, et kasutaksid välist toiteallikat või aku oleks täis laetud. Andmekao vältimiseks palun salvesta pooleliolevad tööd ja/või avatud failid.';

  @override
  String get rebootConfirmTitle =>
      'Selle uuendamise lõpetamiseks pead arvuti taaskäivitama';

  @override
  String get reinstall => 'Paigalda uuesti';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Kas paigaldame uuesti <b>$name</b> versiooni <b>$current</b>?';
  }

  @override
  String get showReleases => 'Näita eri versioone';

  @override
  String get showUpdates => 'Näita uuendusi';

  @override
  String get update => 'Uuenda';

  @override
  String get updateAvailable => 'Uuendus on saadaval';

  @override
  String get updateChecksums => 'Uuenduse kontrollsummad';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Kas uuendame <b>$name</b> seadme kontrollsummasid?';
  }

  @override
  String get updateChecksumsInfo =>
      'Sellega märgime praegused kontrollsummade räsid verifitseerituks.';

  @override
  String get updateToLatest => 'Uuenda viimase versioonini';

  @override
  String updateConfirm(String name, String version) {
    return 'Kas uuendame <b>$name</b> versioonini <b>$version</b>?';
  }

  @override
  String get vendor => 'Valmistaja';

  @override
  String get verifyFirmware => 'Verifitseeri püsivara';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Kas verifitseerime $name püsivara kontrollsummasid?';
  }

  @override
  String get currentVersion => 'Praegune versioon';

  @override
  String get minVersion => 'Miinimumversioon';

  @override
  String get latestVersion => 'Viimane versioon';
}
