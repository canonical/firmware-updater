// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'Du kan förlora all din data utan återställningsnycklar';

  @override
  String get affectsFdeWarningUbuntuFdeTitle =>
      'Du kan förlora all din data utan din återställningsnyckel';

  @override
  String get affectsFdeWarningOtherFdeBody =>
      'Se till att du har återställningsnycklar för alla krypterade diskar. Du kan behöva ange dem vid uppstart efter att du har uppdaterat den fasta programvaran.';

  @override
  String get affectsFdeWarningUbuntuFdeBody =>
      'Hårdvarubaserad kryptering är aktiverat på din dator. Du kan behöva ange din återställningsnyckel vid uppstart efter att du har uppdaterat den fasta programvaran. Se även till att du har återställningsnycklar för alla andra krypterade diskar på den här datorn.';

  @override
  String get affectsFdeWarningBitlockerBody =>
      'BitLocker är aktiverat på din dator. Se till att du har återställningsnycklar för alla krypterade diskar. Du kan behöva ange dem vid uppstart efter att du uppdaterat den fasta programvaran.';

  @override
  String get affectsFdeCheckbox =>
      'Jag har återställningsnycklar för alla mina krypterade enheter';

  @override
  String get affectsFdeTextFieldLabel => 'Ange din återställningsnyckel';

  @override
  String get affectsFdeLinkLabel => 'Läs mer';

  @override
  String get affectsFdeIncorrectKey =>
      'Återställningsnyckeln fungerar inte. Kontrollera eller ersätt den i Säkerhetscenter.';

  @override
  String get allVersions => 'Alla versioner';

  @override
  String get appTitle => 'Uppdaterare för fast programvara';

  @override
  String get batteryWarning =>
      'Varning: vissa enhetsuppdateringar kanske bara är tillgängliga med extern ström!';

  @override
  String get checksum => 'Kontrollsumma';

  @override
  String get close => 'Stäng';

  @override
  String get cancel => 'Avbryt';

  @override
  String get current => 'Aktuell';

  @override
  String get deviceUnavailable =>
      'Enheten kommer att vara otillgänglig under denna åtgärd.';

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
  String get fwupdDeviceFlagUpdatable => 'Uppdateringsbar';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'Uppdatering kräver en omstart';

  @override
  String get fwupdDeviceFlagRequireAc => 'Systemet kräver extern strömkälla';

  @override
  String get fwupdDeviceFlagLocked => 'Enheten är låst';

  @override
  String get fwupdDeviceFlagSupported => 'Stöds på fjärrserver';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Kräver en starthanterare';

  @override
  String get fwupdDeviceFlagRegistered => 'Registrerad';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'Kräver omstart efter installationen';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'Kräver avstängning efter installationen';

  @override
  String get fwupdDeviceFlagReported => 'Rapporterad till fjärrserver';

  @override
  String get fwupdDeviceFlagNotified => 'Användaren har meddelats';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'Installera först på den överordnade enheten';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Är i starthanterarläge';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'Maskinvaran väntar på att anslutas igen';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'Ignorera säkerhetskontroller för validering';

  @override
  String get fwupdDeviceFlagTrusted => 'Betrodd';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'Enhetsuppdatering behöver aktiveras';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'Enheten kommer inte att dyka upp igen efter att uppdateringen är klar';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'Kryptografisk verifiering av kontrollsumma är tillgänglig';

  @override
  String get fwupdDeviceFlagDualImage => 'Enheten förbereder uppdateringar';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'Enheten kan återställa flashfel';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'Enheten är användbar under hela uppdateringen';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'Enhetens fasta programvara måste versionskontrolleras';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'Enheten måste installera alla tillhandahållna utgåvor';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'Enheten har stöd för att byta till en annan gren av den fasta programvaran';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'Enheten säkerhetskopierar den fasta programvaran före installationen';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'Alla enheter av samma typ kommer att uppdateras samtidigt';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Endast versionsuppgraderingar är tillåtna';

  @override
  String get fwupdDeviceFlagUnreachable => 'Enheten går inte att nå';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Hemligheter för fullständig diskkryptering kan bli ogiltiga vid uppdatering';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Uttjänt';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Signerad nyttolast';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Osignerad nyttolast';

  @override
  String get fwupdErrorInternal => 'Internt fel';

  @override
  String get fwupdErrorVersionNewer =>
      'En nyare version av den fasta programvaran är installerad';

  @override
  String get fwupdErrorVersionSame =>
      'Samma version av den fasta programvaran är redan installerad';

  @override
  String get fwupdErrorAlreadyPending =>
      'Redan inställd för frånkopplad installation';

  @override
  String get fwupdErrorAuthFailed => 'Misslyckades med att autentisera';

  @override
  String get fwupdErrorRead => 'Misslyckades med att läsa från enheten';

  @override
  String get fwupdErrorWrite => 'Misslyckades med att skriva till enheten';

  @override
  String get fwupdErrorInvalidFile => 'Ogiltigt filformat';

  @override
  String get fwupdErrorNotFound => 'Ingen matchande enhet finns';

  @override
  String get fwupdErrorNothingToDo => 'Inget att göra';

  @override
  String get fwupdErrorNotSupported => 'Åtgärden kunde inte utföras';

  @override
  String get fwupdErrorSignatureInvalid => 'Signaturen var ogiltig';

  @override
  String get fwupdErrorAcPowerRequired => 'Extern ström krävs';

  @override
  String get fwupdErrorPermissionDenied => 'Behörighet nekades';

  @override
  String get fwupdErrorBrokenSystem =>
      'Användaren har konfigurerat sitt system på ett trasigt sätt';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'Systemets batterinivå är för låg';

  @override
  String get fwupdErrorNeedsUserAction =>
      'Användaren måste göra en åtgärd för att slutföra uppdateringen';

  @override
  String get fwupdErrorAuthExpired =>
      'Misslyckades att få autentisering eftersom användaruppgifterna har löpt ut';

  @override
  String get fwupdErrorUnknown => 'Okänt fel';

  @override
  String get fwupdStatusUnknown => 'Okänt tillstånd';

  @override
  String get fwupdStatusIdle => 'Overksam';

  @override
  String get fwupdStatusLoading => 'Läser in en resurs';

  @override
  String get fwupdStatusDecompressing => 'Packar upp fast programvara';

  @override
  String get fwupdStatusDeviceRestart => 'Startar om enheten';

  @override
  String get fwupdStatusDeviceWrite => 'Skriver till en enhet';

  @override
  String get fwupdStatusDeviceVerify => 'Verifierar (läser) en enhet';

  @override
  String get fwupdStatusScheduling => 'Schemalägger en frånkopplad uppdatering';

  @override
  String get fwupdStatusDownloading => 'En fil hämtas';

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
  String get rebootConfirmMessage =>
      'Du måste starta om din enhet för att slutföra uppdateringen. Se till att din enhet är ansluten eller fulladdad. Spara dina filer innan du startar om för att undvika att förlora data.';

  @override
  String get rebootConfirmTitle =>
      'Starta om för att slutföra den här uppdateringen';

  @override
  String get reinstall => 'Installera om';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Installera om <b>$name</b> version <b>$current</b>?';
  }

  @override
  String get showReleases => 'Visa utgåvor';

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
  String get updateChecksumsInfo =>
      'Detta kommer att registrera de aktuella kryptografiska kontrollsummorna som verifierade.';

  @override
  String get updateToLatest => 'Uppdatera till den senaste versionen';

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
    return 'Verifiera kontrollsummor för fast programvara för $name?';
  }

  @override
  String get currentVersion => 'Aktuell version';

  @override
  String get minVersion => 'Lägsta version';

  @override
  String get latestVersion => 'Senaste version';
}
