// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'Podeu perdre totes les dades sense claus de recuperació';

  @override
  String get affectsFdeWarningUbuntuFdeTitle =>
      'You may lose all your data without your recovery key';

  @override
  String get affectsFdeWarningOtherFdeBody =>
      'Make sure you have recovery keys for all encrypted disks. You might need to enter them on boot after updating firmware.';

  @override
  String get affectsFdeWarningUbuntuFdeBody =>
      'Hardware-backed encryption is enabled on your computer. You may need to enter your recovery key on boot after updating firmware. Make sure you also have recovery keys for any other encrypted disks on this computer.';

  @override
  String get affectsFdeWarningBitlockerBody =>
      'BitLocker is enabled on your computer. Make sure you have recovery keys for all encrypted disks. You might need to enter them on boot after updating firmware.';

  @override
  String get affectsFdeCheckbox =>
      'Tinc claus de recuperació per a totes les meves unitats xifrades';

  @override
  String get affectsFdeTextFieldLabel => 'Enter your recovery key';

  @override
  String get affectsFdeLinkLabel => 'Sabeu més';

  @override
  String get affectsFdeIncorrectKey =>
      'Recovery key does not work, check or replace it in the Security Center';

  @override
  String get allVersions => 'Totes les versions';

  @override
  String get appTitle => 'Actualitzador del firmware';

  @override
  String get batteryWarning =>
      'Advertiment: algunes actualitzacions de dispositiu potser sols estan disponibles amb alimentació externa.';

  @override
  String get checksum => 'Suma de comprovació';

  @override
  String get close => 'Tanca';

  @override
  String get cancel => 'Cancel·la';

  @override
  String get current => 'Actual';

  @override
  String get deviceUnavailable =>
      'El dispositiu no estarà disponible durant aquesta acció.';

  @override
  String get deviceRequest => 'Sol·licitud de dispositiu';

  @override
  String get downgrade => 'Desactualitza';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Voleu desactualitzar <b>$name</b> a <b>$version</b>?';
  }

  @override
  String get flags => 'Indicadors';

  @override
  String get fwupdDeviceFlagInternal => 'Dispositiu intern';

  @override
  String get fwupdDeviceFlagUpdatable => 'Actualitzable';

  @override
  String get fwupdDeviceFlagOnlyOffline =>
      'L\'actualització requereix un reinici';

  @override
  String get fwupdDeviceFlagRequireAc =>
      'El sistema requereix una font d\'alimentació externa';

  @override
  String get fwupdDeviceFlagLocked => 'El dispositiu està bloquejat';

  @override
  String get fwupdDeviceFlagSupported => 'Admès al servidor remot';

  @override
  String get fwupdDeviceFlagNeedsBootloader =>
      'Requereix un carregador d\'arrencada';

  @override
  String get fwupdDeviceFlagRegistered => 'Registrat';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'Cal un reinici després de la instal·lació';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'Cal apagar després de la instal·lació';

  @override
  String get fwupdDeviceFlagReported => 'S\'ha informat al servidor remot';

  @override
  String get fwupdDeviceFlagNotified => 'L\'usuari ha sigut notificat';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'Instal·la primer al dispositiu pare';

  @override
  String get fwupdDeviceFlagIsBootloader =>
      'Està en mode carregador d\'arrancada';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'El maquinari està esperant a ser reconnectat';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'Ignora les comprovacions de validacions de seguretat';

  @override
  String get fwupdDeviceFlagTrusted => 'Confiable';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'L\'actualització del dispositiu necessita activació';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'El dispositiu no tornarà a aparèixer després que l\'actualització s\'hagi completat';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'La verificació de suma criptogràfica està disponible';

  @override
  String get fwupdDeviceFlagDualImage =>
      'El dispositiu fa les actualitzacions per fases';

  @override
  String get fwupdDeviceFlagSelfRecovery =>
      'El dispositiu pot recuperar-se de fallades d\'instal·lació';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'El dispositiu pot usar-se durant l\'actualització';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'Cal verificar la versió del firmware del dispositiu';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'Es requereix que el dispositiu instal·li totes les versions proporcionades';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'El dispositiu suporta el canvi a diferents branques del firmware';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'El dispositiu farà una còpia de seguretat del firmware bans de la instal·lació';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'Tots els dispositius del mateix tipus seran actualitzats a la vegada';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Sol es permeten les actualitzacions de versió';

  @override
  String get fwupdDeviceFlagUnreachable => 'No es pot accedir al dispositiu';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Les claus de xifratge complet de disc podrien invalidar-se en actualitzar';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Fi de vida útil';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Càrrega útil signada';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Càrrega útil no signada';

  @override
  String get fwupdErrorInternal => 'Error intern';

  @override
  String get fwupdErrorVersionNewer =>
      'S\'ha instal·lat una versió més recent del firmware';

  @override
  String get fwupdErrorVersionSame =>
      'S\'ha instal·lat la mateixa versió del firmware';

  @override
  String get fwupdErrorAlreadyPending =>
      'Ja s\'ha establert la instal·lació fora de línia';

  @override
  String get fwupdErrorAuthFailed => 'No s\'ha pogut obtenir l\'autenticació';

  @override
  String get fwupdErrorRead => 'No s\'ha pogut llegir del dispositiu';

  @override
  String get fwupdErrorWrite => 'No s\'ha pogut escriure en el dispositiu';

  @override
  String get fwupdErrorInvalidFile => 'El format de fitxer no és vàlid';

  @override
  String get fwupdErrorNotFound => 'No existeix cap dispositiu que concordi';

  @override
  String get fwupdErrorNothingToDo => 'Res a fer';

  @override
  String get fwupdErrorNotSupported => 'L\'acció no era possible';

  @override
  String get fwupdErrorSignatureInvalid => 'La signatura no era vàlida';

  @override
  String get fwupdErrorAcPowerRequired => 'Es requeria alimentació CA';

  @override
  String get fwupdErrorPermissionDenied => 'S\'ha denegat el permís';

  @override
  String get fwupdErrorBrokenSystem =>
      'L\'usuari ha configurat el sistema d\'una manera errònia';

  @override
  String get fwupdErrorBatteryLevelTooLow =>
      'El nivell de bateria del sistema és massa baix';

  @override
  String get fwupdErrorNeedsUserAction =>
      'L\'usuari ha mester de fer una acció per completar l\'actualització';

  @override
  String get fwupdErrorAuthExpired =>
      'No s\'ha pogut autenticar perquè les credencials han expirat';

  @override
  String get fwupdErrorUnknown => 'Error desconegut';

  @override
  String get fwupdStatusUnknown => 'Estat desconegut';

  @override
  String get fwupdStatusIdle => 'Inactiu';

  @override
  String get fwupdStatusLoading => 'Carregant un recurs';

  @override
  String get fwupdStatusDecompressing => 'S\'està descomprimint el firmware';

  @override
  String get fwupdStatusDeviceRestart => 'Reiniciant el dispositiu';

  @override
  String get fwupdStatusDeviceWrite => 'Escrivint en un dispositiu';

  @override
  String get fwupdStatusDeviceVerify =>
      'S\'està verificant (llegint) un dispositiu';

  @override
  String get fwupdStatusScheduling => 'Programant una actualització fora línia';

  @override
  String get fwupdStatusDownloading => 'L\'arxiu s\'està descarregant';

  @override
  String get fwupdStatusDeviceRead => 'Llegint des d\'un dispositiu';

  @override
  String get fwupdStatusDeviceErase => 'Esborrant un dispositiu';

  @override
  String get fwupdStatusWaitingForAuth => 'S\'està esperant l\'autenticació';

  @override
  String get fwupdStatusDeviceBusy => 'El dispositiu està ocupat';

  @override
  String get fwupdStatusShutdown => 'S\'està apagant el dimoni';

  @override
  String get guid => 'GUID';

  @override
  String get installError => 'No s\'ha pogut instal·lar el firmware.';

  @override
  String get noDevicesFound => 'No s\'ha trobat cap dispositiu';

  @override
  String get ok => 'D\'acord';

  @override
  String get olderVersions => 'Versions antigues';

  @override
  String get rebootLater => 'Reinicia més tard';

  @override
  String get rebootNow => 'Reinicia ara';

  @override
  String get rebootConfirmMessage =>
      'Heu de reiniciar el dispositiu per completar l\'actualització. Assegureu-vos que el dispositiu està endollat o completament carregat. Deseu els vostres fitxers abans de reiniciar per evitar la pèrdua de dades.';

  @override
  String get rebootConfirmTitle => 'Reinicia per completar l\'actualització';

  @override
  String get reinstall => 'Reinstal·lar';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Voleu reinstal·lar <b>$name</b>, versió <b>$current</b>?';
  }

  @override
  String get showReleases => 'Mostra els alliberaments';

  @override
  String get showUpdates => 'Mostra actualitzacións';

  @override
  String get update => 'Actualitza';

  @override
  String get updateAvailable => 'Actualització disponible';

  @override
  String get updateChecksums => 'Actualitza les sumes de comprovació';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Voleu actualitzar les sumes de comprovació de dispositiu de <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo =>
      'Això enregistrarà les sumes criptogràfiques actuals com a verificades.';

  @override
  String get updateToLatest => 'Actualitza a l\'última versió';

  @override
  String updateConfirm(String name, String version) {
    return 'Actualitza <b>$name</b> a la versió <b>$version</b>?';
  }

  @override
  String get vendor => 'Fabricant';

  @override
  String get verifyFirmware => 'Verifica el firmware';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Voleu verificar les sumes de comprovació de firmware de $name?';
  }

  @override
  String get currentVersion => 'Versió actual';

  @override
  String get minVersion => 'Versió mínima';

  @override
  String get latestVersion => 'Última versió';
}
