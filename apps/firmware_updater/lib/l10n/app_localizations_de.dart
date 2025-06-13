// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get affectsFdeWarningTitle => 'Ohne Wiederherstellungsschlüssel können Sie alle Ihre Daten verlieren';

  @override
  String get affectsFdeWarningBody1 => 'Stellen Sie sicher, dass Sie Wiederherstellungsschlüssel für alle verschlüsselten Laufwerke haben. Sie müssen diese beim Hochfahren nach der Aktualisierung der Firmware eingeben.';

  @override
  String get affectsFdeWarningBody2 => 'Sie benötigen Wiederherstellungsschlüssel, weil Sie die hardwaregestützte Verschlüsselung in Ubuntu oder anderen Betriebssystemen auf diesem Computer aktiviert haben.';

  @override
  String get affectsFdeTextFieldLabel => 'Enter your recovery key';

  @override
  String get affectsFdeLinkLabel => 'Mehr erfahren';

  @override
  String get affectsFdeIncorrectKey => 'Recovery key does not work, check or replace it in the Security Center';

  @override
  String get allVersions => 'Alle Versionen';

  @override
  String get appTitle => 'Firmware-Aktualisierungsprogramm';

  @override
  String get batteryWarning => 'Warnung: manche Geräteaktualisierungen sind möglicherweise nur bei externer Stromversorgung verfügbar!';

  @override
  String get checksum => 'Prüfsumme';

  @override
  String get close => 'Schließen';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get current => 'Aktuell';

  @override
  String get deviceUnavailable => 'Das Gerät ist während dieser Aktion nicht verfügbar.';

  @override
  String get deviceRequest => 'Geräteanforderung';

  @override
  String get downgrade => 'Herabstufen';

  @override
  String downgradeConfirm(String name, String version) {
    return '<b>$name</b> auf Version <b>$version</b> herabstufen?';
  }

  @override
  String get flags => 'Bitschalter';

  @override
  String get fwupdDeviceFlagInternal => 'Internes Gerät';

  @override
  String get fwupdDeviceFlagUpdatable => 'Aktualisierbar';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'Aktualisierung erfordert einen Neustart';

  @override
  String get fwupdDeviceFlagRequireAc => 'System erfordert externe Stromquelle';

  @override
  String get fwupdDeviceFlagLocked => 'Gerät ist gesperrt';

  @override
  String get fwupdDeviceFlagSupported => 'Unterstützt auf entferntem Server';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Erfordert einen Bootloader';

  @override
  String get fwupdDeviceFlagRegistered => 'Registriert';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'Erfordert einen Neustart nach der Installation';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'Erfordert das Herunterfahren nach der Installation';

  @override
  String get fwupdDeviceFlagReported => 'An den entfernten Server gemeldet';

  @override
  String get fwupdDeviceFlagNotified => 'Benutzer wurde benachrichtigt';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'Zuerst auf dem übergeordneten Gerät installieren';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Befindet sich im Bootloader-Modus';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'Die Hardware wartet darauf, neu angeschlossen zu werden';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'Validierungssicherheitsprüfungen ignorieren';

  @override
  String get fwupdDeviceFlagTrusted => 'Vertrauenswürdig';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'Geräteaktualisierung erfordert Aktivierung';

  @override
  String get fwupdDeviceFlagWillDisappear => 'Das Gerät wird nach Abschluss der Aktualisierung nicht wieder angezeigt';

  @override
  String get fwupdDeviceFlagCanVerify => 'Kryptografische Hash-Verifizierung ist verfügbar';

  @override
  String get fwupdDeviceFlagDualImage => 'Das Gerät wird aktualisiert';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'Gerät kann Flash-Fehler beheben';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => 'Gerät ist während der Dauer der Aktualisierung nutzbar';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => 'Gerätefirmware muss eine Versionsprüfung haben';

  @override
  String get fwupdDeviceFlagInstallAllReleases => 'Gerät ist erforderlich, um alle bereitgestellten Versionen zu installieren';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => 'Gerät unterstützt den Wechsel zu einem anderen Zweig der Firmware';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => 'Gerät sichert die Firmware vor der Installation';

  @override
  String get fwupdDeviceFlagWildcardInstall => 'Alle Geräte desselben Typs werden zur gleichen Zeit aktualisiert';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => 'Nur Versionshochstufungen sind erlaubt';

  @override
  String get fwupdDeviceFlagUnreachable => 'Gerät ist nicht erreichbar';

  @override
  String get fwupdDeviceFlagAffectsFde => 'Die Geheimnisse der Festplattenverschlüsselung können bei der Aktualisierung ungültig werden';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Lebensende';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Signierte Nutzdaten';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Nicht signierte Nutzdaten';

  @override
  String get fwupdErrorInternal => 'Interner Fehler';

  @override
  String get fwupdErrorVersionNewer => 'Neuere Firmware-Version installiert';

  @override
  String get fwupdErrorVersionSame => 'Gleiche Firmware-Version installiert';

  @override
  String get fwupdErrorAlreadyPending => 'Bereits zur Offline-Installation vorgesehen';

  @override
  String get fwupdErrorAuthFailed => 'Authentifizierung fehlgeschlagen';

  @override
  String get fwupdErrorRead => 'Lesen vom Gerät fehlgeschlagen';

  @override
  String get fwupdErrorWrite => 'Schreiben auf das Gerät fehlgeschlagen';

  @override
  String get fwupdErrorInvalidFile => 'Ungültiges Dateiformat';

  @override
  String get fwupdErrorNotFound => 'Kein passendes Gerät vorhanden';

  @override
  String get fwupdErrorNothingToDo => 'Nichts zu tun';

  @override
  String get fwupdErrorNotSupported => 'Aktion war nicht möglich';

  @override
  String get fwupdErrorSignatureInvalid => 'Signatur war ungültig';

  @override
  String get fwupdErrorAcPowerRequired => 'Netzstrom war erforderlich';

  @override
  String get fwupdErrorPermissionDenied => 'Berechtigung wurde verweigert';

  @override
  String get fwupdErrorBrokenSystem => 'Der Benutzer hat sein System fehlerhaft konfiguriert';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'Der Akkustand des Systems ist zu niedrig';

  @override
  String get fwupdErrorNeedsUserAction => 'Der Benutzer muss eine Aktion durchführen, um die Aktualisierung abzuschließen';

  @override
  String get fwupdErrorAuthExpired => 'Autorisierung fehlgeschlagen, da die Anmeldedaten abgelaufen sind';

  @override
  String get fwupdErrorUnknown => 'Unbekannter Fehler';

  @override
  String get fwupdStatusUnknown => 'Unbekannter Status';

  @override
  String get fwupdStatusIdle => 'Untätig';

  @override
  String get fwupdStatusLoading => 'Ressource wird geladen';

  @override
  String get fwupdStatusDecompressing => 'Firmware wird dekomprimiert';

  @override
  String get fwupdStatusDeviceRestart => 'Gerät wird neu gestartet';

  @override
  String get fwupdStatusDeviceWrite => 'Auf ein Gerät wird geschrieben';

  @override
  String get fwupdStatusDeviceVerify => 'Gerät wird verifiziert (gelesen)';

  @override
  String get fwupdStatusScheduling => 'Offline-Aktualisierung wird geplant';

  @override
  String get fwupdStatusDownloading => 'Eine Datei wird heruntergeladen';

  @override
  String get fwupdStatusDeviceRead => 'Von einem Gerät wird gelesen';

  @override
  String get fwupdStatusDeviceErase => 'Gerät wird gelöscht';

  @override
  String get fwupdStatusWaitingForAuth => 'Auf Authentifizierung wird gewartet';

  @override
  String get fwupdStatusDeviceBusy => 'Das Gerät ist beschäftigt';

  @override
  String get fwupdStatusShutdown => 'Der Daemon wird heruntergefahren';

  @override
  String get guid => 'GUIDs';

  @override
  String get installError => 'Firmware konnte nicht installiert werden!';

  @override
  String get noDevicesFound => 'Keine Geräte gefunden';

  @override
  String get ok => 'OK';

  @override
  String get olderVersions => 'Ältere Versionen';

  @override
  String get rebootLater => 'Später neu starten';

  @override
  String get rebootNow => 'Jetzt neu starten';

  @override
  String get rebootConfirmMessage => 'Sie müssen Ihr Gerät neu starten, um die Aktualisierung abzuschließen. Vergewissern Sie sich, dass Ihr Gerät an das Stromnetz angeschlossen oder vollständig aufgeladen ist. Speichern Sie Ihre Dateien vor dem Neustart, um Datenverluste zu vermeiden.';

  @override
  String get rebootConfirmTitle => 'Zum Abschließen dieser Aktualisierung neu starten';

  @override
  String get reinstall => 'Neu installieren';

  @override
  String reinstallConfirm(String name, String current) {
    return '<b>$name</b> Version <b>$current</b> neu installieren?';
  }

  @override
  String get showReleases => 'Veröffentlichungen anzeigen';

  @override
  String get showUpdates => 'Aktualisierungen anzeigen';

  @override
  String get update => 'Aktualisierung';

  @override
  String get updateAvailable => 'Aktualisierung verfügbar';

  @override
  String get updateChecksums => 'Prüfsummen aktualisieren';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Geräteprüfsummen von <b>$name</b> aktualisieren?';
  }

  @override
  String get updateChecksumsInfo => 'Damit werden die aktuellen kryptografischen Hashwerte als verifiziert festgehalten.';

  @override
  String get updateToLatest => 'Auf den neuesten Stand aktualisieren';

  @override
  String updateConfirm(String name, String version) {
    return '<b>$name</b> auf Version <b>$version</b> aktualisieren?';
  }

  @override
  String get vendor => 'Anbieter';

  @override
  String get verifyFirmware => 'Firmware verifizieren';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Firmware-Prüfsummen von $name verifizieren?';
  }

  @override
  String get currentVersion => 'Aktuelle Version';

  @override
  String get minVersion => 'Mindestversion';

  @override
  String get latestVersion => 'Neueste Version';
}
