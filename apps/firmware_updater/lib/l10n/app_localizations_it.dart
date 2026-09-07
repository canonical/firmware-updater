// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'Potresti perdere tutti i tuoi dati senza le chiavi di ripristino';

  @override
  String get affectsFdeWarningUbuntuFdeTitle =>
      'Potresti perdere tutti i tuoi dati senza le tue chiavi di ripristino';

  @override
  String get affectsFdeWarningOtherFdeBody =>
      'Assicurati di avere le chiavi di ripristino per tutti i tuoi dischi criptati. Potresti doverle inserire all\'avvio dopo un aggiornamento del firmware.';

  @override
  String get affectsFdeWarningUbuntuFdeBody =>
      'La criptazione a livello hardware è abilitata nel tuo computer. Potresti dover inserire la tua chiave di ripristino all\'avvio dopo un aggiornamento del firmware. Assicurati di avere anche le chiavi di ripristino per ogni altro disco criptato dentro questo computer.';

  @override
  String get affectsFdeWarningBitlockerBody =>
      'Bitlocker è abilitato nel tuo computer. Assicurati di avere anche le chiavi di ripristino per tutti i tuoi dischi criptati. Potresti doverle inserire all\'avvio dopo un aggiornamento del firmware.';

  @override
  String get affectsFdeCheckbox =>
      'Ho le chiavi di ripristino per tutti i miei dischi criptati';

  @override
  String get affectsFdeTextFieldLabel =>
      'Inserisci la tua chiave di ripristino';

  @override
  String get affectsFdeLinkLabel => 'Scopri di più';

  @override
  String get affectsFdeIncorrectKey =>
      'La chiave di ripristino non funziona, controllala o cambiala nel Centro per la Sicurezza';

  @override
  String get allVersions => 'Tutte le versioni';

  @override
  String get appTitle => 'Aggiornamento del firmware';

  @override
  String get batteryWarning =>
      'Avviso: alcuni aggiornamenti sono installabili solo quando si è collegati all\'alimentatore di corrente!';

  @override
  String get checksum => 'Controllo integrità';

  @override
  String get close => 'Chiudi';

  @override
  String get cancel => 'Annulla';

  @override
  String get current => 'Attuale';

  @override
  String get deviceUnavailable =>
      'Il dispositivo sarà inutilizzabile durante l\'aggiornamento.';

  @override
  String get deviceRequest => 'Dispositivo richiesto';

  @override
  String get downgrade => 'Downgrade';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Eseguire il downgrade di <b>$name</b> alla versione <b>$version</b>?';
  }

  @override
  String get flags => 'Segnali';

  @override
  String get fwupdDeviceFlagInternal => 'Dispositivo interno';

  @override
  String get fwupdDeviceFlagUpdatable => 'Aggiornabile';

  @override
  String get fwupdDeviceFlagOnlyOffline =>
      'L\'aggiornamento richiede un riavvio';

  @override
  String get fwupdDeviceFlagRequireAc =>
      'Il sistema necessita dell\'alimentazione esterna';

  @override
  String get fwupdDeviceFlagLocked => 'Il dispositivo è bloccato';

  @override
  String get fwupdDeviceFlagSupported => 'Supportato da un server remoto';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Richiede un bootloader';

  @override
  String get fwupdDeviceFlagRegistered => 'Registrato';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'Richiede un riavvio dopo l\'installazione';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'Richiede l\'arresto dopo l\'installazione';

  @override
  String get fwupdDeviceFlagReported => 'Segnalato al server remoto';

  @override
  String get fwupdDeviceFlagNotified => 'L\'utente è stato avvisato';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'Installa prima al dispositivo padre';

  @override
  String get fwupdDeviceFlagIsBootloader => 'E\' in modalità bootloader';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'L\'hardware è in attesa di essere ricollegato';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'Ignora la validazione dei controlli di sicurezza';

  @override
  String get fwupdDeviceFlagTrusted => 'Affidabile';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'L’aggiornamento del dispositivo richiede l’attivazione';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'Il dispositivo non ricomparirà dopo il completamento dell’aggiornamento';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'È disponibile la verifica con hash crittografico';

  @override
  String get fwupdDeviceFlagDualImage => 'Device stages updates';

  @override
  String get fwupdDeviceFlagSelfRecovery =>
      'Il dispositivo può ripristinarsi in caso di errori di flash';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'Il dispositivo è utilizzabile durante l’aggiornamento';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'È richiesta una verifica della versione per il firmware del dispositivo';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'Si richiede che il dispositivo installi tutti i rilasci forniti';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'Il dispositivo supporta il passaggio a un ramo diverso del firmware';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'Il dispositivo effettuerà un backup del firmware prima dell’installazione';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'Tutti i dispositivi dello stesso tipo verranno aggiornati contemporaneamente';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Sono ammessi solo aggiornamenti della versione';

  @override
  String get fwupdDeviceFlagUnreachable => 'Il dispositivo non è raggiungibile';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'I segreti della cifratura completa del disco potrebbero essere invalidati durante l\'aggiornamento';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Fine del ciclo di vita';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Payload firmato';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Payload non firmato';

  @override
  String get fwupdErrorInternal => 'Errore interno';

  @override
  String get fwupdErrorVersionNewer =>
      'Installata versione più recente del firmware';

  @override
  String get fwupdErrorVersionSame =>
      'Installata la stessa versione del firmware';

  @override
  String get fwupdErrorAlreadyPending =>
      'Già impostato per essere installato offline';

  @override
  String get fwupdErrorAuthFailed => 'Impossibile ottenere l’autenticazione';

  @override
  String get fwupdErrorRead => 'Impossibile leggere dal dispositivo';

  @override
  String get fwupdErrorWrite => 'Impossibile scrivere sul dispositivo';

  @override
  String get fwupdErrorInvalidFile => 'Formato del file non valido';

  @override
  String get fwupdErrorNotFound =>
      'Non esiste alcun dispositivo corrispondente';

  @override
  String get fwupdErrorNothingToDo => 'Niente da fare';

  @override
  String get fwupdErrorNotSupported => 'L’azione non era possibile';

  @override
  String get fwupdErrorSignatureInvalid => 'La firma non era valida';

  @override
  String get fwupdErrorAcPowerRequired =>
      'Era richiesta l’alimentazione di rete';

  @override
  String get fwupdErrorPermissionDenied => 'L’autorizzazione è stata rifiutata';

  @override
  String get fwupdErrorBrokenSystem =>
      'L’utente ha configurato il suo sistema in una maniera errata';

  @override
  String get fwupdErrorBatteryLevelTooLow =>
      'Il livello della batteria del sistema è troppo basso';

  @override
  String get fwupdErrorNeedsUserAction =>
      'L’utente deve effettuare un’operazione per completare l’aggiornamento';

  @override
  String get fwupdErrorAuthExpired =>
      'Impossibile ottenere l’autorizzazione perché le credenziali sono scadute';

  @override
  String get fwupdErrorUnknown => 'Errore sconosciuto';

  @override
  String get fwupdStatusUnknown => 'Stato sconosciuto';

  @override
  String get fwupdStatusIdle => 'Inattivo';

  @override
  String get fwupdStatusLoading => 'Caricamento di una risorsa';

  @override
  String get fwupdStatusDecompressing => 'Decompressione del firmware';

  @override
  String get fwupdStatusDeviceRestart => 'Riavvio del dispositivo';

  @override
  String get fwupdStatusDeviceWrite => 'Scrittura su un dispositivo';

  @override
  String get fwupdStatusDeviceVerify => 'Verifica (lettura) di un dispositivo';

  @override
  String get fwupdStatusScheduling =>
      'Pianificazione di un aggiornamento non in linea';

  @override
  String get fwupdStatusDownloading => 'Scaricamento di un file';

  @override
  String get fwupdStatusDeviceRead => 'Lettura da un dispositivo';

  @override
  String get fwupdStatusDeviceErase => 'Cancellazione di un dispositivo';

  @override
  String get fwupdStatusWaitingForAuth => 'In attesa dell’autenticazione';

  @override
  String get fwupdStatusDeviceBusy => 'Il dispositivo è occupato';

  @override
  String get fwupdStatusShutdown => 'Il demone si sta arrestando';

  @override
  String get guid => 'GUID';

  @override
  String get installError => 'Installazione del firmware fallita!';

  @override
  String get noDevicesFound => 'Nessun dispositivo trovato';

  @override
  String get ok => 'OK';

  @override
  String get olderVersions => 'Versioni precedenti';

  @override
  String get rebootLater => 'Riavvia più tardi';

  @override
  String get rebootNow => 'Riavvia adesso';

  @override
  String get rebootConfirmMessage =>
      'Devi riavviare il tuo dispositivo per completare l’aggiornamento. Assicurati che il tuo dispositivo sia collegato alla rete elettrica o sia completamente carico. Per evitare perdite di dati, salva i tuoi file prima di riavviare.';

  @override
  String get rebootConfirmTitle =>
      'Riavvia per completare questo aggiornamento';

  @override
  String get reinstall => 'Reinstalla';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Reinstallare <b>$name</b> versione <b>$current</b>?';
  }

  @override
  String get showReleases => 'Mostra le versioni';

  @override
  String get showUpdates => 'Mostra gli aggiornamenti';

  @override
  String get update => 'Aggiorna';

  @override
  String get updateAvailable => 'Aggiornamento disponibile';

  @override
  String get updateChecksums => 'Aggiorna i checksum';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Aggiornare i checksum del dispositivo <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo =>
      'Ciò registrerà gli hash crittografici correnti come verificati.';

  @override
  String get updateToLatest => 'Aggiorna alla versione più recente';

  @override
  String updateConfirm(String name, String version) {
    return 'Aggiornare <b>$name</b> alla versione <b>$version</b>?';
  }

  @override
  String get vendor => 'Fornitore';

  @override
  String get verifyFirmware => 'Verifica firmware';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Verificare i checksum del firmware di $name?';
  }

  @override
  String get currentVersion => 'Versione corrente';

  @override
  String get minVersion => 'Versione minima';

  @override
  String get latestVersion => 'Ultima versione';
}
