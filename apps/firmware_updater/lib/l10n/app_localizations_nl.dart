// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'Zonder herstelcodes kunt u al uw gegevens verliezen';

  @override
  String get affectsFdeWarningBody1 =>
      'Zorg ervoor dat u herstelcodes hebt voor al uw versleutelde schijven. Na het updaten van de firmware moet u deze bij het opstarten invoeren.';

  @override
  String get affectsFdeWarningBody2 =>
      'U hebt herstelcodes nodig omdat u hardwarematige versleuteling hebt ingeschakeld in Ubuntu of andere besturingssystemen op deze computer.';

  @override
  String get affectsFdeTextFieldLabel => 'Enter your recovery key';

  @override
  String get affectsFdeLinkLabel => 'Meer informatie';

  @override
  String get affectsFdeIncorrectKey =>
      'Recovery key does not work, check or replace it in the Security Center';

  @override
  String get allVersions => 'Alle Versies';

  @override
  String get appTitle => 'Firmware Updater';

  @override
  String get batteryWarning =>
      'Waarschuwing: sommige apparaatupdates zijn mogelijk alleen beschikbaar tijdens het opladen!';

  @override
  String get checksum => 'Checksom';

  @override
  String get close => 'Sluiten';

  @override
  String get cancel => 'Annuleren';

  @override
  String get current => 'Huidig';

  @override
  String get deviceUnavailable =>
      'Het apparaat zal niet bruikbaar zijn tijdens deze actie.';

  @override
  String get deviceRequest => 'Apparaatverzoek';

  @override
  String get downgrade => 'Downgrade';

  @override
  String downgradeConfirm(String name, String version) {
    return '<b>$name</b> downgraden naar versie <b>$version</b>?';
  }

  @override
  String get flags => 'Vlaggen';

  @override
  String get fwupdDeviceFlagInternal => 'Intern apparaat';

  @override
  String get fwupdDeviceFlagUpdatable => 'Updatebaar';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'Herstarten vereist voor update';

  @override
  String get fwupdDeviceFlagRequireAc =>
      'Systeem heeft externe voedingsbron nodig';

  @override
  String get fwupdDeviceFlagLocked => 'Apparaat is op slot';

  @override
  String get fwupdDeviceFlagSupported => 'Ondersteund op externe server';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Heeft bootloader nodig';

  @override
  String get fwupdDeviceFlagRegistered => 'Geregistreerd';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'Heropstarten vereist na installatie';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'Afsluiten vereist na installatie';

  @override
  String get fwupdDeviceFlagReported => 'Gerapporteerd aan externe server';

  @override
  String get fwupdDeviceFlagNotified => 'Gebruiker werd op de hoogte gesteld';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'Installeer eerst op het moederapparaat';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Is in bootloadermodus';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'Hardware wacht op nieuwe aansluiting';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'Negeer validatie veiligheidscontroles';

  @override
  String get fwupdDeviceFlagTrusted => 'Vertrouwd';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'Apparaatupdate heeft activatie nodig';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'Apparaat zal niet opnieuw getoond worden nadat de update voltooid';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'Cryptografische hash verificatie is beschikbaar';

  @override
  String get fwupdDeviceFlagDualImage =>
      'Apparaat bereidt zich voor op updates';

  @override
  String get fwupdDeviceFlagSelfRecovery =>
      'Apparaat kan flashfouten herstellen';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'Apparaat is bruikbaar tijdens het installeren van de update';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'Apparaat firmware is nodig om een versiecheck te doen';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'Apparaat moet alle verstrekte versies te installeren';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'Apparaat ondersteunt wisselen naar een andere tak van de firmware';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'Apparaat zal de firmware back-uppen voor het installeren';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'Alle apparaten van hetzelfde type zullen op hetzelfde moment geüpdatet worden';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Enkel versie-upgrades zijn toegestaan';

  @override
  String get fwupdDeviceFlagUnreachable => 'Apparaat is onbereikbaar';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Volledige schijnencryptiegeheimen kunnen geïnvalideerd worden tijdens het updaten';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Wordt niet meer geüpdatet';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Ondertekende Payload';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Niet-ondertekende Payload';

  @override
  String get fwupdErrorInternal => 'Interne fout';

  @override
  String get fwupdErrorVersionNewer => 'Nieuwere firmwareversie geïnstalleerd';

  @override
  String get fwupdErrorVersionSame => 'Dezelfde firmwareversie geïnstalleerd';

  @override
  String get fwupdErrorAlreadyPending => 'Staat al op offline-installatie';

  @override
  String get fwupdErrorAuthFailed => 'Authentificatie mislukt';

  @override
  String get fwupdErrorRead => 'Lezen van het apparaat mislukt';

  @override
  String get fwupdErrorWrite => 'Schrijven naar het apparaat mislukt';

  @override
  String get fwupdErrorInvalidFile => 'Ongeldig bestandstype';

  @override
  String get fwupdErrorNotFound => 'Geen overeenstemmend apparaat gevonden';

  @override
  String get fwupdErrorNothingToDo => 'Niets te doen';

  @override
  String get fwupdErrorNotSupported => 'Actie was onmogelijk';

  @override
  String get fwupdErrorSignatureInvalid => 'Handtekening was niet geldig';

  @override
  String get fwupdErrorAcPowerRequired => 'Netvoeding was vereist';

  @override
  String get fwupdErrorPermissionDenied => 'Toestemmingsaanvraag afgewezen';

  @override
  String get fwupdErrorBrokenSystem =>
      'Gebruiker heeft het systeem geconfigureerd op een ongeldige wijze';

  @override
  String get fwupdErrorBatteryLevelTooLow =>
      'Te weinig batterijduur beschikbaar';

  @override
  String get fwupdErrorNeedsUserAction =>
      'Gebruiker moet een actie doen om de update te doen voltooien';

  @override
  String get fwupdErrorAuthExpired =>
      'Authentificatie mislukt door vervallen credentials';

  @override
  String get fwupdErrorUnknown => 'Onbekende fout';

  @override
  String get fwupdStatusUnknown => 'Onbekende status';

  @override
  String get fwupdStatusIdle => 'Inactief';

  @override
  String get fwupdStatusLoading => 'Een resource aan het laden';

  @override
  String get fwupdStatusDecompressing => 'Firmware aan het ontzippen';

  @override
  String get fwupdStatusDeviceRestart => 'Het apparaat aan het herstarten';

  @override
  String get fwupdStatusDeviceWrite => 'Naar een apparaat aan het schrijven';

  @override
  String get fwupdStatusDeviceVerify =>
      'Een apparaat aan het verifiëren (uitlezen)';

  @override
  String get fwupdStatusScheduling => 'Een offline-update aan het inplannen';

  @override
  String get fwupdStatusDownloading => 'Een bestand wordt gedownload';

  @override
  String get fwupdStatusDeviceRead => 'Er wordt van een apparaat gelezen';

  @override
  String get fwupdStatusDeviceErase => 'Een apparaat wordt gewist';

  @override
  String get fwupdStatusWaitingForAuth => 'Aan het wachten op authentificatie';

  @override
  String get fwupdStatusDeviceBusy => 'Het apparaat is bezig';

  @override
  String get fwupdStatusShutdown => 'De deamon is aan het afsluiten';

  @override
  String get guid => 'GUID\'s';

  @override
  String get installError => 'Het installeren van de firmware is mislukt!';

  @override
  String get noDevicesFound => 'Geen apparaten gevonden';

  @override
  String get ok => 'OK';

  @override
  String get olderVersions => 'Oudere Versies';

  @override
  String get rebootLater => 'Later herstarten';

  @override
  String get rebootNow => 'Nu herstarten';

  @override
  String get rebootConfirmMessage =>
      'Het apparaat moet herstart worden om de update te voltooien. Zorg ervoor dat het apparaat insteekt of volledig opgeladen is. Sla uw bestanden op voor het herstarten om geen data te verliezen.';

  @override
  String get rebootConfirmTitle => 'Herstart om de update te voltooien';

  @override
  String get reinstall => 'Herinstalleren';

  @override
  String reinstallConfirm(String name, String current) {
    return '<b>$name</b> versie <b>$current</b> opnieuw installeren?';
  }

  @override
  String get showReleases => 'Toon Releases';

  @override
  String get showUpdates => 'Toon Updates';

  @override
  String get update => 'Update';

  @override
  String get updateAvailable => 'Update beschikbaar';

  @override
  String get updateChecksums => 'Update Checksommen';

  @override
  String updateChecksumsConfirm(String name) {
    return 'De checksommen van <b>$name</b> updaten?';
  }

  @override
  String get updateChecksumsInfo =>
      'Dit zal de huidige cryptografische hashes als geverifieerd opnemen.';

  @override
  String get updateToLatest => 'Naar de Nieuwste Versie Updaten';

  @override
  String updateConfirm(String name, String version) {
    return '<b>$name</b> bijwerken naar versie <b>$version</b>?';
  }

  @override
  String get vendor => 'Leverancier';

  @override
  String get verifyFirmware => 'Firmware Verifiëren';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Firmware checksommen van $name verifiëren?';
  }

  @override
  String get currentVersion => 'Huidige Versie';

  @override
  String get minVersion => 'Minimale Versie';

  @override
  String get latestVersion => 'Laatste Versie';
}
