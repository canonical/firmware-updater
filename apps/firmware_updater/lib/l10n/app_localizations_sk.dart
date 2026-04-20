// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'Bez obnovovacích kľúčov môžete prísť o všetky svoje údaje';

  @override
  String get affectsFdeWarningUbuntuFdeTitle =>
      'Bez obnovovacieho kľúča môžete prísť o všetky svoje údaje';

  @override
  String get affectsFdeWarningOtherFdeBody =>
      'Uistite sa, že máte obnovovacie kľúče pre všetky šifrované disky. Možno ich budete musieť zadať pri spustení po aktualizácii firmvéru.';

  @override
  String get affectsFdeWarningUbuntuFdeBody =>
      'Na vašom počítači je zapnuté šifrovanie podporované hardvérom. Po aktualizácii firmvéru možno budete musieť zadať obnovovací kľúč pri spustení systému. Uistite sa, že máte aj obnovovacie kľúče pre všetky ostatné šifrované disky v tomto počítači.';

  @override
  String get affectsFdeWarningBitlockerBody =>
      'Šifrovanie BitLocker je na vašom počítači zapnuté. Uistite sa, že máte obnovovacie kľúče pre všetky šifrované disky. Možno ich budete musieť zadať pri spustení po aktualizácii firmvéru.';

  @override
  String get affectsFdeCheckbox =>
      'Mám obnovovacie kľúče pre všetky moje šifrované disky';

  @override
  String get affectsFdeTextFieldLabel => 'Zadajte svoj obnovovací kľúč';

  @override
  String get affectsFdeLinkLabel => 'Zistiť viac';

  @override
  String get affectsFdeIncorrectKey =>
      'Obnovovací kľúč nefunguje, skontrolujte ho alebo ho zmeňte v Centre zabezpečenia';

  @override
  String get allVersions => 'Všetky verzie';

  @override
  String get appTitle => 'Aktualizácia firmvéru';

  @override
  String get batteryWarning =>
      'Upozornenie: Niektoré aktualizácie zariadenia sú dostupné len pri externom napájaní!';

  @override
  String get checksum => 'Kontrolný súčet';

  @override
  String get close => 'Zavrieť';

  @override
  String get cancel => 'Zrušiť';

  @override
  String get current => 'Aktuálne';

  @override
  String get deviceUnavailable =>
      'Počas tejto akcie bude zariadenie nedostupné.';

  @override
  String get deviceRequest => 'Požiadavka na zariadenie';

  @override
  String get downgrade => 'Prechod na staršiu verziu';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Prejsť na staršiu verziu <b>$name</b> (verzia <b>$version</b>)?';
  }

  @override
  String get flags => 'Príznaky';

  @override
  String get fwupdDeviceFlagInternal => 'Interné zariadenie';

  @override
  String get fwupdDeviceFlagUpdatable => 'Aktualizovateľné';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'Aktualizácia vyžaduje reštart';

  @override
  String get fwupdDeviceFlagRequireAc =>
      'Systém musí byť pripojený k externému napájaniu';

  @override
  String get fwupdDeviceFlagLocked => 'Zariadenie je uzamknuté';

  @override
  String get fwupdDeviceFlagSupported => 'Podporované na vzdialenom serveri';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Vyžaduje zavádzač';

  @override
  String get fwupdDeviceFlagRegistered => 'Registrované';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'Vyžaduje reštart po inštalácii';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'Vyžaduje vypnutie po inštalácii';

  @override
  String get fwupdDeviceFlagReported => 'Hlásené vzdialenému serveru';

  @override
  String get fwupdDeviceFlagNotified => 'Používateľ bol upozornený';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'Najprv inštalovať do nadradeného zariadenia';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Je v režime zavádzača';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'Zariadenie je potrebné znova pripojiť';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'Ignorovať overovacie bezpečnostné kontroly';

  @override
  String get fwupdDeviceFlagTrusted => 'Dôveryhodné';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'Aktualizácia zariadenia vyžaduje aktiváciu';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'Po dokončení aktualizácie sa zariadenie znova nezobrazí';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'K dispozícii je overenie kryptografického hashu';

  @override
  String get fwupdDeviceFlagDualImage =>
      'Zariadenie má dvojfázovú aktualizáciu';

  @override
  String get fwupdDeviceFlagSelfRecovery =>
      'Zariadenie sa dokáže zotaviť po zlyhaní';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'Zariadenie je počas aktualizácie použiteľné';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'Firmvér zariadenia musí podporovať kontrolu verzie';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'Zariadenie musí nainštalovať všetky dostupné vydania';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'Zariadenie podporuje prepínanie medzi vetvami firmvéru';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'Zariadenie pred inštaláciou zálohuje firmvér';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'Všetky zariadenia rovnakého typu budú aktualizované súčasne';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Povolené sú iba aktualizácie verzie';

  @override
  String get fwupdDeviceFlagUnreachable => 'Zariadenie je nedostupné';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Aktualizácia môže ovplyvniť šifrovanie celého disku';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Ukončená podpora';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Podpísaný balík';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Nepodpísaný balík';

  @override
  String get fwupdErrorInternal => 'Interná chyba';

  @override
  String get fwupdErrorVersionNewer => 'Nainštalovaná novšia verzia firmvéru';

  @override
  String get fwupdErrorVersionSame => 'Nainštalovaná rovnaká verzia firmvéru';

  @override
  String get fwupdErrorAlreadyPending =>
      'Už je nastavené na inštaláciu offline';

  @override
  String get fwupdErrorAuthFailed => 'Nepodarilo sa získať overenie';

  @override
  String get fwupdErrorRead => 'Čítanie zo zariadenia zlyhalo';

  @override
  String get fwupdErrorWrite => 'Zápis do zariadenia zlyhal';

  @override
  String get fwupdErrorInvalidFile => 'Neplatný formát súboru';

  @override
  String get fwupdErrorNotFound => 'Neexistuje žiadne zodpovedajúce zariadenie';

  @override
  String get fwupdErrorNothingToDo => 'Žiadna akcia nie je potrebná';

  @override
  String get fwupdErrorNotSupported => 'Akcia nie je podporovaná';

  @override
  String get fwupdErrorSignatureInvalid => 'Podpis bol neplatný';

  @override
  String get fwupdErrorAcPowerRequired => 'Vyžadovalo sa napájanie zo siete';

  @override
  String get fwupdErrorPermissionDenied => 'Prístup bol odmietnutý';

  @override
  String get fwupdErrorBrokenSystem =>
      'Používateľ nesprávne nakonfiguroval svoj systém';

  @override
  String get fwupdErrorBatteryLevelTooLow =>
      'Úroveň batérie systému je príliš nízka';

  @override
  String get fwupdErrorNeedsUserAction =>
      'Používateľ musí vykonať akciu na dokončenie aktualizácie';

  @override
  String get fwupdErrorAuthExpired =>
      'Nepodarilo sa získať overenie – poverenia vypršali';

  @override
  String get fwupdErrorUnknown => 'Neznáma chyba';

  @override
  String get fwupdStatusUnknown => 'Neznámy stav';

  @override
  String get fwupdStatusIdle => 'Nečinné';

  @override
  String get fwupdStatusLoading => 'Načítava sa zdroj';

  @override
  String get fwupdStatusDecompressing => 'Rozbaľuje sa firmvér';

  @override
  String get fwupdStatusDeviceRestart => 'Reštartuje sa zariadenie';

  @override
  String get fwupdStatusDeviceWrite => 'Zapisuje sa do zariadenia';

  @override
  String get fwupdStatusDeviceVerify => 'Overuje sa zariadenie (čítanie)';

  @override
  String get fwupdStatusScheduling => 'Plánuje sa offline aktualizácia';

  @override
  String get fwupdStatusDownloading => 'Súbor sa sťahuje';

  @override
  String get fwupdStatusDeviceRead => 'Číta sa zo zariadenia';

  @override
  String get fwupdStatusDeviceErase => 'Vymazáva sa zariadenie';

  @override
  String get fwupdStatusWaitingForAuth => 'Čaká sa na overenie';

  @override
  String get fwupdStatusDeviceBusy => 'Zariadenie je obsadené';

  @override
  String get fwupdStatusShutdown => 'Služba sa vypína';

  @override
  String get guid => 'Identifikátory';

  @override
  String get installError => 'Nepodarilo sa nainštalovať firmvér!';

  @override
  String get noDevicesFound => 'Nenašli sa žiadne zariadenia';

  @override
  String get ok => 'OK';

  @override
  String get olderVersions => 'Staršie verzie';

  @override
  String get rebootLater => 'Reštartovať neskôr';

  @override
  String get rebootNow => 'Reštartovať teraz';

  @override
  String get rebootConfirmMessage =>
      'Na dokončenie aktualizácie musíte reštartovať zariadenie. Skontrolujte, či je vaše zariadenie zapojené alebo plne nabité. Pred reštartovaním si uložte súbory, aby ste predišli strate údajov.';

  @override
  String get rebootConfirmTitle =>
      'Reštartujte systém na dokončenie aktualizácie';

  @override
  String get reinstall => 'Preinštalovať';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Preinštalovať <b>$name</b> verziu <b>$current</b>?';
  }

  @override
  String get showReleases => 'Zobraziť vydania';

  @override
  String get showUpdates => 'Zobraziť aktualizácie';

  @override
  String get update => 'Aktualizovať';

  @override
  String get updateAvailable => 'Dostupná aktualizácia';

  @override
  String get updateChecksums => 'Aktualizovať súčty';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Aktualizovať kontrolné súčty zariadenia <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo =>
      'Aktuálne kryptografické odtlačky sa týmto označia ako overené.';

  @override
  String get updateToLatest => 'Aktualizovať na najnovšiu';

  @override
  String updateConfirm(String name, String version) {
    return 'Aktualizovať <b>$name</b> na verziu <b>$version</b>?';
  }

  @override
  String get vendor => 'Výrobca';

  @override
  String get verifyFirmware => 'Overiť firmvér';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Overiť kontrolné súčty firmvéru $name?';
  }

  @override
  String get currentVersion => 'Aktuálna verzia';

  @override
  String get minVersion => 'Minimálna verzia';

  @override
  String get latestVersion => 'Najnovšia verzia';
}
