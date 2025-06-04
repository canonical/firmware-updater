// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get affectsFdeWarningTitle => 'Du kan förlora all din data utan återställningsnycklar';

  @override
  String get affectsFdeWarningBody1 => 'Se till att du har återställningsnycklar för alla dina krypterade enheter. Du måste ange dem vid uppstart efter uppdatering av fast programvara.';

  @override
  String get affectsFdeWarningBody2 => 'Du behöver återställningsnycklar eftersom du har aktiverat hårdvarustödd kryptering i Ubuntu eller andra operativsystem på den här datorn.';

  @override
  String get affectsFdeTextFieldLabel => 'Enter your recovery key';

  @override
  String get affectsFdeLinkLabel => 'Läs mer';

  @override
  String get affectsFdeIncorrectKey => 'Recovery key does not work, check or replace it in the Security Center';

  @override
  String get allVersions => 'Alla versioner';

  @override
  String get appTitle => 'Uppdaterare för fast programvara';

  @override
  String get batteryWarning => 'Varning: vissa enhetsuppdateringar kanske bara är tillgängliga med extern ström!';

  @override
  String get checksum => 'Kontrolsumma';

  @override
  String get close => 'Stäng';

  @override
  String get cancel => 'Avbryt';

  @override
  String get current => 'Nuvarande';

  @override
  String get deviceUnavailable => 'Enheten kommer att vara otillgänglig under denna åtgärd.';

  @override
  String get deviceRequest => 'Enhetsförfrågan';

  @override
  String get downgrade => 'Nedgradera';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Nedgradera <b>$name</b> till version <b>$version</b>?';
  }

  @override
  String get flags => 'Flaggor';

  @override
  String get fwupdDeviceFlagInternal => 'Intern enhet';

  @override
  String get fwupdDeviceFlagUpdatable => 'Uppdaterbar';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'Uppdatering kräver omstart';

  @override
  String get fwupdDeviceFlagRequireAc => 'Systemet kräver extern strömkälla';

  @override
  String get fwupdDeviceFlagLocked => 'Enhet är låst';

  @override
  String get fwupdDeviceFlagSupported => 'Stöds på fjärrserver';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Kräver en startladdare';

  @override
  String get fwupdDeviceFlagRegistered => 'Registrerad';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'Behöver en omstart efter installation';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'Behöver stängas av efter installation';

  @override
  String get fwupdDeviceFlagReported => 'Rapporterad till fjärrserver';

  @override
  String get fwupdDeviceFlagNotified => 'Användaren har meddelats';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'Installera på föräldraenheten först';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Är i startladdare läge';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'Hårdvara väntar på att kopplas in igen';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'Ignorera säkerhetskontroller för validering';

  @override
  String get fwupdDeviceFlagTrusted => 'Betrodd';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'Enhetsuppdatering behöver aktiveras';

  @override
  String get fwupdDeviceFlagWillDisappear => 'Enheten kommer inte att dyka upp igen efter att uppdateringen är klar';

  @override
  String get fwupdDeviceFlagCanVerify => 'Kryptografisk hashverifiering är tillgänglig';

  @override
  String get fwupdDeviceFlagDualImage => 'Enhetssteg uppdateringar';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'Enheten kan återställa flashfel';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => 'Enheten är användbar under hela uppdateringen';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => 'Enhetens fasta programvara krävs för att ha en versionskontroll';

  @override
  String get fwupdDeviceFlagInstallAllReleases => 'Enhet krävs för att installera alla medföljande versioner';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => 'Enhet stöder byte till en annan gren av fast programvara';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => 'Enheten säkerhetskopierar fast programvara innan installation';

  @override
  String get fwupdDeviceFlagWildcardInstall => 'Alla enheter av samma typ kommer att uppdateras samtidigt';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => 'Endast versionsuppgraderingar är tillåtna';

  @override
  String get fwupdDeviceFlagUnreachable => 'Enheten går inte att nå';

  @override
  String get fwupdDeviceFlagAffectsFde => 'Fullständiga diskkrypteringshemligheter kan bli ogiltiga vid uppdatering';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Slutet på livet';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Signerad nyttolast';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Osignerad nyttolast';

  @override
  String get fwupdErrorInternal => 'Internt fel';

  @override
  String get fwupdErrorVersionNewer => 'Installerad nyare version av fastprogramvara';

  @override
  String get fwupdErrorVersionSame => 'Installerad samma version av fast programvara';

  @override
  String get fwupdErrorAlreadyPending => 'Redan inställd på att installeras offline';

  @override
  String get fwupdErrorAuthFailed => 'Misslyckades att hämta autentisering';

  @override
  String get fwupdErrorRead => 'Misslyckades att läsa från enhet';

  @override
  String get fwupdErrorWrite => 'Misslyckades att skriva till enhet';

  @override
  String get fwupdErrorInvalidFile => 'Ogiltigt filformat';

  @override
  String get fwupdErrorNotFound => 'Ingen matchande enhet existerar';

  @override
  String get fwupdErrorNothingToDo => 'Ingenting att göra';

  @override
  String get fwupdErrorNotSupported => 'Åtgärd var inte möjlig';

  @override
  String get fwupdErrorSignatureInvalid => 'Signaturen var ogiltig';

  @override
  String get fwupdErrorAcPowerRequired => 'AC-ström krävdes';

  @override
  String get fwupdErrorPermissionDenied => 'Tillstånd nekades';

  @override
  String get fwupdErrorBrokenSystem => 'Användaren har konfigurerat sitt system på ett trasigt sätt';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'Systemets batterinivå är för låg';

  @override
  String get fwupdErrorNeedsUserAction => 'Användaren måste göra en åtgärd för att slutföra uppdateringen';

  @override
  String get fwupdErrorAuthExpired => 'Misslyckades att hämta autentisering eftersom användaruppgifterna har löpt ut';

  @override
  String get fwupdErrorUnknown => 'Okänt fel';

  @override
  String get fwupdStatusUnknown => 'Okänt tillstånd';

  @override
  String get fwupdStatusIdle => 'Overksam';

  @override
  String get fwupdStatusLoading => 'Laddar en resurs';

  @override
  String get fwupdStatusDecompressing => 'Dekomprimerar fast programvara';

  @override
  String get fwupdStatusDeviceRestart => 'Startar om enheten';

  @override
  String get fwupdStatusDeviceWrite => 'Skriver till en enhet';

  @override
  String get fwupdStatusDeviceVerify => 'Verifierar (läser) en enhet';

  @override
  String get fwupdStatusScheduling => 'Schemalägg en offlineuppdatering';

  @override
  String get fwupdStatusDownloading => 'En fil laddas ned';

  @override
  String get fwupdStatusDeviceRead => 'Läser från en enhet';

  @override
  String get fwupdStatusDeviceErase => 'Raderar en enhet';

  @override
  String get fwupdStatusWaitingForAuth => 'Väntar på autentisering';

  @override
  String get fwupdStatusDeviceBusy => 'Enheten är upptagen';

  @override
  String get fwupdStatusShutdown => 'Demonen stängs av';

  @override
  String get guid => 'GUID:er';

  @override
  String get installError => 'Misslyckades att installera fast programvara!';

  @override
  String get noDevicesFound => 'Inga enheter hittades';

  @override
  String get ok => 'OK';

  @override
  String get olderVersions => 'Äldre versioner';

  @override
  String get rebootLater => 'Starta om senare';

  @override
  String get rebootNow => 'Starta om nu';

  @override
  String get rebootConfirmMessage => 'Du måste starta om din enhet för att slutföra uppdateringen. Se till att din enhet är ansluten eller fulladdad. Spara dina filer innan du startar om för att undvika att förlora data.';

  @override
  String get rebootConfirmTitle => 'Starta om för att slutföra den här uppdateringen';

  @override
  String get reinstall => 'Installera om';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Installera om <b>$name</b>version<b>$current</b>?';
  }

  @override
  String get showReleases => 'Visa släpp';

  @override
  String get showUpdates => 'Visa uppdateringar';

  @override
  String get update => 'Uppdatera';

  @override
  String get updateAvailable => 'Uppdatering tillgänglig';

  @override
  String get updateChecksums => 'Uppdatera kontrollsummor';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Uppdatera enhetskontrollsummor för <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo => 'Detta kommer att registrera de aktuella kryptografiska hasharna som verifierade.';

  @override
  String get updateToLatest => 'Uppdatera till senaste';

  @override
  String updateConfirm(String name, String version) {
    return 'Uppdatera <b>$name</b> till version <b>$version</b>?';
  }

  @override
  String get vendor => 'Tillverkare';

  @override
  String get verifyFirmware => 'Verifiera fast programvara';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Verifiera kontrollsummorr för fast programvara för $name?';
  }

  @override
  String get currentVersion => 'Nuvarande version';

  @override
  String get minVersion => 'Minimal version';

  @override
  String get latestVersion => 'Senaste version';
}
