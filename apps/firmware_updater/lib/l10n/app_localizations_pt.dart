// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'Pode perder todos os seus dados sem os códigos de recuperação';

  @override
  String get affectsFdeWarningUbuntuFdeTitle =>
      'Pode perder todos os seus dados sem os seus códigos de recuperação';

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
      'Eu tenho os códigos de recuperação para todas as minhas unidades encriptadas';

  @override
  String get affectsFdeTextFieldLabel => 'Insira o seu código de recuperação';

  @override
  String get affectsFdeLinkLabel => 'Saber mais';

  @override
  String get affectsFdeIncorrectKey =>
      'O código de recuperação não funciona, verifique ou substitua-o no \"Centro de Segurança\"';

  @override
  String get allVersions => 'Todas as Versões';

  @override
  String get appTitle => 'Atualizador de Firmware';

  @override
  String get batteryWarning =>
      'Aviso: algumas atualizações de dispositivos podem estar disponíveis apenas com alimentação externa!';

  @override
  String get checksum => 'Soma de verificação';

  @override
  String get close => 'Fechar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get current => 'Atual';

  @override
  String get deviceUnavailable =>
      'O dispositivo ficará indisponível durante esta ação.';

  @override
  String get deviceRequest => 'Pedido de dispositivo';

  @override
  String get downgrade => 'Reverter';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Reverter o <b>$name</b> para a versão <b>$version</b>?';
  }

  @override
  String get flags => 'SInalizadores';

  @override
  String get fwupdDeviceFlagInternal => 'Dispositivo interno';

  @override
  String get fwupdDeviceFlagUpdatable => 'Atualizável';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'A atualização requer um reinício';

  @override
  String get fwupdDeviceFlagRequireAc =>
      'O sistema requer uma fonte de energia externa';

  @override
  String get fwupdDeviceFlagLocked => 'O dispositivo está bloqueado';

  @override
  String get fwupdDeviceFlagSupported => 'Suportado no servidor remoto';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Requires a bootloader';

  @override
  String get fwupdDeviceFlagRegistered => 'Registado';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'Tem de reiniciar depois da instalação';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'Tem de encerrar depois da instalação';

  @override
  String get fwupdDeviceFlagReported => 'Reportado para o servidor remoto';

  @override
  String get fwupdDeviceFlagNotified => 'O utilizador foi notificado';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'Instale primeiro no dispositivo fonte';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Is in bootloader mode';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'O hardware está a guardar para ser religado';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'Ignorar as verificações de segurança de validação';

  @override
  String get fwupdDeviceFlagTrusted => 'Confiável';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'A atualização do dispositivo precisa de ativação';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'O dispositivo não reaparece depois de concluída a atualização';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'Cryptographic hash verification is available';

  @override
  String get fwupdDeviceFlagDualImage =>
      'Atualizações de estágios do dispositivo';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'Device can recover flash failures';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'O dispositivo é utilizável durante a atualização';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'É necessário o firmware do dispositivo para ter uma verificação da versão';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'É necessário o dispositivo para instalar todos os lançamentos fornecidos';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'O dispositivo suporta a mudança para um ramo de firmware diferente';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'O dispositivo irá efetuar uma cópia de segurança do firmware antes da instalação';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'Todos os dispositivos do mesmo tipo serão atualizados ao mesmo tempo';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Só são permitidas as atualizações da versão';

  @override
  String get fwupdDeviceFlagUnreachable => 'O dispositivo está inacessível';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Os segredos de encriptação do disco completo podem ser invalidados quando atualizar';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Fim de vida';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Signed Payload';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Unsigned Payload';

  @override
  String get fwupdErrorInternal => 'Erro interno';

  @override
  String get fwupdErrorVersionNewer =>
      'Instalada versão de firmware mais recente';

  @override
  String get fwupdErrorVersionSame => 'Instalada mesma versão de firmware';

  @override
  String get fwupdErrorAlreadyPending =>
      'Já definido para ser instalado off-line';

  @override
  String get fwupdErrorAuthFailed => 'Não foi possível obter a autenticação';

  @override
  String get fwupdErrorRead => 'Não foi possível ler do dispositivo';

  @override
  String get fwupdErrorWrite => 'Não foi possível gravar no dispositivo';

  @override
  String get fwupdErrorInvalidFile => 'Formato de ficheiro inválido';

  @override
  String get fwupdErrorNotFound =>
      'Não existe nenhum dispositivo correspondente';

  @override
  String get fwupdErrorNothingToDo => 'Nada para fazer';

  @override
  String get fwupdErrorNotSupported => 'Não foi possível a ação';

  @override
  String get fwupdErrorSignatureInvalid => 'A assinatura era inválida';

  @override
  String get fwupdErrorAcPowerRequired => 'Era necessária a energia AC';

  @override
  String get fwupdErrorPermissionDenied => 'Permissão foi negada';

  @override
  String get fwupdErrorBrokenSystem =>
      'O utilizador configurou o próprio sistema de uma forma errada';

  @override
  String get fwupdErrorBatteryLevelTooLow =>
      'O nível da bateria do sistema está muito baixa';

  @override
  String get fwupdErrorNeedsUserAction =>
      'O utilizador precisa de realizar uma ação para concluir a atualização';

  @override
  String get fwupdErrorAuthExpired =>
      'Não foi possível obter a autenticação porque as credenciais expiraram';

  @override
  String get fwupdErrorUnknown => 'Erro desconhecido';

  @override
  String get fwupdStatusUnknown => 'Estado desconhecido';

  @override
  String get fwupdStatusIdle => 'Inativo';

  @override
  String get fwupdStatusLoading => 'A carregar um recurso';

  @override
  String get fwupdStatusDecompressing => 'A descomprimir firmware';

  @override
  String get fwupdStatusDeviceRestart => 'A reiniciar o dispositivo';

  @override
  String get fwupdStatusDeviceWrite => 'A gravar num dispositivo';

  @override
  String get fwupdStatusDeviceVerify => 'A verificar (ler) um dispositivo';

  @override
  String get fwupdStatusScheduling => 'A agendar uma atualização off-line';

  @override
  String get fwupdStatusDownloading => 'Está a ser transferido um ficheiro';

  @override
  String get fwupdStatusDeviceRead => 'A ler de um dispositivo';

  @override
  String get fwupdStatusDeviceErase => 'A limpar um dispositivo';

  @override
  String get fwupdStatusWaitingForAuth => 'A aguardar por autenticação';

  @override
  String get fwupdStatusDeviceBusy => 'O dispositivo está ocupado';

  @override
  String get fwupdStatusShutdown => 'The daemon is shutting down';

  @override
  String get guid => 'GUIDs';

  @override
  String get installError => 'A instalação do firmware falhou!';

  @override
  String get noDevicesFound => 'Não foram encontrados dispositivos';

  @override
  String get ok => 'OK';

  @override
  String get olderVersions => 'Versões Antigas';

  @override
  String get rebootLater => 'Reiniciar mais tarde';

  @override
  String get rebootNow => 'Reiniciar agora';

  @override
  String get rebootConfirmMessage =>
      'Tem de reiniciar o seu dispositivo para concluir a atualização. Certifique-se que o dispositivo está ligado ou totalmente carregado. Guarde os seus ficheiros antes de reiniciar para evitar a perda de dados.';

  @override
  String get rebootConfirmTitle => 'Reinicie para concluir esta atualização';

  @override
  String get reinstall => 'Reinstalar';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Reinstalar a versão <b>$current</b> do <b>$name</b>?';
  }

  @override
  String get showReleases => 'Mostrar Lançamentos';

  @override
  String get showUpdates => 'Mostrar Atualizações';

  @override
  String get update => 'Atualizar';

  @override
  String get updateAvailable => 'Disponível atualização';

  @override
  String get updateChecksums => 'Update Checksums';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Update device checksums of <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo =>
      'This will record the current cryptographic hashes as verified.';

  @override
  String get updateToLatest => 'Atualizar para Mais Recente';

  @override
  String updateConfirm(String name, String version) {
    return 'Atualizar o <b>$name</b> para a versão <b>$version</b>?';
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
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get affectsFdeWarningTitle =>
      'Você pode perder todos os seus dados sem as chaves de recuperação';

  @override
  String get affectsFdeWarningUbuntuFdeTitle =>
      'Você pode perder todos os seus dados sem a chave de recuperação';

  @override
  String get affectsFdeWarningOtherFdeBody =>
      'Certifique-se de ter as chaves de recuperação para todos os discos criptografados. Pode ser necessário inseri-las na inicialização após a atualização do firmware.';

  @override
  String get affectsFdeWarningUbuntuFdeBody =>
      'A criptografia baseada em hardware está ativada no seu computador. Pode ser necessário inserir a chave de recuperação na inicialização após a atualização do firmware. Certifique-se de também possuir as chaves de recuperação para quaisquer outros discos criptografados neste computador.';

  @override
  String get affectsFdeWarningBitlockerBody =>
      'O BitLocker está ativado no seu computador. Certifique-se de ter as chaves de recuperação para todos os discos criptografados. Talvez seja necessário inseri-las na inicialização após a atualização do firmware.';

  @override
  String get affectsFdeCheckbox =>
      'Tenho as chaves de recuperação para todas as minhas unidades criptografadas';

  @override
  String get affectsFdeTextFieldLabel => 'Digite sua chave de recuperação';

  @override
  String get affectsFdeLinkLabel => 'Saber mais';

  @override
  String get affectsFdeIncorrectKey =>
      'A chave de recuperação não funciona. Verifique ou substitua-a na Central de Segurança';

  @override
  String get allVersions => 'Todas as Versões';

  @override
  String get appTitle => 'Atualizador de Firmware';

  @override
  String get batteryWarning =>
      'Aviso: algumas atualizações de dispositivos podem estar disponíveis apenas com alimentação de energia externa!';

  @override
  String get checksum => 'Soma de verificação';

  @override
  String get close => 'Fechar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get current => 'Atual';

  @override
  String get deviceUnavailable =>
      'O dispositivo ficará indisponível durante esta ação.';

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
  String get fwupdDeviceFlagOnlyOffline =>
      'Atualização requer uma reinicialização';

  @override
  String get fwupdDeviceFlagRequireAc =>
      'O sistema requer fonte de alimentação externa';

  @override
  String get fwupdDeviceFlagLocked => 'O dispositivo está bloqueado';

  @override
  String get fwupdDeviceFlagSupported => 'Suportado no servidor remoto';

  @override
  String get fwupdDeviceFlagNeedsBootloader =>
      'Requer um carregador de inicialização';

  @override
  String get fwupdDeviceFlagRegistered => 'Registrado';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'Requer uma reinicialização após a instalação';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'Requer um desligamento após a instalação';

  @override
  String get fwupdDeviceFlagReported => 'Reportado ao servidor remoto';

  @override
  String get fwupdDeviceFlagNotified => 'O usuário foi notificado';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'Instalar primeiro no dispositivo pai';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Está no modo bootloader';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'O hardware está aguardando para ser reconectado';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'Ignorar verificações de validação de segurança';

  @override
  String get fwupdDeviceFlagTrusted => 'Confiável';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'Atualização de dispositivo precisa de ativação';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'O dispositivo não reaparecerá após a conclusão da atualização';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'A verificação de hash criptográfico está disponível';

  @override
  String get fwupdDeviceFlagDualImage =>
      'Atualizações de estágios do dispositivo';

  @override
  String get fwupdDeviceFlagSelfRecovery =>
      'O dispositivo pode recuperar falhas de flash';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'O dispositivo pode ser usado durante a atualização';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'O firmware do dispositivo é necessário para verificar a versão';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'O dispositivo é necessário para instalar todas as versões fornecidas';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'O dispositivo suporta a mudança para uma ramificação diferente de firmware';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'O dispositivo fará backup do firmware antes da instalação';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'Todos os dispositivos do mesmo tipo serão atualizados ao mesmo tempo';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Somente atualizações de versão são permitidas';

  @override
  String get fwupdDeviceFlagUnreachable => 'O dispositivo está inacessível';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Segredos de criptografia de disco completo podem ser invalidados durante a atualização';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Fim da vida útil';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Carga Assinada';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Carga Não Assinada';

  @override
  String get fwupdErrorInternal => 'Erro interno';

  @override
  String get fwupdErrorVersionNewer =>
      'Versão de firmware mais recente instalada';

  @override
  String get fwupdErrorVersionSame => 'Instalada a mesma versão de firmware';

  @override
  String get fwupdErrorAlreadyPending =>
      'Já definido para ser instalado offline';

  @override
  String get fwupdErrorAuthFailed => 'Falha ao obter autenticação';

  @override
  String get fwupdErrorRead => 'Falha ao ler do dispositivo';

  @override
  String get fwupdErrorWrite => 'Falha ao gravar no dispositivo';

  @override
  String get fwupdErrorInvalidFile => 'Formato de arquivo inválido';

  @override
  String get fwupdErrorNotFound =>
      'Não existe nenhum dispositivo correspondente';

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
  String get fwupdErrorBrokenSystem =>
      'O usuário configurou seu sistema de forma quebrada';

  @override
  String get fwupdErrorBatteryLevelTooLow =>
      'O nível da bateria do sistema é muito baixo';

  @override
  String get fwupdErrorNeedsUserAction =>
      'O usuário precisa executar uma ação para concluir a atualização';

  @override
  String get fwupdErrorAuthExpired =>
      'Falha ao obter a autenticação porque as credenciais expiraram';

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
  String get rebootConfirmMessage =>
      'Você deve reiniciar seu dispositivo para concluir a atualização. Certifique-se de que seu dispositivo esteja conectado ou totalmente carregado. Salve seus arquivos antes de reiniciar para evitar perda de dados.';

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
  String get updateChecksumsInfo =>
      'Isso registrará os hashes criptográficos atuais conforme verificados.';

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
