// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get affectsFdeWarningTitle => 'Bez kluczy odzyskiwania możesz utracić wszystkie swoje dane';

  @override
  String get affectsFdeWarningBody1 => 'Upewnij się, że masz klucze odzyskiwania do wszystkich zaszyfrowanych dysków. Wymagane będzie wpisanie ich podczas rozruchu po aktualizacji oprogramowania układowego.';

  @override
  String get affectsFdeWarningBody2 => 'Potrzebujesz kluczy odzyskiwania, ponieważ w Ubuntu lub innym systemie operacyjnym na tym komputerze włączono szyfrowanie sprzętowe.';

  @override
  String get affectsFdeCheckbox => 'Mam klucze odzyskiwania do wszystkich moich zaszyfrowanych dysków';

  @override
  String get affectsFdeLinkLabel => 'Dowiedz się więcej';

  @override
  String get allVersions => 'Wszystkie wersje';

  @override
  String get appTitle => 'Aktualizator oprogramowania sprzętowego';

  @override
  String get batteryWarning => 'Ostrzeżenie: niektóre aktualizacje urządzeń mogą być dostępne tylko przy zasilaniu zewnętrznym!';

  @override
  String get checksum => 'Suma kontrolna';

  @override
  String get close => 'Zamknij';

  @override
  String get cancel => 'Anuluj';

  @override
  String get current => 'Aktualne';

  @override
  String get deviceUnavailable => 'Urządzenie będzie niedostępne podczas tego działania.';

  @override
  String get deviceRequest => 'Żądanie urządzenia';

  @override
  String get downgrade => 'Obniż wersję';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Obniżyć <b>$name</b> do wersji <b>$version</b>?';
  }

  @override
  String get flags => 'Flagi';

  @override
  String get fwupdDeviceFlagInternal => 'Urządzenie wewnętrzne';

  @override
  String get fwupdDeviceFlagUpdatable => 'Możliwość aktualizacji';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'Aktualizacja wymaga ponownego uruchomienia';

  @override
  String get fwupdDeviceFlagRequireAc => 'System wymaga zewnętrznego źródła zasilania';

  @override
  String get fwupdDeviceFlagLocked => 'Urządzenie jest zablokowane';

  @override
  String get fwupdDeviceFlagSupported => 'Obsługiwane na serwerze zdalnym';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Wymaga programu rozruchowego';

  @override
  String get fwupdDeviceFlagRegistered => 'Zarejestrowane';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'Wymaga ponownego uruchomienia po instalacji';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'Wymaga wyłączenia po instalacji';

  @override
  String get fwupdDeviceFlagReported => 'Zgłoszono do zdalnego serwera';

  @override
  String get fwupdDeviceFlagNotified => 'Użytkownik został powiadomiony';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'Najpierw zainstaluj na urządzeniu nadrzędnym';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Jest w trybie programu rozruchowego';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'Sprzęt czeka na ponowne podłączenie';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'Zignoruj kontrole bezpieczeństwa sprawdzające poprawność';

  @override
  String get fwupdDeviceFlagTrusted => 'Zaufane';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'Aktualizacja urządzenia wymaga aktywacji';

  @override
  String get fwupdDeviceFlagWillDisappear => 'Urządzenie nie pojawi się ponownie po zakończeniu aktualizacji';

  @override
  String get fwupdDeviceFlagCanVerify => 'Dostępna jest kryptograficzna weryfikacja skrótu';

  @override
  String get fwupdDeviceFlagDualImage => 'Aktualizacje etapów urządzenia';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'Urządzenie może odzyskać sprawność po awarii pamięci flash';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => 'Urządzenie jest gotowe do użycia w czasie aktualizacji';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => 'Oprogramowanie sprzętowe urządzenia musi mieć sprawdzoną wersję';

  @override
  String get fwupdDeviceFlagInstallAllReleases => 'Urządzenie jest wymagane do zainstalowania wszystkich udostępnionych wersji';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => 'Urządzenie obsługuje przełączanie na inną gałąź oprogramowania sprzętowego';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => 'Urządzenie wykona kopię zapasową oprogramowania sprzętowego przed instalacją';

  @override
  String get fwupdDeviceFlagWildcardInstall => 'Wszystkie urządzenia tego samego typu zostaną zaktualizowane w tym samym czasie';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => 'Dozwolone są tylko aktualizacje wersji';

  @override
  String get fwupdDeviceFlagUnreachable => 'Urządzenie jest nieosiągalne';

  @override
  String get fwupdDeviceFlagAffectsFde => 'Tajne klucze szyfrowania całego dysku mogą zostać unieważnione podczas aktualizacji';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Koniec okresu wsparcia';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Podpisana zawartość';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Niepodpisana zawartość';

  @override
  String get fwupdErrorInternal => 'Błąd wewnętrzny';

  @override
  String get fwupdErrorVersionNewer => 'Zainstalowano nowszą wersję oprogramowania sprzętowego';

  @override
  String get fwupdErrorVersionSame => 'Zainstalowano tę samą wersję oprogramowania sprzętowego';

  @override
  String get fwupdErrorAlreadyPending => 'Już skonfigurowano do zainstalowania w trybie offline';

  @override
  String get fwupdErrorAuthFailed => 'Nie udało się uzyskać uwierzytelnienia';

  @override
  String get fwupdErrorRead => 'Nie udało się odczytać z urządzenia';

  @override
  String get fwupdErrorWrite => 'Nie udało się zapisać na urządzeniu';

  @override
  String get fwupdErrorInvalidFile => 'Nieprawidłowy format pliku';

  @override
  String get fwupdErrorNotFound => 'Brak dopasowanego urządzenia';

  @override
  String get fwupdErrorNothingToDo => 'Nic do zrobienia';

  @override
  String get fwupdErrorNotSupported => 'Działanie nie było możliwe';

  @override
  String get fwupdErrorSignatureInvalid => 'Podpis był nieprawidłowy';

  @override
  String get fwupdErrorAcPowerRequired => 'Wymagane było zasilanie sieciowe';

  @override
  String get fwupdErrorPermissionDenied => 'Odmówiono pozwolenia';

  @override
  String get fwupdErrorBrokenSystem => 'Użytkownik skonfigurował swój system w nieprawidłowy sposób';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'Poziom naładowania akumulatora systemu jest zbyt niski';

  @override
  String get fwupdErrorNeedsUserAction => 'Użytkownik musi wykonać działanie, aby ukończyć aktualizację';

  @override
  String get fwupdErrorAuthExpired => 'Nie udało się uzyskać autoryzacji, ponieważ dane uwierzytelniające wygasły';

  @override
  String get fwupdErrorUnknown => 'Nieznany błąd';

  @override
  String get fwupdStatusUnknown => 'Nieznany stan';

  @override
  String get fwupdStatusIdle => 'Bezczynny';

  @override
  String get fwupdStatusLoading => 'Ładowanie zasobu';

  @override
  String get fwupdStatusDecompressing => 'Dekompresowanie oprogramowania sprzętowego';

  @override
  String get fwupdStatusDeviceRestart => 'Ponowne uruchomienie urządzenia';

  @override
  String get fwupdStatusDeviceWrite => 'Zapisywanie na urządzeniu';

  @override
  String get fwupdStatusDeviceVerify => 'Weryfikowanie (odczyt) urządzenia';

  @override
  String get fwupdStatusScheduling => 'Planowanie aktualizacji w trybie offline';

  @override
  String get fwupdStatusDownloading => 'Trwa pobieranie pliku';

  @override
  String get fwupdStatusDeviceRead => 'Odczytywanie z urządzenia';

  @override
  String get fwupdStatusDeviceErase => 'Wymazywanie urządzenia';

  @override
  String get fwupdStatusWaitingForAuth => 'Oczekiwanie na uwierzytelnienie';

  @override
  String get fwupdStatusDeviceBusy => 'Urządzenie jest zajęte';

  @override
  String get fwupdStatusShutdown => 'Demon kończy działanie';

  @override
  String get guid => 'Identyfikatory GUID';

  @override
  String get installError => 'Nie udało się zainstalować oprogramowania sprzętowego!';

  @override
  String get noDevicesFound => 'Nie znaleziono urządzeń';

  @override
  String get ok => 'OK';

  @override
  String get olderVersions => 'Starsze wersje';

  @override
  String get rebootLater => 'Uruchom ponownie później';

  @override
  String get rebootNow => 'Uruchom ponownie teraz';

  @override
  String get rebootConfirmMessage => 'Aby ukończyć aktualizację, musisz ponownie uruchomić urządzenie. Upewnij się, że urządzenie jest podłączone do prądu lub w pełni naładowane. Zapisz pliki przed ponownym uruchomieniem, aby uniknąć utraty danych.';

  @override
  String get rebootConfirmTitle => 'Uruchom ponownie, aby ukończyć tę aktualizację';

  @override
  String get reinstall => 'Zainstaluj ponownie';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Zainstalować ponownie <b>$name</b> w wersji <b>$current</b>?';
  }

  @override
  String get showReleases => 'Pokaż wydania';

  @override
  String get showUpdates => 'Pokaż aktualizacje';

  @override
  String get update => 'Zaktualizuj';

  @override
  String get updateAvailable => 'Dostępna aktualizacja';

  @override
  String get updateChecksums => 'Zaktualizuj sumy kontrolne';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Zaktualizować sumy kontrolne urządzenia <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo => 'Spowoduje to zarejestrowanie bieżących skrótów kryptograficznych jako zweryfikowanych.';

  @override
  String get updateToLatest => 'Zaktualizuj do najnowszej';

  @override
  String updateConfirm(String name, String version) {
    return 'Zaktualizować <b>$name</b> do wersji <b>$version</b>?';
  }

  @override
  String get vendor => 'Producent';

  @override
  String get verifyFirmware => 'Zweryfikuj oprogramowanie sprzętowe';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Zweryfikować sumy kontrolne oprogramowania sprzętowego $name?';
  }

  @override
  String get currentVersion => 'Wersja aktualna';

  @override
  String get minVersion => 'Wersja minimalna';

  @override
  String get latestVersion => 'Wersja najnowsza';
}
