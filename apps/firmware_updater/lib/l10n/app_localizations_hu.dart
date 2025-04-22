// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get affectsFdeWarningTitle => 'Helyreállítási kulcsok nélkül elveszítheti az összes adatát';

  @override
  String get affectsFdeWarningBody1 => 'Győződjön meg arról, hogy rendelkezik-e helyreállítási kulcsokkal az összes titkosított meghajtóhoz. Ezeket a belső vezérlőprogram frissítése után, a rendszerindításkor kell megadni.';

  @override
  String get affectsFdeWarningBody2 => 'Azért van szüksége helyreállítási kulcsokra, mert engedélyezte a hardveres titkosítást az Ubuntuban vagy a számítógépen lévő más operációs rendszerekben.';

  @override
  String get affectsFdeCheckbox => 'Rendelkezem helyreállítási kulcsokkal az összes titkosított meghajtómhoz';

  @override
  String get allVersions => 'Összes verzió';

  @override
  String get appTitle => 'Belsővezérlőprogram-frissítő';

  @override
  String get batteryWarning => 'Figyelmeztetés: néhány eszközfrissítés csak külső tápellátás mellett érhető el!';

  @override
  String get checksum => 'Ellenőrzőösszeg';

  @override
  String get close => 'Bezárás';

  @override
  String get cancel => 'Mégse';

  @override
  String get current => 'Jelenlegi';

  @override
  String get deviceUnavailable => 'Az eszköz elérhetetlen lesz a művelet alatt.';

  @override
  String get deviceRequest => 'Eszközkérés';

  @override
  String get downgrade => 'Régebbi verzió telepítése';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Telepíti a(z) <b>$name</b> régebbi <b>$version</b> verzióját?';
  }

  @override
  String get flags => 'Jelzők';

  @override
  String get fwupdDeviceFlagInternal => 'Belső eszköz';

  @override
  String get fwupdDeviceFlagUpdatable => 'Frissíthető';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'A frissítés újraindítást igényel';

  @override
  String get fwupdDeviceFlagRequireAc => 'A rendszer külső energiaforrást igényel';

  @override
  String get fwupdDeviceFlagLocked => 'Az eszköz zárolva van';

  @override
  String get fwupdDeviceFlagSupported => 'Távoli kiszolgálón támogatott';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Rendszerbetöltőt igényel';

  @override
  String get fwupdDeviceFlagRegistered => 'Regisztrálva';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'Újraindítást igényel a telepítés után';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'Leállítást igényel a telepítés után';

  @override
  String get fwupdDeviceFlagReported => 'Jelentve a távoli kiszolgálónak';

  @override
  String get fwupdDeviceFlagNotified => 'A felhasználó értesítve';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'Telepítés először a szülő eszközre';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Rendszerbetöltő módban van';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'A hardver újracsatlakoztatásra vár';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'Biztonsági ellenőrzések mellőzése';

  @override
  String get fwupdDeviceFlagTrusted => 'Megbízható';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'Az eszközfrissítés aktiválást igényel';

  @override
  String get fwupdDeviceFlagWillDisappear => 'Az eszköz nem fog újra megjelenni a frissítés befejezése után';

  @override
  String get fwupdDeviceFlagCanVerify => 'Kriptográfiaikivonat-ellenőrzés érhető el';

  @override
  String get fwupdDeviceFlagDualImage => 'Az eszköz szakaszosan frissít';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'Az eszköz képes helyreállítani a beírási hibákat';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => 'Az eszköz használható a frissítés ideje alatt';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => 'Az eszköz belső vezérlőprogramja szükséges a verzió-ellenőrzéshez';

  @override
  String get fwupdDeviceFlagInstallAllReleases => 'Eszköz szükséges az összes szolgáltatott kiadás telepítéséhez';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => 'Az eszköz támogatja a belső vezérlőprogram különböző ágainak váltását';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => 'Az eszköz biztonsági mentést fog készíteni a belső vezérlőprogramról a telepítés előtt';

  @override
  String get fwupdDeviceFlagWildcardInstall => 'Az összes azonos típusú eszköz egyszerre lesz frissítve';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => 'Csak verziófrissítések engedélyezettek';

  @override
  String get fwupdDeviceFlagUnreachable => 'Az eszköz elérhetetlen';

  @override
  String get fwupdDeviceFlagAffectsFde => 'A teljes lemeztitkosítás titkai érvénytelenné válhatnak a frissítésekor';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Életciklus vége';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Aláírt hasznos teher';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Aláíratlan hasznos teher';

  @override
  String get fwupdErrorInternal => 'Belső hiba';

  @override
  String get fwupdErrorVersionNewer => 'Újabb belsővezérlőprogram-verzió telepítve';

  @override
  String get fwupdErrorVersionSame => 'Azonos belsővezérlőprogram-verzió telepítve';

  @override
  String get fwupdErrorAlreadyPending => 'Már be van állítva kapcsolat nélküli frissítéshez';

  @override
  String get fwupdErrorAuthFailed => 'Nem sikerült lekérni a hitelesítést';

  @override
  String get fwupdErrorRead => 'Nem sikerült olvasni az eszközről';

  @override
  String get fwupdErrorWrite => 'Nem sikerült írni az eszközre';

  @override
  String get fwupdErrorInvalidFile => 'Érvénytelen fájlformátum';

  @override
  String get fwupdErrorNotFound => 'Nem létezik egyező eszköz';

  @override
  String get fwupdErrorNothingToDo => 'Nincs mit tenni';

  @override
  String get fwupdErrorNotSupported => 'A művelet nem volt lehetséges';

  @override
  String get fwupdErrorSignatureInvalid => 'Az aláírás érvénytelen volt';

  @override
  String get fwupdErrorAcPowerRequired => 'Külső tápellátás volt szükséges';

  @override
  String get fwupdErrorPermissionDenied => 'A hozzáférés meg volt tagadva';

  @override
  String get fwupdErrorBrokenSystem => 'A felhasználó hibásan állította be a rendszerét';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'A rendszer akkumulátorszintje túl alacsony';

  @override
  String get fwupdErrorNeedsUserAction => 'A felhasználónak műveletet kell végrehajtania a frissítés befejezéséhez';

  @override
  String get fwupdErrorAuthExpired => 'Nem sikerült lekérni a hitelesítést, mivel a hitelesítési adatok lejártak';

  @override
  String get fwupdErrorUnknown => 'Ismeretlen hiba';

  @override
  String get fwupdStatusUnknown => 'Ismeretlen állapot';

  @override
  String get fwupdStatusIdle => 'Üresjárat';

  @override
  String get fwupdStatusLoading => 'Erőforrás betöltése';

  @override
  String get fwupdStatusDecompressing => 'Belső vezérlőprogram kibontása';

  @override
  String get fwupdStatusDeviceRestart => 'Az eszköz újraindítása';

  @override
  String get fwupdStatusDeviceWrite => 'Írás egy eszközre';

  @override
  String get fwupdStatusDeviceVerify => 'Egy eszköz ellenőrzése (olvasása)';

  @override
  String get fwupdStatusScheduling => 'Egy kapcsolat nélküli frissítés ütemezése';

  @override
  String get fwupdStatusDownloading => 'Egy fájl letöltése folyamatban van';

  @override
  String get fwupdStatusDeviceRead => 'Olvasás egy eszközről';

  @override
  String get fwupdStatusDeviceErase => 'Egy eszköz törlése';

  @override
  String get fwupdStatusWaitingForAuth => 'Várakozás hitelesítésre';

  @override
  String get fwupdStatusDeviceBusy => 'Az eszköz foglalt';

  @override
  String get fwupdStatusShutdown => 'A démon leállítása folyamatban van';

  @override
  String get guid => 'GUID-ok';

  @override
  String get installError => 'Nem sikerült telepíteni a belső vezérlőprogramot!';

  @override
  String get noDevicesFound => 'Nem találhatók eszközök';

  @override
  String get ok => 'OK';

  @override
  String get olderVersions => 'Régebbi verziók';

  @override
  String get rebootLater => 'Újraindítás később';

  @override
  String get rebootNow => 'Újraindítás most';

  @override
  String get rebootConfirmMessage => 'Újra kell indítania az eszközt a frissítés befejezéséhez. Győződjön meg arról, hogy az eszköz be van-e dugva vagy teljesen fel van-e töltve. Mentse el a fájlokat az újraindítás előtt, hogy elkerülje az adatvesztést.';

  @override
  String get rebootConfirmTitle => 'Újraindítás a frissítés befejezéséhez';

  @override
  String get reinstall => 'Újratelepítés';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Újratelepíti a(z) <b>$name</b> <b>$current</b> verzióját?';
  }

  @override
  String get showReleases => 'Kiadások megjelenítése';

  @override
  String get showUpdates => 'Frissítések megjelenítése';

  @override
  String get update => 'Frissítés';

  @override
  String get updateAvailable => 'Frissítés érhető el';

  @override
  String get updateChecksums => 'Ellenőrzőösszegek frissítése';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Frissíti a(z) <b>$name</b> eszköz-ellenőrzőösszegeit?';
  }

  @override
  String get updateChecksumsInfo => 'Ez feljegyzi a jelenlegi kriptográfiai kivonatokat ellenőrzöttként.';

  @override
  String get updateToLatest => 'Frissítés a legújabbra';

  @override
  String updateConfirm(String name, String version) {
    return 'Frissíti a(z) <b>$name</b> eszközt a(z) <b>$version</b> verzióra?';
  }

  @override
  String get vendor => 'Gyártó';

  @override
  String get verifyFirmware => 'Belső vezérlőprogram ellenőrzése';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Ellenőrzi a(z) $name belső vezérlőprogramjának ellenőrzőösszegeit?';
  }

  @override
  String get currentVersion => 'Jelenlegi verzió';

  @override
  String get minVersion => 'Legkisebb verzió';

  @override
  String get latestVersion => 'Legújabb verzió';
}
