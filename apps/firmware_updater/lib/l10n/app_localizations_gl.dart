// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'Poder perder todos os seus datos sen a chave de recuperación';

  @override
  String get affectsFdeWarningUbuntuFdeTitle =>
      'Podes perder todos os teus datos se non tes a chave de recuperación';

  @override
  String get affectsFdeWarningOtherFdeBody =>
      'Asegúrese de que ten chaves de recuperación para todos os discos cifrados. É posíbel que deba introducilas ao arrancar tras actualizar o firmware.';

  @override
  String get affectsFdeWarningUbuntuFdeBody =>
      'O cifrado con respaldo de hardware está activado no teu ordenador. É posible que teñas que introducir a túa cahve de recuperación ao iniciar despois de actualizar o firmware. Asegúrate de que tamén tes chaves de recuperación para calquera outro disco cifrado neste ordenador.';

  @override
  String get affectsFdeWarningBitlockerBody =>
      'BitLocker está activado no teu ordenador. Asegúrate de ter chaves de recuperación para todos os discos cifrados. É posible que teñas que introducilas ao iniciar despois de actualizar o firmware.';

  @override
  String get affectsFdeCheckbox =>
      'Teño chaves de recuperación para todos os meus discos cifrados';

  @override
  String get affectsFdeTextFieldLabel =>
      'Introduce a túa chave de recuperación';

  @override
  String get affectsFdeLinkLabel => 'Saber máis';

  @override
  String get affectsFdeIncorrectKey =>
      'A chave de recuperación non funciona, compróbaa ou substitúea no Centro de seguranza';

  @override
  String get allVersions => 'Todas as versións';

  @override
  String get appTitle => 'Actualizador de firmware';

  @override
  String get batteryWarning =>
      'Aviso: algunhas actualizacións do dispositivo poden estar dispoñíbeis só con alimentación externa!';

  @override
  String get checksum => 'Suma de verificación';

  @override
  String get close => 'Pechar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get current => 'Actual';

  @override
  String get deviceUnavailable =>
      'O dispositivo non estará dispoñíbel durante esta acción.';

  @override
  String get deviceRequest => 'Solicitude do dispositivo';

  @override
  String get downgrade => 'Baixar de versión';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Baixar de versión <b>$name</b> a <b>$version</b>?';
  }

  @override
  String get flags => 'Marcadores';

  @override
  String get fwupdDeviceFlagInternal => 'Dispositivo interno';

  @override
  String get fwupdDeviceFlagUpdatable => 'Actualizábel';

  @override
  String get fwupdDeviceFlagOnlyOffline =>
      'A actualización require un reinicio';

  @override
  String get fwupdDeviceFlagRequireAc =>
      'O sistema require unha fonte de alimentación externa';

  @override
  String get fwupdDeviceFlagLocked => 'O dispositivo está bloqueado';

  @override
  String get fwupdDeviceFlagSupported => 'Compatible con servidores remotos';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Require un xestor de arrinque';

  @override
  String get fwupdDeviceFlagRegistered => 'Rexistrado';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'Necesita reiniciar despois da instalación';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'Necesita apagar despois da instalación';

  @override
  String get fwupdDeviceFlagReported => 'Informado ao servidor remoto';

  @override
  String get fwupdDeviceFlagNotified => 'O usuario foi notificado';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'Instalar primeiro no dispositivo principal';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Está en modo xestor de arrinque';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'O hardware está á espera de ser reconectado';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'Ignorar as comprobacións de seguridade de validación';

  @override
  String get fwupdDeviceFlagTrusted => 'Confiábel';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'A actualización do dispositivo precisa activación';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'O dispositivo non volverá aparecer despois de que se complete a actualización';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'A verificación de suma criptográfica está dispoñíbel';

  @override
  String get fwupdDeviceFlagDualImage =>
      'Actualizacións das etapas do dispositivo';

  @override
  String get fwupdDeviceFlagSelfRecovery =>
      'O dispositivo pódese recuperar de fallos na instalación';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'O dispositivo é usábel durante a actualización';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'É necesario que o firmware do dispositivo teña unha comprobación de versión';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'Requírese o dispositivo para instalar todas as versións proporcionadas';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'O dispositivo admite o cambio a unha rama diferente do firmware';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'O dispositivo fará unha copia de seguridade do firmware antes da instalación';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'Todos os dispositivos do mesmo tipo actualizaranse ao mesmo tempo';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Só se permiten actualizacións de versións';

  @override
  String get fwupdDeviceFlagUnreachable => 'Non se pode acceder ao dispositivo';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Os segredos de cifrado completos do disco poden ser invalidados ao actualizar';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Fin de vida útil';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Carga útil asinada';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Carga útil sen asinar';

  @override
  String get fwupdErrorInternal => 'Erro interno';

  @override
  String get fwupdErrorVersionNewer =>
      'Versión de firmware máis recente instalada';

  @override
  String get fwupdErrorVersionSame => 'Instalouse a mesma versión do firmware';

  @override
  String get fwupdErrorAlreadyPending =>
      'Xa configurado para instalar sen conexión';

  @override
  String get fwupdErrorAuthFailed => 'Non se puido obter a autenticación';

  @override
  String get fwupdErrorRead => 'Non se puido ler desde o dispositivo';

  @override
  String get fwupdErrorWrite => 'Fallou a escritura no dispositivo';

  @override
  String get fwupdErrorInvalidFile => 'O formato de ficheiro non é válido';

  @override
  String get fwupdErrorNotFound => 'Non existe ningún dispositivo coincidente';

  @override
  String get fwupdErrorNothingToDo => 'Nada que facer';

  @override
  String get fwupdErrorNotSupported => 'A acción non foi posíbel';

  @override
  String get fwupdErrorSignatureInvalid => 'A sinatura non era válida';

  @override
  String get fwupdErrorAcPowerRequired => 'Requeríase alimentación AC';

  @override
  String get fwupdErrorPermissionDenied => 'Denegouse o permiso';

  @override
  String get fwupdErrorBrokenSystem =>
      'O usuario configurou o seu sistema dun xeito defectuoso';

  @override
  String get fwupdErrorBatteryLevelTooLow =>
      'O nivel de batería do sistema é demasiado baixo';

  @override
  String get fwupdErrorNeedsUserAction =>
      'O usuario precisa realizar unha acción para completar a actualización';

  @override
  String get fwupdErrorAuthExpired =>
      'Non se puido obter a autenticación porque as credenciais caducaron';

  @override
  String get fwupdErrorUnknown => 'Erro descoñecido';

  @override
  String get fwupdStatusUnknown => 'Estado descoñecido';

  @override
  String get fwupdStatusIdle => 'Inactivo';

  @override
  String get fwupdStatusLoading => 'Cargando un recurso';

  @override
  String get fwupdStatusDecompressing => 'Descomprimindo o firmware';

  @override
  String get fwupdStatusDeviceRestart => 'Reiniciando o dispositivo';

  @override
  String get fwupdStatusDeviceWrite => 'Escribindo nun dispositivo';

  @override
  String get fwupdStatusDeviceVerify => 'Verificando (lendo) un dispositivo';

  @override
  String get fwupdStatusScheduling =>
      'Programando unha actualización sen conexión';

  @override
  String get fwupdStatusDownloading => 'Estase a descargar un ficheiro';

  @override
  String get fwupdStatusDeviceRead => 'Lendo dende un dispositivo';

  @override
  String get fwupdStatusDeviceErase => 'Borrando un dispositivo';

  @override
  String get fwupdStatusWaitingForAuth => 'Agardando pola autenticación';

  @override
  String get fwupdStatusDeviceBusy => 'O dispositivo está ocupado';

  @override
  String get fwupdStatusShutdown => 'O daemon está a pecharse';

  @override
  String get guid => 'GUIDs';

  @override
  String get installError => 'Fallo na instalación do firmware!';

  @override
  String get noDevicesFound => 'Non se atoparon dispositivos';

  @override
  String get ok => 'Aceptar';

  @override
  String get olderVersions => 'Versións anteriores';

  @override
  String get rebootLater => 'Reiniciar máis tarde';

  @override
  String get rebootNow => 'Reiniciar agora';

  @override
  String get rebootConfirmMessage =>
      'Debes reiniciar o dispositivo para completar a actualización. Asegúrate de que o dispositivo esté enchufado ou completamente cargado. Garda os teus ficheiros antes de reinicialo para evitar perder datos.';

  @override
  String get rebootConfirmTitle =>
      'Reiniciar para completar esta actualización';

  @override
  String get reinstall => 'Reinstalar';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Reinstalar <b>$name</b> versión <b>$current</b>?';
  }

  @override
  String get showReleases => 'Amosar lanzamentos';

  @override
  String get showUpdates => 'Amosar actualizacións';

  @override
  String get update => 'Actualizar';

  @override
  String get updateAvailable => 'Actualización dispoñíbel';

  @override
  String get updateChecksums => 'Actualizar sumas de comprobación';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Actualizar as sumas de comprobación do dispositivo <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo =>
      'Isto gravará as sumas criptográficas actuais como verificadas.';

  @override
  String get updateToLatest => 'Actualizar á última versión';

  @override
  String updateConfirm(String name, String version) {
    return 'Actualizar <b>$name</b> á versión <b>$version</b>?';
  }

  @override
  String get vendor => 'Vendedor';

  @override
  String get verifyFirmware => 'Verificar Firmware';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Verificar as sumas de comprobación do firmware de $name?';
  }

  @override
  String get currentVersion => 'Versión actual';

  @override
  String get minVersion => 'Versión mínima';

  @override
  String get latestVersion => 'Última versión';
}
