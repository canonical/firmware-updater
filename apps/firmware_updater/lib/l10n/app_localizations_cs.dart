// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get affectsFdeWarningTitle => 'Bez klíčů pro obnovení můžete přijít o všechna data';

  @override
  String get affectsFdeWarningBody1 => 'Ujistěte se, že máte klíče pro obnovení pro všechny šifrované disky. Budete je muset zadat při spouštění po aktualizaci firmwaru.';

  @override
  String get affectsFdeWarningBody2 => 'Obnovovací klíče potřebujete, protože jste na tomto počítači povolili hardwarově podporované šifrování v Ubuntu nebo jiných operačních systémech.';

  @override
  String get affectsFdeCheckbox => 'Mám klíče pro obnovení pro všechny své šifrované disky';

  @override
  String get affectsFdeLinkLabel => 'Dozvědět se více';

  @override
  String get allVersions => 'Všechny verze';

  @override
  String get appTitle => 'Nástroj pro aktualizaci firmware';

  @override
  String get batteryWarning => 'Upozornění: Některé aktualizace zařízení mohou být dostupné pouze při externím napájení!';

  @override
  String get checksum => 'Kontrolní součet';

  @override
  String get close => 'Zavřít';

  @override
  String get cancel => 'Zrušit';

  @override
  String get current => 'Aktuální';

  @override
  String get deviceUnavailable => 'Zařízení bude během této akce nedostupné.';

  @override
  String get deviceRequest => 'Požadavek zařízení';

  @override
  String get downgrade => 'Návrat ke starší verzi';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Vrátit <b>$name</b> na verzi <b>$version</b>?';
  }

  @override
  String get flags => 'Příznaky';

  @override
  String get fwupdDeviceFlagInternal => 'Vestavěné zařízení';

  @override
  String get fwupdDeviceFlagUpdatable => 'Aktualizovatelné';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'Aktualizace vyžaduje restart';

  @override
  String get fwupdDeviceFlagRequireAc => 'Systém vyžaduje externí zdroj napájení';

  @override
  String get fwupdDeviceFlagLocked => 'Zařízení je uzamčeno';

  @override
  String get fwupdDeviceFlagSupported => 'Podporováno na vzdáleném serveru';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Vyžaduje ruční přepnutí do zavaděče firmwaru';

  @override
  String get fwupdDeviceFlagRegistered => 'Registrováno';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'Po instalaci vyžaduje restart';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'Po instalaci vyžaduje vypnutí';

  @override
  String get fwupdDeviceFlagReported => 'Nahlášeno na vzdálený server';

  @override
  String get fwupdDeviceFlagNotified => 'Uživatel byl upozorněn';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'Nejprve nainstalovat do nadřazeného zařízení';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Je v režimu zavaděče firmwaru';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'Hardware čeká na opětovné připojení';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'Ignorovat výsledky přípravných kontrol';

  @override
  String get fwupdDeviceFlagTrusted => 'Důvěryhodné';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'U daného zařízení je třeba nejdříve aktivovat režim aktualizace';

  @override
  String get fwupdDeviceFlagWillDisappear => 'Po dokončení aktualizace se zařízení hned znovu neobjeví';

  @override
  String get fwupdDeviceFlagCanVerify => 'Je k dispozici kryptografické ověření otisku dat';

  @override
  String get fwupdDeviceFlagDualImage => 'Zařízení podporuje rozfázované aktualizace';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'Zařízení se dovede vzpamatovat z nezdaru při zápisu firmwaru';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => 'Zařízení je možné používat i v průběhu aktualizace';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => 'Je třeba, aby firmware zařízení měl kontrolu verze';

  @override
  String get fwupdDeviceFlagInstallAllReleases => 'Zařízení vyžaduje instalaci všech poskytnutých vydání';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => 'Zařízení podporuje přepínání mezi různými větvemi firmwaru';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => 'Zařízení provede zálohu stávajícího firmwaru před instalací nového';

  @override
  String get fwupdDeviceFlagWildcardInstall => 'Veškerá zařízení stejného typu budou aktualizována naráz';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => 'Zařízení umožňuje pouze aktualizace na novější verze';

  @override
  String get fwupdDeviceFlagUnreachable => 'Zařízení není dosažitelné';

  @override
  String get fwupdDeviceFlagAffectsFde => 'Při aktualizaci mohou být zneplatněny tajné klíče pro celodiskové šifrování';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Konec životnosti';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Podepsaný obsah';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Nepodepsaný obsah';

  @override
  String get fwupdErrorInternal => 'Interní chyba';

  @override
  String get fwupdErrorVersionNewer => 'Instalována novější verze firmwaru';

  @override
  String get fwupdErrorVersionSame => 'Instalována stejná verze firmwaru';

  @override
  String get fwupdErrorAlreadyPending => 'Již nastaveno k instalaci offline';

  @override
  String get fwupdErrorAuthFailed => 'Nepodařilo se získat ověření';

  @override
  String get fwupdErrorRead => 'Čtení ze zařízení se nezdařilo';

  @override
  String get fwupdErrorWrite => 'Zápis do zařízení se nezdařil';

  @override
  String get fwupdErrorInvalidFile => 'Neplatný formát souboru';

  @override
  String get fwupdErrorNotFound => 'Neexistuje žádné odpovídající zařízení';

  @override
  String get fwupdErrorNothingToDo => 'Není co dělat';

  @override
  String get fwupdErrorNotSupported => 'Akce nebyla možná';

  @override
  String get fwupdErrorSignatureInvalid => 'Podpis nebyl platný';

  @override
  String get fwupdErrorAcPowerRequired => 'Bylo vyžadováno napájení ze sítě';

  @override
  String get fwupdErrorPermissionDenied => 'Oprávnění bylo zamítnuto';

  @override
  String get fwupdErrorBrokenSystem => 'Uživatel nakonfiguroval svůj systém nefunkčním způsobem';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'Akumulátor, napájející systém, není dostatečně nabitý';

  @override
  String get fwupdErrorNeedsUserAction => 'K dokončení aktualizace musí uživatel provést akci';

  @override
  String get fwupdErrorAuthExpired => 'Nepodařilo se získat ověření, protože platnost pověření vypršela';

  @override
  String get fwupdErrorUnknown => 'Neznámá chyba';

  @override
  String get fwupdStatusUnknown => 'Neznámý stav';

  @override
  String get fwupdStatusIdle => 'Nečinné';

  @override
  String get fwupdStatusLoading => 'Načítání zdroje';

  @override
  String get fwupdStatusDecompressing => 'Dekomprimování firmwaru';

  @override
  String get fwupdStatusDeviceRestart => 'Restartování zařízení';

  @override
  String get fwupdStatusDeviceWrite => 'Zapisování do zařízení';

  @override
  String get fwupdStatusDeviceVerify => 'Ověřování (čtení) zařízení';

  @override
  String get fwupdStatusScheduling => 'Plánování offline aktualizace';

  @override
  String get fwupdStatusDownloading => 'Stahuje se soubor';

  @override
  String get fwupdStatusDeviceRead => 'Čtení ze zařízení';

  @override
  String get fwupdStatusDeviceErase => 'Mazání zařízení';

  @override
  String get fwupdStatusWaitingForAuth => 'Čekání na ověření';

  @override
  String get fwupdStatusDeviceBusy => 'Zařízení je zaneprázdněné';

  @override
  String get fwupdStatusShutdown => 'Proces služby se vypíná';

  @override
  String get guid => 'GUID';

  @override
  String get installError => 'Instalace firmwaru se nezdařila!';

  @override
  String get noDevicesFound => 'Nenalezena žádná zařízení';

  @override
  String get ok => 'OK';

  @override
  String get olderVersions => 'Starší verze';

  @override
  String get rebootLater => 'Restartovat později';

  @override
  String get rebootNow => 'Restartovat nyní';

  @override
  String get rebootConfirmMessage => 'Chcete-li aktualizaci dokončit, musíte zařízení restartovat. Ujistěte se, že je vaše zařízení zapojeno do zásuvky nebo plně nabité. Před restartem si uložte soubory, abyste neztratili data.';

  @override
  String get rebootConfirmTitle => 'Pro dokončení této aktualizace proveďte restart';

  @override
  String get reinstall => 'Přeinstalovat';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Přeinstalovat <b>$name</b> verze <b>$current</b>?';
  }

  @override
  String get showReleases => 'Zobrazit vydání';

  @override
  String get showUpdates => 'Zobrazit aktualizace';

  @override
  String get update => 'Aktualizace';

  @override
  String get updateAvailable => 'K dispozici je aktualizace';

  @override
  String get updateChecksums => 'Aktualizovat kontrolní součty';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Aktualizovat kontrolní součty zařízení <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo => 'Tím se zaznamenají stávající kryptografické otisky jako ověřené.';

  @override
  String get updateToLatest => 'Aktualizovat na nejnovější';

  @override
  String updateConfirm(String name, String version) {
    return 'Aktualizovat <b>$name</b> na verzi <b>$version</b>?';
  }

  @override
  String get vendor => 'Výrobce';

  @override
  String get verifyFirmware => 'Ověřit firmware';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Ověřit kontrolní součty firmwaru $name?';
  }

  @override
  String get currentVersion => 'Stávající verze';

  @override
  String get minVersion => 'Minimální verze';

  @override
  String get latestVersion => 'Nejnovější verze';
}
