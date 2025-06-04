// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get affectsFdeWarningTitle => 'Puede perder todos sus datos sin claves de recuperación';

  @override
  String get affectsFdeWarningBody1 => 'Asegúrese que tenga claves de recuperación para todas sus unidades cifradas. Necesitar introducirlas al arrancar tras actualizar el firmware.';

  @override
  String get affectsFdeWarningBody2 => 'Necesita las claves de recuperación porque ha habilitado el cifrado del hardware respaldado en Ubuntu u otro sistema operativo en este equipo.';

  @override
  String get affectsFdeCheckbox => 'Tengo claves de recuperación para todas mis unidades cifradas';

  @override
  String get affectsFdeLinkLabel => 'Saber más';

  @override
  String get allVersions => 'Todas las versiones';

  @override
  String get appTitle => 'Actualizador del firmware';

  @override
  String get batteryWarning => 'Advertencia: ¡es posible que algunas actualizaciones del dispositivo solo estén disponibles con alimentación externa!';

  @override
  String get checksum => 'Suma de comprobación';

  @override
  String get close => 'Cerrar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get current => 'Actual';

  @override
  String get deviceUnavailable => 'El dispositivo no estará disponible durante esta operación.';

  @override
  String get deviceRequest => 'Solicitud de dispositivo';

  @override
  String get downgrade => 'Desactualizar';

  @override
  String downgradeConfirm(String name, String version) {
    return '¿Quiere desactualizar <b>$name</b> a <b>$version</b>?';
  }

  @override
  String get flags => 'Indicadores';

  @override
  String get fwupdDeviceFlagInternal => 'Dispositivo interno';

  @override
  String get fwupdDeviceFlagUpdatable => 'Actualizable';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'La actualización requiere un reinicio';

  @override
  String get fwupdDeviceFlagRequireAc => 'El sistema requiere una fuente de alimentación externa';

  @override
  String get fwupdDeviceFlagLocked => 'El dispositivo está bloqueado';

  @override
  String get fwupdDeviceFlagSupported => 'Admitido en servidor remoto';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Requiere un cargador de arranque';

  @override
  String get fwupdDeviceFlagRegistered => 'Registrado';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'Necesita un reinicio despues de la instalación';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'Necesita apagar tras la instalación';

  @override
  String get fwupdDeviceFlagReported => 'Informado al servidor remoto';

  @override
  String get fwupdDeviceFlagNotified => 'Se ha notificado al usuario';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'Instalar en el dispositivo principal primero';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Está en modo cargador de arranque';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'El hardware espera a ser reconectado';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'Descartar validación de comprobaciones de seguridad';

  @override
  String get fwupdDeviceFlagTrusted => 'Confiable';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'Acutalización de dispositivo necesita activación';

  @override
  String get fwupdDeviceFlagWillDisappear => 'El dispositivo no reaparecerá tras finalizar la actualización';

  @override
  String get fwupdDeviceFlagCanVerify => 'La verificación de suma criptográfica está disponible';

  @override
  String get fwupdDeviceFlagDualImage => 'El dispositivo almacena provisionalmente las actualizaciones';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'El dispositivo se puede recuperar de fallas en la instalación';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => 'El dispositivo se puede usar durante la actualización';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => 'Es necesario verificar la versión del firmware del dispositivo';

  @override
  String get fwupdDeviceFlagInstallAllReleases => 'Se requiere el dispositivo para instalar todas las versiones proporcionadas';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => 'El dispositivo soporta el cambio a una versión diferente de firmware';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => 'El dispositivo respaldará el firmware antes de la instalación';

  @override
  String get fwupdDeviceFlagWildcardInstall => 'Todos los dispositivos del mismo tipo se actualizarán a la vez';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => 'Solo se permiten las actualizaciones de versión';

  @override
  String get fwupdDeviceFlagUnreachable => 'No se puede acceder al dispositivo';

  @override
  String get fwupdDeviceFlagAffectsFde => 'Las claves de cifrado completo de disco podrían invalidarse al actualizar';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Fin de vida útil';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Carga útil firmada';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Carga útil sin firmar';

  @override
  String get fwupdErrorInternal => 'Error interno';

  @override
  String get fwupdErrorVersionNewer => 'Se instaló una versión más reciente del firmware';

  @override
  String get fwupdErrorVersionSame => 'Se instaló la misma versión del firmware';

  @override
  String get fwupdErrorAlreadyPending => 'Ya se configuró la instalación sin conexión';

  @override
  String get fwupdErrorAuthFailed => 'No se pudo obtener la autenticación';

  @override
  String get fwupdErrorRead => 'No se pudo leer desde el dispositivo';

  @override
  String get fwupdErrorWrite => 'No se pudo escribir en el dispositivo';

  @override
  String get fwupdErrorInvalidFile => 'El formato de archivo no es válido';

  @override
  String get fwupdErrorNotFound => 'No existe ningún dispositivo que coincida';

  @override
  String get fwupdErrorNothingToDo => 'Nada que hacer';

  @override
  String get fwupdErrorNotSupported => 'La acción no era posible';

  @override
  String get fwupdErrorSignatureInvalid => 'La firma no era válida';

  @override
  String get fwupdErrorAcPowerRequired => 'Se requería alimentación CA';

  @override
  String get fwupdErrorPermissionDenied => 'Se denegó el permiso';

  @override
  String get fwupdErrorBrokenSystem => 'Se configuró el sistema de manera errónea';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'El nivel de la batería del sistema es demasiado bajo';

  @override
  String get fwupdErrorNeedsUserAction => 'Necesita efectuar una acción para completar la actualización';

  @override
  String get fwupdErrorAuthExpired => 'No se pudo autenticar porque los datos de acceso caducaron';

  @override
  String get fwupdErrorUnknown => 'Error desconocido';

  @override
  String get fwupdStatusUnknown => 'Estado desconocido';

  @override
  String get fwupdStatusIdle => 'Inactivo';

  @override
  String get fwupdStatusLoading => 'Cargando un recurso';

  @override
  String get fwupdStatusDecompressing => 'Descomprimiendo el firmware';

  @override
  String get fwupdStatusDeviceRestart => 'Reiniciando el dispositivo';

  @override
  String get fwupdStatusDeviceWrite => 'Escribiendo en un dispositivo';

  @override
  String get fwupdStatusDeviceVerify => 'Verificando (leyendo) un dispositivo';

  @override
  String get fwupdStatusScheduling => 'Programando una actualización sin conexión';

  @override
  String get fwupdStatusDownloading => 'Se está descargando un archivo';

  @override
  String get fwupdStatusDeviceRead => 'Leyendo desde un dispositivo';

  @override
  String get fwupdStatusDeviceErase => 'Borrando un dispositivo';

  @override
  String get fwupdStatusWaitingForAuth => 'Esperando la autenticación';

  @override
  String get fwupdStatusDeviceBusy => 'El dispositivo está ocupado';

  @override
  String get fwupdStatusShutdown => 'El servicio se está apagando';

  @override
  String get guid => 'GUID';

  @override
  String get installError => '¡No se pudo instalar el firmware!';

  @override
  String get noDevicesFound => 'No se encontró ningún dispositivo';

  @override
  String get ok => 'Aceptar';

  @override
  String get olderVersions => 'Versiones anteriores';

  @override
  String get rebootLater => 'Reiniciar más tarde';

  @override
  String get rebootNow => 'Reiniciar ahora';

  @override
  String get rebootConfirmMessage => 'Debe reiniciar el dispositivo para completar la actualización. Asegúrese de que el dispositivo esté enchufado o cargado por completo. Guarde sus archivos antes de reiniciar para evitar perder datos.';

  @override
  String get rebootConfirmTitle => 'Reinicie para completar esta actualización';

  @override
  String get reinstall => 'Reinstalar';

  @override
  String reinstallConfirm(String name, String current) {
    return '¿Quiere reinstalar <b>$name</b>, versión <b>$current</b>?';
  }

  @override
  String get showReleases => 'Mostrar lanzamientos';

  @override
  String get showUpdates => 'Mostrar actualizaciones';

  @override
  String get update => 'Actualizar';

  @override
  String get updateAvailable => 'Actualización disponible';

  @override
  String get updateChecksums => 'Actualizar sumas de comprobación';

  @override
  String updateChecksumsConfirm(String name) {
    return '¿Quiere actualizar las sumas de comprobación de dispositivo de <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo => 'Esto grabará las sumas criptográficas actuales como verificadas.';

  @override
  String get updateToLatest => 'Actualizar a la última versión';

  @override
  String updateConfirm(String name, String version) {
    return '¿Quiere actualizar <b>$name</b> a la versión <b>$version</b>?';
  }

  @override
  String get vendor => 'Proveedor';

  @override
  String get verifyFirmware => 'Verificar firmware';

  @override
  String verifyFirmwareConfirm(String name) {
    return '¿Quiere verificar las sumas de comprobación de firmware de $name?';
  }

  @override
  String get currentVersion => 'Versión actual';

  @override
  String get minVersion => 'Versión mínima';

  @override
  String get latestVersion => 'Versión más reciente';
}
