// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get affectsFdeWarningTitle => 'Bez kľúčov na obnovenie môžete prísť o všetky svoje údaje';

  @override
  String get affectsFdeWarningBody1 => 'Skontrolujte, či máte kľúče na obnovenie pre všetky šifrované disky. Po aktualizácii firmvéru ich budete musieť zadať pri štarte.';

  @override
  String get affectsFdeWarningBody2 => 'Kľúče na obnovenie sú nevyhnutné, pretože ste povolili hardvérové šifrovanie v systéme Ubuntu alebo v iných operačných systémoch na tomto počítači.';

  @override
  String get affectsFdeTextFieldLabel => 'Enter your recovery key';

  @override
  String get affectsFdeLinkLabel => 'Zistiť viac';

  @override
  String get affectsFdeIncorrectKey => 'Recovery key does not work, check or replace it in the Security Center';

  @override
  String get allVersions => 'Všetky verzie';

  @override
  String get appTitle => 'Aktualizácia firmvéru';

  @override
  String get batteryWarning => 'Upozornenie: Niektoré aktualizácie zariadenia môžu byť dostupné iba na externé napájanie!';

  @override
  String get checksum => 'Kontrolný súčet';

  @override
  String get close => 'Zavrieť';

  @override
  String get cancel => 'Zrušiť';

  @override
  String get current => 'Aktuálne';

  @override
  String get deviceUnavailable => 'Počas tejto akcie bude zariadenie nedostupné.';

  @override
  String get deviceRequest => 'Požiadavka zariadenia';

  @override
  String get downgrade => 'Prechod na staršiu verziu';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Prejsť na staršiu verziu <b>$name</b> (verzia <b>$version</b>)?';
  }

  @override
  String get flags => 'Charakteristiky';

  @override
  String get fwupdDeviceFlagInternal => 'Interné zariadenie';

  @override
  String get fwupdDeviceFlagUpdatable => 'Aktualizovateľné';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'Aktualizácia vyžaduje reštart';

  @override
  String get fwupdDeviceFlagRequireAc => 'Systém vyžaduje externý zdroj napájania';

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
  String get fwupdDeviceFlagInstallParentFirst => 'Najprv inštalovať do nadradeného zariadenia';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Je v režime zavádzača';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'Hardvér čaká na opätovné pripojenie';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'Ignorovať overovacie bezpečnostné kontroly';

  @override
  String get fwupdDeviceFlagTrusted => 'Dôveryhodné';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'Aktualizácia zariadenia vyžaduje aktiváciu';

  @override
  String get fwupdDeviceFlagWillDisappear => 'Po dokončení aktualizácie sa zariadenie znova nezobrazí';

  @override
  String get fwupdDeviceFlagCanVerify => 'K dispozícii je overenie kryptografického hashu';

  @override
  String get fwupdDeviceFlagDualImage => 'Aktualizácie v zariadení';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'Zariadenie môže obnoviť zlyhania pamäte';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => 'Zariadenie je použiteľné počas trvania aktualizácie';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => 'Na kontrolu verzie je potrebný firmvér zariadenia';

  @override
  String get fwupdDeviceFlagInstallAllReleases => 'Zariadenie je vyžadované na inštaláciu všetkých poskytnutých vydaní';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => 'Zariadenie podporuje prechod na inú vetvu firmvéru';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => 'Zariadenie pred inštaláciou zálohuje firmvér';

  @override
  String get fwupdDeviceFlagWildcardInstall => 'Všetky zariadenia rovnakého typu budú aktualizované súčasne';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => 'Povolené sú iba inovácie verzií';

  @override
  String get fwupdDeviceFlagUnreachable => 'Zariadenie je nedostupné';

  @override
  String get fwupdDeviceFlagAffectsFde => 'Pri aktualizácii môžu byť zrušené celé tajnosti šifrovania disku';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Koniec životnosti';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Podpísané užitočné zaťaženie';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Nepodpísané užitočné zaťaženie';

  @override
  String get fwupdErrorInternal => 'Interná chyba';

  @override
  String get fwupdErrorVersionNewer => 'Nainštalovaná novšia verzia firmvéru';

  @override
  String get fwupdErrorVersionSame => 'Nainštalovaná rovnaká verzia firmvéru';

  @override
  String get fwupdErrorAlreadyPending => 'Už je nastavené na inštaláciu offline';

  @override
  String get fwupdErrorAuthFailed => 'Nepodarilo sa získať overenie';

  @override
  String get fwupdErrorRead => 'Čítanie zo zariadenia zlyhalo';

  @override
  String get fwupdErrorWrite => 'Zápis do zariadenia zlyhal';

  @override
  String get fwupdErrorInvalidFile => 'Neplatný formát súboru';

  @override
  String get fwupdErrorNotFound => 'Žiadne zodpovedajúce zariadenie neexistuje';

  @override
  String get fwupdErrorNothingToDo => 'Nič na práci';

  @override
  String get fwupdErrorNotSupported => 'Akcia nebola možná';

  @override
  String get fwupdErrorSignatureInvalid => 'Podpis bol neplatný';

  @override
  String get fwupdErrorAcPowerRequired => 'Je potrebné napájanie zo zásuvky';

  @override
  String get fwupdErrorPermissionDenied => 'Povolenie bolo zamietnuté';

  @override
  String get fwupdErrorBrokenSystem => 'Používateľ nakonfiguroval svoj systém chybne';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'Úroveň nabitia batérie systému je príliš nízka';

  @override
  String get fwupdErrorNeedsUserAction => 'Používateľ musí vykonať akciu na dokončenie aktualizácie';

  @override
  String get fwupdErrorAuthExpired => 'Nepodarilo sa získať autorizáciu, pretože platnosť poverení vypršala';

  @override
  String get fwupdErrorUnknown => 'Neznáma chyba';

  @override
  String get fwupdStatusUnknown => 'Neznámy stav';

  @override
  String get fwupdStatusIdle => 'Nečinné';

  @override
  String get fwupdStatusLoading => 'Načítava sa zdroj';

  @override
  String get fwupdStatusDecompressing => 'Dekomprimácia firmvéru';

  @override
  String get fwupdStatusDeviceRestart => 'Reštartovanie zariadenia';

  @override
  String get fwupdStatusDeviceWrite => 'Zapisovanie do zariadenia';

  @override
  String get fwupdStatusDeviceVerify => 'Overovanie (čítanie) zariadenia';

  @override
  String get fwupdStatusScheduling => 'Plánovanie offline aktualizácie';

  @override
  String get fwupdStatusDownloading => 'Sťahuje sa súbor';

  @override
  String get fwupdStatusDeviceRead => 'Čítanie zo zariadenia';

  @override
  String get fwupdStatusDeviceErase => 'Vymazávanie zariadenia';

  @override
  String get fwupdStatusWaitingForAuth => 'Čakanie na overenie';

  @override
  String get fwupdStatusDeviceBusy => 'Zariadenie je zaneprázdnené';

  @override
  String get fwupdStatusShutdown => 'Démon sa vypína';

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
  String get rebootConfirmMessage => 'Na dokončenie aktualizácie musíte reštartovať zariadenie. Skontrolujte, či je vaše zariadenie zapojené alebo plne nabité. Pred reštartovaním si uložte súbory, aby ste predišli strate údajov.';

  @override
  String get rebootConfirmTitle => 'Aktualizáciu dokončíte reštartovaním';

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
  String get updateChecksumsInfo => 'Tým sa zaznamenajú aktuálne kryptografické hash ako overené.';

  @override
  String get updateToLatest => 'Aktualizovať na najnovšie';

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
