// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Occitan (`oc`).
class AppLocalizationsOc extends AppLocalizations {
  AppLocalizationsOc([String locale = 'oc']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'Poiriatz pèrdre totas vòstras donadas sens clau de recuperacion';

  @override
  String get affectsFdeWarningCheckboxBody1 =>
      'Make sure you have recovery keys for all your encrypted drives. You will need to enter them on boot after updating firmware.';

  @override
  String get affectsFdeWarningCheckboxBody2 =>
      'You need recovery keys because you have enabled hardware-backed encryption in Ubuntu or other operating systems on this computer.';

  @override
  String get affectsFdeWarningPassphraseBody1 =>
      'You may need to enter it on boot after updating firmware. Make sure you also have recovery keys for any other encrypted drives on this computer.';

  @override
  String get affectsFdeWarningPassphraseBody2 =>
      'You need to provide a recovery key because you enabled hardware-backed encryption.';

  @override
  String get affectsFdeCheckbox =>
      'Ai las claus de recuperacion per totes mos disques chifras';

  @override
  String get affectsFdeTextFieldLabel => 'Enter your recovery key';

  @override
  String get affectsFdeLinkLabel => 'Ne saber mai';

  @override
  String get affectsFdeIncorrectKey =>
      'Recovery key does not work, check or replace it in the Security Center';

  @override
  String get allVersions => 'Totas las versions';

  @override
  String get appTitle => 'Actualizador de micrologicial';

  @override
  String get batteryWarning =>
      'Atencion : d’unas mesas a jorn de periferic pòdon èsser disponiblas sonque sus alimentacion extèrna !';

  @override
  String get checksum => 'Soma de contraròtle';

  @override
  String get close => 'Tampar';

  @override
  String get cancel => 'Anullar';

  @override
  String get current => 'Actual';

  @override
  String get deviceUnavailable =>
      'Aqueste periferic serà indisponible pendent aquesta accion.';

  @override
  String get deviceRequest => 'Requèsta de periferic';

  @override
  String get downgrade => 'Installar una version anteriora';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Tornar <b>$name</b> a la version <b>$version</b> ?';
  }

  @override
  String get flags => 'Atribuits';

  @override
  String get fwupdDeviceFlagInternal => 'Periferic intèrn';

  @override
  String get fwupdDeviceFlagUpdatable => 'Actualizable';

  @override
  String get fwupdDeviceFlagOnlyOffline =>
      'La mesa a jorn requerís una reaviada';

  @override
  String get fwupdDeviceFlagRequireAc =>
      'Lo sistèma requerís una font d’alimentacion extèrna';

  @override
  String get fwupdDeviceFlagLocked => 'Lo periferic es verrolhat';

  @override
  String get fwupdDeviceFlagSupported => 'Pres en carga sul servidor distant';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Requerís un cargador d’aviada';

  @override
  String get fwupdDeviceFlagRegistered => 'Enregistrat';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'Requerís una reaviada aprèp installacion';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'Requerís una extincion aprèp installacion';

  @override
  String get fwupdDeviceFlagReported => 'Senhalat al servidor distant';

  @override
  String get fwupdDeviceFlagNotified => 'Utilizaire notificat';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'Installar sul periferic parent primièr';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Es en mòde cargador d’aviada';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'Lo material espèra d’èsser rebrancat';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'Ignorar los contraròtles de seguretat de la validacion';

  @override
  String get fwupdDeviceFlagTrusted => 'Fisable';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'La mesa a jorn del periferic requerís una activacion';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'Lo periferic tornarà pas aparéisser aprèp la fin de l’actualizacion';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'La verificacion de soma de contraròtle criptografica es disponibla';

  @override
  String get fwupdDeviceFlagDualImage =>
      'Lo periferic organiza las mesas a jorn';

  @override
  String get fwupdDeviceFlagSelfRecovery =>
      'Se pòt recuperar lo periferic en cas d’avaria de flashatge';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'Se pòt utilizar lo periferic pendent la mesa a jorn';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'Lo micrologicial del periferic requerís una verificacion de version';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'Lo periferic es requerís per installar totas las versions provesidas';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'Lo periferic pren en carga lo passatge a una autra branca de micrologicial';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'Lo periferic salvagardarà lo micrologicial abans l’installacion';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'Totes los periferics del meteis tipe serà meses a jorn a l’encòp';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Solament las versions mai recentas son autorizadas';

  @override
  String get fwupdDeviceFlagUnreachable => 'Lo periferic es inacessible';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Las claus de chiframent complèt del disc se poirián invalidar en metent a jorn';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Fin de vida';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Carga utila signada';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Carga utila non signada';

  @override
  String get fwupdErrorInternal => 'Error intèrna';

  @override
  String get fwupdErrorVersionNewer =>
      'Version del micrologicial mai recent installat';

  @override
  String get fwupdErrorVersionSame =>
      'Meteissa version del micrologicial installada';

  @override
  String get fwupdErrorAlreadyPending =>
      'Ja configurat per èsser installat fòra linha';

  @override
  String get fwupdErrorAuthFailed =>
      'Fracàs de l’obtencion de l’autentificacion';

  @override
  String get fwupdErrorRead => 'Fracàs de la lectura del periferic estant';

  @override
  String get fwupdErrorWrite => 'Fracàs de l’escritura sul periferic';

  @override
  String get fwupdErrorInvalidFile => 'Format de fichièr invalid';

  @override
  String get fwupdErrorNotFound => 'Cap de periferic correspondent existís pas';

  @override
  String get fwupdErrorNothingToDo => 'Res a far';

  @override
  String get fwupdErrorNotSupported => 'L’accion èra pas possibla';

  @override
  String get fwupdErrorSignatureInvalid => 'La signatura èra invalida';

  @override
  String get fwupdErrorAcPowerRequired => 'Alimentacion extèrna requerida';

  @override
  String get fwupdErrorPermissionDenied =>
      'L’autorizacion es pas estada donada';

  @override
  String get fwupdErrorBrokenSystem =>
      'Un utilizaire configurèt lo sistèma d’un biais erronèu';

  @override
  String get fwupdErrorBatteryLevelTooLow =>
      'Lo nivèl de batariá sistèma es tròp bas';

  @override
  String get fwupdErrorNeedsUserAction =>
      'L’utilizaire a mestièr de far una accion per terminar la mesa a jorn';

  @override
  String get fwupdErrorAuthExpired =>
      'Fracàs de l’obtencion d’autentificacion a causa d’identificants expirats';

  @override
  String get fwupdErrorUnknown => 'Error desconeguda';

  @override
  String get fwupdStatusUnknown => 'Estat desconegut';

  @override
  String get fwupdStatusIdle => 'Inactiu';

  @override
  String get fwupdStatusLoading => 'Carga una ressorsa';

  @override
  String get fwupdStatusDecompressing => 'Descompression micrologicial';

  @override
  String get fwupdStatusDeviceRestart => 'Reaviada del periferic';

  @override
  String get fwupdStatusDeviceWrite => 'Escritura sul periferic';

  @override
  String get fwupdStatusDeviceVerify => 'Verificacion (lectura) d’un periferic';

  @override
  String get fwupdStatusScheduling =>
      'Planificacion d’una mesa a jorn fòra linha';

  @override
  String get fwupdStatusDownloading => 'Telecargament d’un fichièr';

  @override
  String get fwupdStatusDeviceRead => 'Lectura d’un periferic estant';

  @override
  String get fwupdStatusDeviceErase => 'Escafament d’un periferic';

  @override
  String get fwupdStatusWaitingForAuth => 'En espèra d’autentificacion';

  @override
  String get fwupdStatusDeviceBusy => 'Lo periferic es ocupat';

  @override
  String get fwupdStatusShutdown => 'Lo demòni s’arrèsta';

  @override
  String get guid => 'GUID';

  @override
  String get installError => 'Fracàs de l’installacion del micrologicial !';

  @override
  String get noDevicesFound => 'Cap de periferic pas trobat';

  @override
  String get ok => 'Validar';

  @override
  String get olderVersions => 'Versions mai ancianas';

  @override
  String get rebootLater => 'Reaviar mai tard';

  @override
  String get rebootNow => 'Reaviar ara';

  @override
  String get rebootConfirmMessage =>
      'Vos cal reaviar vòstre periferic per completar la mesa a jorn. Asseguratz-vos que vòstre periferic es brancat o complètament cargat. Enregistratz vòstres fichièrs abans de lo reaviar per evitar de pèrdre de donadas.';

  @override
  String get rebootConfirmTitle => 'Reaviatz per terminar aquesta mesa a jorn';

  @override
  String get reinstall => 'Reïnstallar';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Tornar installar <b>$name</b> version <b>$current</b> ?';
  }

  @override
  String get showReleases => 'Afichar las versions';

  @override
  String get showUpdates => 'Afichar las mesas a jorn';

  @override
  String get update => 'Metre a jorn';

  @override
  String get updateAvailable => 'Mesa a jorn disponibla';

  @override
  String get updateChecksums => 'Actualizar las somas de contraròtle';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Actualizar las somas de contraròtle del periferic <b>$name</b> ?';
  }

  @override
  String get updateChecksumsInfo =>
      'Aquò salvarà las somas criptograficas actualas coma verificadas.';

  @override
  String get updateToLatest => 'Metre a jorn a la mai recenta';

  @override
  String updateConfirm(String name, String version) {
    return 'Metre a jorn <b>$name</b> a la version <b>$version</b> ?';
  }

  @override
  String get vendor => 'Vendeire';

  @override
  String get verifyFirmware => 'Verificar lo micrologicial';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Verificar la soma de contraròtle del micrologicial nomenat $name ?';
  }

  @override
  String get currentVersion => 'Version actuala';

  @override
  String get minVersion => 'Version minimala';

  @override
  String get latestVersion => 'Darrièra version';
}
