// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'Môžete prísť o všetky údaje bez kľúčov na obnovenie';

  @override
  String get affectsFdeWarningUbuntuFdeTitle =>
      'Bez kľúča na obnovenie môžete prísť o všetky svoje údaje';

  @override
  String get affectsFdeWarningOtherFdeBody =>
      'Uistite sa, že máte kľúče na obnovenie pre všetky šifrované disky. Po aktualizácii firmvéru ich možno budete musieť zadať pri spustení.';

  @override
  String get affectsFdeWarningUbuntuFdeBody =>
      'Na vašom počítači je povolené šifrovanie podporované hardvérom. Po aktualizácii firmvéru možno budete musieť zadať kľúč na obnovenie pri spustení. Uistite sa tiež, že máte kľúče na obnovenie pre akékoľvek ďalšie šifrované disky na tomto počítači.';

  @override
  String get affectsFdeWarningBitlockerBody =>
      'Na vašom počítači je povolený systém BitLocker. Uistite sa, že máte kľúče na obnovenie pre všetky šifrované disky. Po aktualizácii firmvéru ich možno budete musieť zadať pri spustení.';

  @override
  String get affectsFdeCheckbox =>
      'Mám kľúče na obnovenie pre všetky svoje šifrované disky';

  @override
  String get affectsFdeTextFieldLabel => 'Zadajte kľúč na obnovenie';

  @override
  String get affectsFdeLinkLabel => 'Zistiť viac';

  @override
  String get affectsFdeIncorrectKey =>
      'Kľúč na obnovenie nefunguje, skontrolujte ho alebo ho nahraďte v Centre zabezpečenia';

  @override
  String get allVersions => 'Všetky verzie';

  @override
  String get appTitle => 'Aktualizácia firmvéru';

  @override
  String get batteryWarning =>
      'Upozornenie: niektoré aktualizácie zariadení môžu byť dostupné len pri pripojení k napájaniu!';

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
      'Zariadenie bude počas tejto akcie nedostupné.';

  @override
  String get deviceRequest => 'Požiadavka na zariadenie';

  @override
  String get downgrade => 'Prejsť na staršiu verziu';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Vrátiť <b>$name</b> na staršiu verziu <b>$version</b>?';
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
      'Systém vyžaduje externý zdroj napájania';

  @override
  String get fwupdDeviceFlagLocked => 'Zariadenie je zamknuté';

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
  String get fwupdDeviceFlagReported => 'Nahlásené na vzdialený server';

  @override
  String get fwupdDeviceFlagNotified => 'Používateľ bol upozornený';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'Najprv nainštalovať do nadradeného zariadenia';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Je v režime zavádzača';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'Hardvér čaká na opätovné pripojenie';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'Ignorovať bezpečnostné kontroly overenia';

  @override
  String get fwupdDeviceFlagTrusted => 'Dôveryhodné';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'Aktualizácia zariadenia vyžaduje aktiváciu';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'Zariadenie sa po dokončení aktualizácie znova nezobrazí';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'Overenie kryptografického hashu je k dispozícii';

  @override
  String get fwupdDeviceFlagDualImage => 'Zariadenie pripravuje aktualizácie';

  @override
  String get fwupdDeviceFlagSelfRecovery =>
      'Zariadenie sa dokáže zotaviť zo zlyhaní flashovania';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'Zariadenie je použiteľné počas celej doby aktualizácie';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'Firmvér zariadenia musí obsahovať kontrolu verzie';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'Zariadenie musí nainštalovať všetky poskytnuté vydania';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'Zariadenie podporuje prepínanie na inú vetvu firmvéru';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'Zariadenie zálohuje firmvér pred inštaláciou';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'Všetky zariadenia rovnakého typu sa aktualizujú súčasne';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Povolené sú len aktualizácie verzií';

  @override
  String get fwupdDeviceFlagUnreachable => 'Zariadenie je nedostupné';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Tajné údaje šifrovania celého disku sa pri aktualizácii môžu zneplatniť';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Koniec životnosti';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Podpísané užitočné zaťaženie';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Nepodpísané užitočné zaťaženie';

  @override
  String get fwupdErrorInternal => 'Vnútorná chyba';

  @override
  String get fwupdErrorVersionNewer => 'Nainštalovaná novšia verzia firmvéru';

  @override
  String get fwupdErrorVersionSame => 'Nainštalovaná rovnaká verzia firmvéru';

  @override
  String get fwupdErrorAlreadyPending =>
      'Už je nastavená na offline inštaláciu';

  @override
  String get fwupdErrorAuthFailed => 'Nepodarilo sa získať overenie';

  @override
  String get fwupdErrorRead => 'Zlyhalo čítanie zo zariadenia';

  @override
  String get fwupdErrorWrite => 'Zápis do zariadenia zlyhal';

  @override
  String get fwupdErrorInvalidFile => 'Neplatný formát súboru';

  @override
  String get fwupdErrorNotFound => 'Neexistuje žiadne zodpovedajúce zariadenie';

  @override
  String get fwupdErrorNothingToDo => 'Nie je čo robiť';

  @override
  String get fwupdErrorNotSupported => 'Akcia nebola možná';

  @override
  String get fwupdErrorSignatureInvalid => 'Podpis bol neplatný';

  @override
  String get fwupdErrorAcPowerRequired => 'Vyžadovalo sa napájanie zo siete';

  @override
  String get fwupdErrorPermissionDenied => 'Oprávnenie bolo zamietnuté';

  @override
  String get fwupdErrorBrokenSystem =>
      'Používateľ má systém nakonfigurovaný chybným spôsobom';

  @override
  String get fwupdErrorBatteryLevelTooLow =>
      'Úroveň nabitia batérie systému je príliš nízka';

  @override
  String get fwupdErrorNeedsUserAction =>
      'Používateľ musí vykonať akciu na dokončenie aktualizácie';

  @override
  String get fwupdErrorAuthExpired =>
      'Nepodarilo sa získať overenie, pretože vypršala platnosť poverení';

  @override
  String get fwupdErrorUnknown => 'Neznáma chyba';

  @override
  String get fwupdStatusUnknown => 'Neznámy stav';

  @override
  String get fwupdStatusIdle => 'Nečinný';

  @override
  String get fwupdStatusLoading => 'Načítava sa zdroj';

  @override
  String get fwupdStatusDecompressing => 'Dekompresia firmvéru';

  @override
  String get fwupdStatusDeviceRestart => 'Reštartovanie zariadenia';

  @override
  String get fwupdStatusDeviceWrite => 'Zápis do zariadenia';

  @override
  String get fwupdStatusDeviceVerify => 'Overovanie (čítanie) zariadenia';

  @override
  String get fwupdStatusScheduling => 'Plánovanie offline aktualizácie';

  @override
  String get fwupdStatusDownloading => 'Súbor sa sťahuje';

  @override
  String get fwupdStatusDeviceRead => 'Čítanie zo zariadenia';

  @override
  String get fwupdStatusDeviceErase => 'Vymazávanie zariadenia';

  @override
  String get fwupdStatusWaitingForAuth => 'Čaká sa na overenie';

  @override
  String get fwupdStatusDeviceBusy => 'Zariadenie je zaneprázdnené';

  @override
  String get fwupdStatusShutdown => 'Démon sa vypína';

  @override
  String get guid => 'Identifikátory';

  @override
  String get installError => 'Zlyhala inštalácia firmvéru!';

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
      'Na dokončenie aktualizácie musíte reštartovať zariadenie. Uistite sa, že je zariadenie pripojené k napájaniu alebo plne nabité. Pred reštartom uložte svoje súbory, aby ste predišli strate údajov.';

  @override
  String get rebootConfirmTitle =>
      'Reštartovať na dokončenie tejto aktualizácie';

  @override
  String get reinstall => 'Preinštalovať';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Preinštalovať <b>$name</b> vo verzii <b>$current</b>?';
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
  String get updateChecksums => 'Aktualizovať kontrolné súčty';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Aktualizovať kontrolné súčty zariadenia <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo =>
      'Týmto sa zaznamenajú aktuálne kryptografické odtlačky ako overené.';

  @override
  String get updateToLatest => 'Aktualizovať na najnovšiu verziu';

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
    return 'Overiť kontrolné súčty firmvéru pre $name?';
  }

  @override
  String get currentVersion => 'Aktuálna verzia';

  @override
  String get minVersion => 'Minimálna verzia';

  @override
  String get latestVersion => 'Najnovšia verzia';
}
