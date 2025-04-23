// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get affectsFdeWarningTitle => 'You may lose all your data without recovery keys';

  @override
  String get affectsFdeWarningBody1 => 'Make sure you have recovery keys for all your encrypted drives. You will need to enter them on boot after updating firmware.';

  @override
  String get affectsFdeWarningBody2 => 'You need recovery keys because you have enabled hardware-backed encryption in Ubuntu or other operating systems on this computer.';

  @override
  String get affectsFdeCheckbox => 'I have recovery keys for all my encrypted drives';

  @override
  String get allVersions => 'Alle versioner';

  @override
  String get appTitle => 'Firmwareopdatering';

  @override
  String get batteryWarning => 'Advarsel: Visse enhedsopdateringer er måske kun tilgængelige ved brug af ekstern strømforsyning!';

  @override
  String get checksum => 'Kontrolsum';

  @override
  String get close => 'Luk';

  @override
  String get cancel => 'Annullér';

  @override
  String get current => 'Nuværende';

  @override
  String get deviceUnavailable => 'Enheden vil være utilgængelig, mens denne handling udføres.';

  @override
  String get deviceRequest => 'Enhedsforespørgsel';

  @override
  String get downgrade => 'Nedgradér';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Nedgradér <b>$name</b> til <b>$version</b>?';
  }

  @override
  String get flags => 'Flag';

  @override
  String get fwupdDeviceFlagInternal => 'Intern enhed';

  @override
  String get fwupdDeviceFlagUpdatable => 'Kan opdateres';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'Kræver systemgenstart';

  @override
  String get fwupdDeviceFlagRequireAc => 'Systemet kræver ekstern strømforsyning';

  @override
  String get fwupdDeviceFlagLocked => 'Enheden er låst';

  @override
  String get fwupdDeviceFlagSupported => 'Understøttes på fjernserver';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Kræver opstartsindlæser';

  @override
  String get fwupdDeviceFlagRegistered => 'Registreret';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'Kræver systemgenstart efter installation';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'Kræver slukning efter installation';

  @override
  String get fwupdDeviceFlagReported => 'Rapporteret til fjernserver';

  @override
  String get fwupdDeviceFlagNotified => 'Brugeren er underrettet';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'Installér først til ophavsenhed';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Er i opstartsindlæsertilstand';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'Hardware venter på at blive genforbundet';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'Ignorér sikkerhedstjek ved validering';

  @override
  String get fwupdDeviceFlagTrusted => 'Betroet';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'Enhedsopdatering kræver aktivering';

  @override
  String get fwupdDeviceFlagWillDisappear => 'Enheden vil ikke vises igen, når opdateringen er gennemført';

  @override
  String get fwupdDeviceFlagCanVerify => 'Kryptografisk hashverificering er tilgængelig';

  @override
  String get fwupdDeviceFlagDualImage => 'Enheden udruller opdateringer som prøve først';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'Enheden kan gendanne efter flashfejl';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => 'Enheden kan bruges, mens opdateringen kører';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => 'Enhedens firmware skal have versionstjek';

  @override
  String get fwupdDeviceFlagInstallAllReleases => 'Det kræves, at enheden installerer alle udbudte udgivelser';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => 'Enheden understøtter skift til en anden gren af firmwaren';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => 'Enheden vil sikkerhedskopiere firmware før installation';

  @override
  String get fwupdDeviceFlagWildcardInstall => 'Alle enheder af samme type vil blive opdateret på samme tid';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => 'Kun versionsopgraderinger tillades';

  @override
  String get fwupdDeviceFlagUnreachable => 'Enheden kan ikke nås';

  @override
  String get fwupdDeviceFlagAffectsFde => 'Hemmeligheder for fuld diskkryptering kan blive ugyldige ved opdatering';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Slut på levetid';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Indhold underskrevet';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Indhold ikke underskrevet';

  @override
  String get fwupdErrorInternal => 'Intern fejl';

  @override
  String get fwupdErrorVersionNewer => 'Nyere firmwareversion installeret';

  @override
  String get fwupdErrorVersionSame => 'Samme firmwareversion installeret';

  @override
  String get fwupdErrorAlreadyPending => 'Allerede indstillet til at blive installeret offline';

  @override
  String get fwupdErrorAuthFailed => 'Kunne ikke indhente godkendelse';

  @override
  String get fwupdErrorRead => 'Kunne ikke læse fra enheden';

  @override
  String get fwupdErrorWrite => 'Kunne ikke skrive til enheden';

  @override
  String get fwupdErrorInvalidFile => 'Ugyldigt filformat';

  @override
  String get fwupdErrorNotFound => 'Der findes ingen tilsvarende enhed';

  @override
  String get fwupdErrorNothingToDo => 'Intet at gøre';

  @override
  String get fwupdErrorNotSupported => 'Handlingen var ikke mulig';

  @override
  String get fwupdErrorSignatureInvalid => 'Underskrift var ugyldig';

  @override
  String get fwupdErrorAcPowerRequired => 'Ekstern strømforsyning var påkrævet';

  @override
  String get fwupdErrorPermissionDenied => 'Adgang blev nægtet';

  @override
  String get fwupdErrorBrokenSystem => 'Brugeren har konfigureret sit system på en fejlagtig måde';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'Systembatteriniveauet er for lavt';

  @override
  String get fwupdErrorNeedsUserAction => 'Brugeren skal udføre en handling for at fuldføre opdateringen';

  @override
  String get fwupdErrorAuthExpired => 'Kunne ikke indhente godkendelse, da legitimationsoplysningerne er udløbet';

  @override
  String get fwupdErrorUnknown => 'Ukendt fejl';

  @override
  String get fwupdStatusUnknown => 'Ukendt tilstand';

  @override
  String get fwupdStatusIdle => 'Tomgang';

  @override
  String get fwupdStatusLoading => 'Indlæser en ressource';

  @override
  String get fwupdStatusDecompressing => 'Udpakker firmware';

  @override
  String get fwupdStatusDeviceRestart => 'Genstarter enheden';

  @override
  String get fwupdStatusDeviceWrite => 'Skriver til en enhed';

  @override
  String get fwupdStatusDeviceVerify => 'Verificerer (læser) en enhed';

  @override
  String get fwupdStatusScheduling => 'Planlægger en offlineopdatering';

  @override
  String get fwupdStatusDownloading => 'En fil er ved at blive hentet';

  @override
  String get fwupdStatusDeviceRead => 'Læser fra en enhed';

  @override
  String get fwupdStatusDeviceErase => 'Sletter en enhed';

  @override
  String get fwupdStatusWaitingForAuth => 'Venter på godkendelse';

  @override
  String get fwupdStatusDeviceBusy => 'Enheden er optaget';

  @override
  String get fwupdStatusShutdown => 'Dæmonen er ved at lukke ned';

  @override
  String get guid => 'GUID\'er';

  @override
  String get installError => 'Kunne ikke installere firmware!';

  @override
  String get noDevicesFound => 'Ingen enheder fundet';

  @override
  String get ok => 'OK';

  @override
  String get olderVersions => 'Ældre versioner';

  @override
  String get rebootLater => 'Genstart senere';

  @override
  String get rebootNow => 'Genstart nu';

  @override
  String get rebootConfirmMessage => 'Du skal genstarte din enhed for at fuldføre opdateringen. Sikr dig, at din enhed er tilsluttet eller fuldt opladet. Gem dine filer, før du genstarter, for at undgå at miste data.';

  @override
  String get rebootConfirmTitle => 'Genstart for at fuldføre denne opdatering';

  @override
  String get reinstall => 'Geninstallér';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Geninstallér <b>$name</b> version <b>$current</b>?';
  }

  @override
  String get showReleases => 'Vis udgivelser';

  @override
  String get showUpdates => 'Vis opdateringer';

  @override
  String get update => 'Opdatér';

  @override
  String get updateAvailable => 'Opdatering tilgængelig';

  @override
  String get updateChecksums => 'Opdatér kontrolsummer';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Opdatér enhedskontrolsummer for <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo => 'Denne vil nedfælde nuværende kryptografiske kontrolsummer som godkendt.';

  @override
  String get updateToLatest => 'Opdatér til seneste';

  @override
  String updateConfirm(String name, String version) {
    return 'Opdatér <b>$name</b> til <b>$version</b>?';
  }

  @override
  String get vendor => 'Forhandler';

  @override
  String get verifyFirmware => 'Verificér firmware';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Verificér firmwarekontrolsummer for $name?';
  }

  @override
  String get currentVersion => 'Nuværende version';

  @override
  String get minVersion => 'Mindste version';

  @override
  String get latestVersion => 'Seneste version';
}
