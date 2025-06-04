// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get affectsFdeWarningTitle => 'Pode perder todos os seus dados se não tiver as chaves de recuperação';

  @override
  String get affectsFdeWarningBody1 => 'Certifique-se de que tem as chaves de recuperação de todas as suas unidades encriptadas. Vai precisar de as introduzir no arranque após atualizar o firmware.';

  @override
  String get affectsFdeWarningBody2 => 'Precisa das chaves de recuperação porque ativou a encriptação suportada por hardware no Ubuntu ou noutros sistemas operativos neste computador.';

  @override
  String get affectsFdeCheckbox => 'Tenho as chaves de recuperação de todas as minhas unidades encriptadas';

  @override
  String get affectsFdeLinkLabel => 'Saber mais';

  @override
  String get allVersions => 'Todas as versões';

  @override
  String get appTitle => 'Atualizador de Firmware';

  @override
  String get batteryWarning => 'Aviso: algumas actualizações de dispositivos podem estar disponíveis apenas com alimentação externa!';

  @override
  String get checksum => 'Soma de verificação';

  @override
  String get close => 'Fechar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get current => 'Atual';

  @override
  String get deviceUnavailable => 'O dispositivo ficará indisponível durante esta acção.';

  @override
  String get deviceRequest => 'Pedido de dispositivo';

  @override
  String get downgrade => 'Downgrade';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Reverter <b>$name</b> para versão <b>$version</b>?';
  }

  @override
  String get flags => 'Flags';

  @override
  String get fwupdDeviceFlagInternal => 'Dispositivo interno';

  @override
  String get fwupdDeviceFlagUpdatable => 'Atualizável';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'A atualização requer um reinício';

  @override
  String get fwupdDeviceFlagRequireAc => 'System requires external power source';

  @override
  String get fwupdDeviceFlagLocked => 'Dispositivo está bloqueado';

  @override
  String get fwupdDeviceFlagSupported => 'Supported on remote server';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Requires a bootloader';

  @override
  String get fwupdDeviceFlagRegistered => 'Registado';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'Tem de reiniciar depois da instalação';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'Tem de encerrar depois da instalação';

  @override
  String get fwupdDeviceFlagReported => 'Reported to remote server';

  @override
  String get fwupdDeviceFlagNotified => 'User has been notified';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'Install to parent device first';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Is in bootloader mode';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'Hardware is waiting to be replugged';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'Ignore validation safety checks';

  @override
  String get fwupdDeviceFlagTrusted => 'Trusted';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'Device update needs activation';

  @override
  String get fwupdDeviceFlagWillDisappear => 'Device will not re-appear after update completes';

  @override
  String get fwupdDeviceFlagCanVerify => 'Cryptographic hash verification is available';

  @override
  String get fwupdDeviceFlagDualImage => 'Device stages updates';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'Device can recover flash failures';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => 'Device is usable for the duration of the update';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => 'Device firmware is required to have a version check';

  @override
  String get fwupdDeviceFlagInstallAllReleases => 'Device is required to install all provided releases';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => 'Device supports switching to a different branch of firmware';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => 'Device will backup firmware before installing';

  @override
  String get fwupdDeviceFlagWildcardInstall => 'All devices of the same type will be updated at the same time';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => 'Only version upgrades are allowed';

  @override
  String get fwupdDeviceFlagUnreachable => 'Device is unreachable';

  @override
  String get fwupdDeviceFlagAffectsFde => 'Full disk encryption secrets may be invalidated when updating';

  @override
  String get fwupdDeviceFlagEndOfLife => 'End of life';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Signed Payload';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Unsigned Payload';

  @override
  String get fwupdErrorInternal => 'Erro interno';

  @override
  String get fwupdErrorVersionNewer => 'Installed newer firmware version';

  @override
  String get fwupdErrorVersionSame => 'Installed same firmware version';

  @override
  String get fwupdErrorAlreadyPending => 'Already set to be installed offline';

  @override
  String get fwupdErrorAuthFailed => 'Failed to get authentication';

  @override
  String get fwupdErrorRead => 'Failed to read from device';

  @override
  String get fwupdErrorWrite => 'Failed to write to the device';

  @override
  String get fwupdErrorInvalidFile => 'Invalid file format';

  @override
  String get fwupdErrorNotFound => 'No matching device exists';

  @override
  String get fwupdErrorNothingToDo => 'Nothing to do';

  @override
  String get fwupdErrorNotSupported => 'Action was not possible';

  @override
  String get fwupdErrorSignatureInvalid => 'Signature was invalid';

  @override
  String get fwupdErrorAcPowerRequired => 'AC power was required';

  @override
  String get fwupdErrorPermissionDenied => 'Permission was denied';

  @override
  String get fwupdErrorBrokenSystem => 'User has configured their system in a broken way';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'The system battery level is too low';

  @override
  String get fwupdErrorNeedsUserAction => 'User needs to do an action to complete the update';

  @override
  String get fwupdErrorAuthExpired => 'Failed to get auth as credentials have expired';

  @override
  String get fwupdErrorUnknown => 'Unknown error';

  @override
  String get fwupdStatusUnknown => 'Unknown state';

  @override
  String get fwupdStatusIdle => 'Idle';

  @override
  String get fwupdStatusLoading => 'Loading a resource';

  @override
  String get fwupdStatusDecompressing => 'Decompressing firmware';

  @override
  String get fwupdStatusDeviceRestart => 'Restarting the device';

  @override
  String get fwupdStatusDeviceWrite => 'Writing to a device';

  @override
  String get fwupdStatusDeviceVerify => 'Verifying (reading) a device';

  @override
  String get fwupdStatusScheduling => 'Scheduling an offline update';

  @override
  String get fwupdStatusDownloading => 'A file is downloading';

  @override
  String get fwupdStatusDeviceRead => 'Reading from a device';

  @override
  String get fwupdStatusDeviceErase => 'Erasing a device';

  @override
  String get fwupdStatusWaitingForAuth => 'Waiting for authentication';

  @override
  String get fwupdStatusDeviceBusy => 'The device is busy';

  @override
  String get fwupdStatusShutdown => 'The daemon is shutting down';

  @override
  String get guid => 'GUIDs';

  @override
  String get installError => 'Failed to install firmware!';

  @override
  String get noDevicesFound => 'No devices found';

  @override
  String get ok => 'OK';

  @override
  String get olderVersions => 'Older Versions';

  @override
  String get rebootLater => 'Restart later';

  @override
  String get rebootNow => 'Restart now';

  @override
  String get rebootConfirmMessage => 'You must restart your device to complete the update. Make sure your device is plugged in or fully charged. Save your files before you restart to avoid losing data.';

  @override
  String get rebootConfirmTitle => 'Restart to complete this update';

  @override
  String get reinstall => 'Reinstall';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Reinstall <b>$name</b> version <b>$current</b>?';
  }

  @override
  String get showReleases => 'Show Releases';

  @override
  String get showUpdates => 'Show Updates';

  @override
  String get update => 'Update';

  @override
  String get updateAvailable => 'Update available';

  @override
  String get updateChecksums => 'Update Checksums';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Update device checksums of <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo => 'This will record the current cryptographic hashes as verified.';

  @override
  String get updateToLatest => 'Update to Latest';

  @override
  String updateConfirm(String name, String version) {
    return 'Update <b>$name</b> to version <b>$version</b>?';
  }

  @override
  String get vendor => 'Empresa';

  @override
  String get verifyFirmware => 'Verificar Firmware';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Verify firmware checksums of $name?';
  }

  @override
  String get currentVersion => 'Versão Atual';

  @override
  String get minVersion => 'Versão Mínima';

  @override
  String get latestVersion => 'Última Versão';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr(): super('pt_BR');

  @override
  String get allVersions => 'Todas as Versões';

  @override
  String get appTitle => 'Atualizador de Firmware';

  @override
  String get batteryWarning => 'Aviso: algumas atualizações de dispositivos podem estar disponíveis apenas com alimentação de energia externa!';

  @override
  String get checksum => 'Soma de verificação';

  @override
  String get close => 'Fechar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get current => 'Atual';

  @override
  String get deviceUnavailable => 'O dispositivo ficará indisponível durante esta ação.';

  @override
  String get deviceRequest => 'Solicitação de dispositivo';

  @override
  String get downgrade => 'Downgrade';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Realizar downgrade de <b>$name</b> para <b>$version</b>?';
  }

  @override
  String get flags => 'Sinalizadores';

  @override
  String get fwupdDeviceFlagInternal => 'Dispositivo interno';

  @override
  String get fwupdDeviceFlagUpdatable => 'Atualizável';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'Atualização requer uma reinicialização';

  @override
  String get fwupdDeviceFlagRequireAc => 'O sistema requer fonte de alimentação externa';

  @override
  String get fwupdDeviceFlagLocked => 'O dispositivo está bloqueado';

  @override
  String get fwupdDeviceFlagSupported => 'Suportado no servidor remoto';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Requer um carregador de inicialização';

  @override
  String get fwupdDeviceFlagRegistered => 'Registrado';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'Requer uma reinicialização após a instalação';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'Requer um desligamento após a instalação';

  @override
  String get fwupdDeviceFlagReported => 'Reportado ao servidor remoto';

  @override
  String get fwupdDeviceFlagNotified => 'O usuário foi notificado';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'Instalar primeiro no dispositivo pai';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Está no modo bootloader';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'O hardware está aguardando para ser reconectado';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'Ignorar verificações de validação de segurança';

  @override
  String get fwupdDeviceFlagTrusted => 'Confiável';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'Atualização de dispositivo precisa de ativação';

  @override
  String get fwupdDeviceFlagWillDisappear => 'O dispositivo não reaparecerá após a conclusão da atualização';

  @override
  String get fwupdDeviceFlagCanVerify => 'A verificação de hash criptográfico está disponível';

  @override
  String get fwupdDeviceFlagDualImage => 'Atualizações de estágios do dispositivo';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'O dispositivo pode recuperar falhas de flash';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => 'O dispositivo pode ser usado durante a atualização';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => 'O firmware do dispositivo é necessário para verificar a versão';

  @override
  String get fwupdDeviceFlagInstallAllReleases => 'O dispositivo é necessário para instalar todas as versões fornecidas';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => 'O dispositivo suporta a mudança para uma ramificação diferente de firmware';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => 'O dispositivo fará backup do firmware antes da instalação';

  @override
  String get fwupdDeviceFlagWildcardInstall => 'Todos os dispositivos do mesmo tipo serão atualizados ao mesmo tempo';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => 'Somente atualizações de versão são permitidas';

  @override
  String get fwupdDeviceFlagUnreachable => 'O dispositivo está inacessível';

  @override
  String get fwupdDeviceFlagAffectsFde => 'Segredos de criptografia de disco completo podem ser invalidados durante a atualização';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Fim da vida útil';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Carga Assinada';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Carga Não Assinada';

  @override
  String get fwupdErrorInternal => 'Erro interno';

  @override
  String get fwupdErrorVersionNewer => 'Versão de firmware mais recente instalada';

  @override
  String get fwupdErrorVersionSame => 'Instalada a mesma versão de firmware';

  @override
  String get fwupdErrorAlreadyPending => 'Já definido para ser instalado offline';

  @override
  String get fwupdErrorAuthFailed => 'Falha ao obter autenticação';

  @override
  String get fwupdErrorRead => 'Falha ao ler do dispositivo';

  @override
  String get fwupdErrorWrite => 'Falha ao gravar no dispositivo';

  @override
  String get fwupdErrorInvalidFile => 'Formato de arquivo inválido';

  @override
  String get fwupdErrorNotFound => 'Não existe nenhum dispositivo correspondente';

  @override
  String get fwupdErrorNothingToDo => 'Nada a fazer';

  @override
  String get fwupdErrorNotSupported => 'A ação não foi possível';

  @override
  String get fwupdErrorSignatureInvalid => 'A assinatura era inválida';

  @override
  String get fwupdErrorAcPowerRequired => 'Alimentação AC era necessária';

  @override
  String get fwupdErrorPermissionDenied => 'A permissão foi negada';

  @override
  String get fwupdErrorBrokenSystem => 'O usuário configurou seu sistema de forma quebrada';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'O nível da bateria do sistema é muito baixo';

  @override
  String get fwupdErrorNeedsUserAction => 'O usuário precisa executar uma ação para concluir a atualização';

  @override
  String get fwupdErrorAuthExpired => 'Falha ao obter a autenticação porque as credenciais expiraram';

  @override
  String get fwupdErrorUnknown => 'Erro desconhecido';

  @override
  String get fwupdStatusUnknown => 'Estado desconhecido';

  @override
  String get fwupdStatusIdle => 'Ocioso';

  @override
  String get fwupdStatusLoading => 'Carregando um recurso';

  @override
  String get fwupdStatusDecompressing => 'Descompactando firmware';

  @override
  String get fwupdStatusDeviceRestart => 'Reiniciando o dispositivo';

  @override
  String get fwupdStatusDeviceWrite => 'Gravando em um dispositivo';

  @override
  String get fwupdStatusDeviceVerify => 'Verificando (lendo) um dispositivo';

  @override
  String get fwupdStatusScheduling => 'Agendando uma atualização offline';

  @override
  String get fwupdStatusDownloading => 'Um arquivo está sendo baixado';

  @override
  String get fwupdStatusDeviceRead => 'Lendo a partir de um dispositivo';

  @override
  String get fwupdStatusDeviceErase => 'Apagando um dispositivo';

  @override
  String get fwupdStatusWaitingForAuth => 'Aguardando autenticação';

  @override
  String get fwupdStatusDeviceBusy => 'O dispositivo está ocupado';

  @override
  String get fwupdStatusShutdown => 'O daemon está desligando';

  @override
  String get guid => 'GUIDs';

  @override
  String get installError => 'Falha ao instalar firmware!';

  @override
  String get noDevicesFound => 'Nenhum dispositivo encontrado';

  @override
  String get ok => 'OK';

  @override
  String get olderVersions => 'Versões Mais Antigas';

  @override
  String get rebootLater => 'Reiniciar mais tarde';

  @override
  String get rebootNow => 'Reiniciar agora';

  @override
  String get rebootConfirmMessage => 'Você deve reiniciar seu dispositivo para concluir a atualização. Certifique-se de que seu dispositivo esteja conectado ou totalmente carregado. Salve seus arquivos antes de reiniciar para evitar perda de dados.';

  @override
  String get rebootConfirmTitle => 'Reinicie para concluir esta atualização';

  @override
  String get reinstall => 'Reinstalar';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Reinstalar <b>$name</b> versão <b>$current</b>?';
  }

  @override
  String get showReleases => 'Mostrar Lançamentos';

  @override
  String get showUpdates => 'Mostrar Atualizações';

  @override
  String get update => 'Atualização';

  @override
  String get updateAvailable => 'Atualização disponível';

  @override
  String get updateChecksums => 'Somas de Verificação da Atualização';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Atualizar somas de verificação do dispositivo <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo => 'Isso registrará os hashes criptográficos atuais conforme verificados.';

  @override
  String get updateToLatest => 'Atualizar para o Mais Recente';

  @override
  String updateConfirm(String name, String version) {
    return 'Atualizar <b>$name</b> para <b>$version</b>?';
  }

  @override
  String get vendor => 'Fornecedor';

  @override
  String get verifyFirmware => 'Verificar Firmware';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Verificar as somas de verificação do firmware de $name?';
  }

  @override
  String get currentVersion => 'Versão Atual';

  @override
  String get minVersion => 'Versão Mínima';

  @override
  String get latestVersion => 'Versão Mais Recente';
}
