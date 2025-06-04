// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get affectsFdeWarningTitle => '没有恢复密钥，您可能丢失所有数据';

  @override
  String get affectsFdeWarningBody1 => '请确保您有所有加密驱动器的恢复密钥。更新固件后您将需要在启动时输入它们。';

  @override
  String get affectsFdeWarningBody2 => '您需要恢复密钥，因为您的计算机在 Ubuntu 或其他操作系统上启用了硬件支持的加密。';

  @override
  String get affectsFdeTextFieldLabel => 'Enter your recovery key';

  @override
  String get affectsFdeLinkLabel => 'Learn more';

  @override
  String get affectsFdeIncorrectKey => 'Recovery key does not work, check or replace it in the Security Center';

  @override
  String get allVersions => '全部版本';

  @override
  String get appTitle => '固件更新器';

  @override
  String get batteryWarning => '警告：部分设备更新仅能在连接外部电源后才能进行！';

  @override
  String get checksum => '校验和';

  @override
  String get close => '关闭';

  @override
  String get cancel => '取消';

  @override
  String get current => '当前';

  @override
  String get deviceUnavailable => '执行该操作时，设备将无法使用。';

  @override
  String get deviceRequest => '设备请求';

  @override
  String get downgrade => '降级';

  @override
  String downgradeConfirm(String name, String version) {
    return '将 <b>$name</b> 降级到 <b>$version</b>？';
  }

  @override
  String get flags => '标记';

  @override
  String get fwupdDeviceFlagInternal => '内部设备';

  @override
  String get fwupdDeviceFlagUpdatable => '可更新';

  @override
  String get fwupdDeviceFlagOnlyOffline => '更新后需要重启';

  @override
  String get fwupdDeviceFlagRequireAc => '需要外接电源';

  @override
  String get fwupdDeviceFlagLocked => '设备已锁定';

  @override
  String get fwupdDeviceFlagSupported => '远程服务器支持';

  @override
  String get fwupdDeviceFlagNeedsBootloader => '需要引导器';

  @override
  String get fwupdDeviceFlagRegistered => '已注册';

  @override
  String get fwupdDeviceFlagNeedsReboot => '安装后需要重启';

  @override
  String get fwupdDeviceFlagNeedsShutdown => '安装后需要关机';

  @override
  String get fwupdDeviceFlagReported => '已报告给远程服务器';

  @override
  String get fwupdDeviceFlagNotified => '用户已被通知';

  @override
  String get fwupdDeviceFlagInstallParentFirst => '先安装到上级设备';

  @override
  String get fwupdDeviceFlagIsBootloader => '正在引导器模式中';

  @override
  String get fwupdDeviceFlagWaitForReplug => '正在等待重插拔';

  @override
  String get fwupdDeviceFlagIgnoreValidation => '忽略安全检查';

  @override
  String get fwupdDeviceFlagTrusted => '已信任';

  @override
  String get fwupdDeviceFlagNeedsActivation => '设备更新需要激活';

  @override
  String get fwupdDeviceFlagWillDisappear => '设备在更新完成后不会重新显示';

  @override
  String get fwupdDeviceFlagCanVerify => '哈希验证可用';

  @override
  String get fwupdDeviceFlagDualImage => '设备阶段更新';

  @override
  String get fwupdDeviceFlagSelfRecovery => '设备可以自动从固件刷写故障中恢复';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => '设备在更新期间仍然可以使用';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => '设备固件需要检查版本';

  @override
  String get fwupdDeviceFlagInstallAllReleases => '设备需要安装已提供的所有发行版本';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => '设备支持将固件迁移至另一个不同的分支';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => '设备安装新固件时会自动备份原来的固件';

  @override
  String get fwupdDeviceFlagWildcardInstall => '所有同类型设备需要一起更新';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => '仅允许更新，不允许降级';

  @override
  String get fwupdDeviceFlagUnreachable => '无法访问设备';

  @override
  String get fwupdDeviceFlagAffectsFde => '全盘加密的密钥可能会在更新时被删除';

  @override
  String get fwupdDeviceFlagEndOfLife => '已停止支持';

  @override
  String get fwupdDeviceFlagSignedPayload => '固件包有签名';

  @override
  String get fwupdDeviceFlagUnsignedPayload => '固件包无签名';

  @override
  String get fwupdErrorInternal => '内部错误';

  @override
  String get fwupdErrorVersionNewer => '已安装更新版本的固件';

  @override
  String get fwupdErrorVersionSame => '已安装相同版本的固件';

  @override
  String get fwupdErrorAlreadyPending => '已设置为离线安装';

  @override
  String get fwupdErrorAuthFailed => '鉴权失败';

  @override
  String get fwupdErrorRead => '无法从设备读取数据';

  @override
  String get fwupdErrorWrite => '无法向设备写入数据';

  @override
  String get fwupdErrorInvalidFile => '文件格式无效';

  @override
  String get fwupdErrorNotFound => '无匹配设备';

  @override
  String get fwupdErrorNothingToDo => '无事可做';

  @override
  String get fwupdErrorNotSupported => '该操作无法进行';

  @override
  String get fwupdErrorSignatureInvalid => '签名无效';

  @override
  String get fwupdErrorAcPowerRequired => '需要插入交流电源';

  @override
  String get fwupdErrorPermissionDenied => '权限不足';

  @override
  String get fwupdErrorBrokenSystem => '用户的系统配置有误';

  @override
  String get fwupdErrorBatteryLevelTooLow => '电池电量低';

  @override
  String get fwupdErrorNeedsUserAction => '需要手动执行操作才能完成更新';

  @override
  String get fwupdErrorAuthExpired => '由于授权凭证已过期，获取授权失败';

  @override
  String get fwupdErrorUnknown => '未知错误';

  @override
  String get fwupdStatusUnknown => '未知状态';

  @override
  String get fwupdStatusIdle => '空闲';

  @override
  String get fwupdStatusLoading => '正在加载资源';

  @override
  String get fwupdStatusDecompressing => '正在解压固件包';

  @override
  String get fwupdStatusDeviceRestart => '正在重启设备';

  @override
  String get fwupdStatusDeviceWrite => '正在向设备写入数据';

  @override
  String get fwupdStatusDeviceVerify => '正在验证设备数据';

  @override
  String get fwupdStatusScheduling => '正在计划离线更新';

  @override
  String get fwupdStatusDownloading => '正在下载文件';

  @override
  String get fwupdStatusDeviceRead => '正在从设备读取数据';

  @override
  String get fwupdStatusDeviceErase => '正在抹除设备固件数据';

  @override
  String get fwupdStatusWaitingForAuth => '正在等待鉴权';

  @override
  String get fwupdStatusDeviceBusy => '设备正忙';

  @override
  String get fwupdStatusShutdown => '守护程序正在关闭';

  @override
  String get guid => 'GUID';

  @override
  String get installError => '无法安装固件！';

  @override
  String get noDevicesFound => '未找到设备';

  @override
  String get ok => '好';

  @override
  String get olderVersions => '旧版本';

  @override
  String get rebootLater => '稍后重启';

  @override
  String get rebootNow => '立即重启';

  @override
  String get rebootConfirmMessage => '您必须重新启动设备才能完成更新。请确保您的设备已插入电源或完全充满电。请在重新启动前保存所有文件，以免丢失数据。';

  @override
  String get rebootConfirmTitle => '重启以完成本次更新';

  @override
  String get reinstall => '重新安装';

  @override
  String reinstallConfirm(String name, String current) {
    return '重新安装 <b>$name</b> 的 <b>$current</b> 版本固件包？';
  }

  @override
  String get showReleases => '查看发行版本';

  @override
  String get showUpdates => '查看更新';

  @override
  String get update => '更新';

  @override
  String get updateAvailable => '可更新';

  @override
  String get updateChecksums => '更新校验和';

  @override
  String updateChecksumsConfirm(String name) {
    return '要更新 <b>$name</b> 的设备校验和吗？';
  }

  @override
  String get updateChecksumsInfo => '这将记录当前加密哈希值的状态为已验证。';

  @override
  String get updateToLatest => '升级到最新';

  @override
  String updateConfirm(String name, String version) {
    return '将 <b>$name</b> 更新到 <b>$version</b>？';
  }

  @override
  String get vendor => '厂商';

  @override
  String get verifyFirmware => '验证固件';

  @override
  String verifyFirmwareConfirm(String name) {
    return '要校验 $name 的固件校验和吗？';
  }

  @override
  String get currentVersion => '当前版本';

  @override
  String get minVersion => '最低版本';

  @override
  String get latestVersion => '最新版本';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw(): super('zh_TW');

  @override
  String get affectsFdeWarningTitle => '如果沒有復原金鑰，您可能會失去所有資料';

  @override
  String get affectsFdeWarningBody1 => '確保您擁有所有加密磁碟機的復原金鑰。更新韌體後，您需要在開機時輸入它們。';

  @override
  String get affectsFdeWarningBody2 => '您需要復原金鑰，因為您在這台電腦的 Ubuntu 或其他作業系統中啟用了硬體支援加密。';

  @override
  String get affectsFdeLinkLabel => '了解更多';

  @override
  String get allVersions => '所有版本';

  @override
  String get appTitle => '韌體更新工具';

  @override
  String get batteryWarning => '警告：某些裝置更新可能只能在插入外接電源時進行！';

  @override
  String get checksum => '檢查碼';

  @override
  String get close => '關閉';

  @override
  String get cancel => '取消';

  @override
  String get current => '目前';

  @override
  String get deviceUnavailable => '此操作進行時，裝置將無法使用。';

  @override
  String get deviceRequest => '裝置請求';

  @override
  String get downgrade => '降級';

  @override
  String downgradeConfirm(String name, String version) {
    return '將 <b>$name</b> 降級到 <b>$version</b>？';
  }

  @override
  String get flags => '標誌';

  @override
  String get fwupdDeviceFlagInternal => '內部裝置';

  @override
  String get fwupdDeviceFlagUpdatable => '可更新';

  @override
  String get fwupdDeviceFlagOnlyOffline => '更新需要重新啟動';

  @override
  String get fwupdDeviceFlagRequireAc => '系統需要外接電源';

  @override
  String get fwupdDeviceFlagLocked => '裝置已鎖定';

  @override
  String get fwupdDeviceFlagSupported => '遠端伺服器支援';

  @override
  String get fwupdDeviceFlagNeedsBootloader => '需要開機引導程式 (bootloader)';

  @override
  String get fwupdDeviceFlagRegistered => '已註冊';

  @override
  String get fwupdDeviceFlagNeedsReboot => '安裝後需要重新啟動';

  @override
  String get fwupdDeviceFlagNeedsShutdown => '安裝後需要關機';

  @override
  String get fwupdDeviceFlagReported => '已回報至遠端伺服器';

  @override
  String get fwupdDeviceFlagNotified => '已通知使用者';

  @override
  String get fwupdDeviceFlagInstallParentFirst => '先安裝至上層裝置';

  @override
  String get fwupdDeviceFlagIsBootloader => '處於開機引導程式模式';

  @override
  String get fwupdDeviceFlagWaitForReplug => '硬體正在等待重新插入';

  @override
  String get fwupdDeviceFlagIgnoreValidation => '忽略驗證安全檢查';

  @override
  String get fwupdDeviceFlagTrusted => '受信任';

  @override
  String get fwupdDeviceFlagNeedsActivation => '裝置更新需要啟動';

  @override
  String get fwupdDeviceFlagWillDisappear => '更新完成後，裝置將不會再出現';

  @override
  String get fwupdDeviceFlagCanVerify => '可進行加密雜湊驗證';

  @override
  String get fwupdDeviceFlagDualImage => '裝置分階段更新';

  @override
  String get fwupdDeviceFlagSelfRecovery => '裝置可以從更新失敗中復原';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => '更新期間裝置可用';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => '裝置韌體需要進行版本檢查';

  @override
  String get fwupdDeviceFlagInstallAllReleases => '裝置需要安裝全部的更新';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => '裝置支援切換到不同的韌體分支';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => '裝置將在安裝前備份韌體';

  @override
  String get fwupdDeviceFlagWildcardInstall => '所有相同類型的裝置將同時更新';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => '只允許版本升級';

  @override
  String get fwupdDeviceFlagUnreachable => '裝置無法連接';

  @override
  String get fwupdDeviceFlagAffectsFde => '更新時可能會使全磁碟加密的秘密無效';

  @override
  String get fwupdDeviceFlagEndOfLife => '終止生命週期';

  @override
  String get fwupdDeviceFlagSignedPayload => '已簽名的承載';

  @override
  String get fwupdDeviceFlagUnsignedPayload => '未簽名的承載';

  @override
  String get fwupdErrorInternal => '內部錯誤';

  @override
  String get fwupdErrorVersionNewer => '已安裝較新的韌體版本';

  @override
  String get fwupdErrorVersionSame => '已安裝相同的韌體版本';

  @override
  String get fwupdErrorAlreadyPending => '已設定為離線安裝';

  @override
  String get fwupdErrorAuthFailed => '取得驗證失敗';

  @override
  String get fwupdErrorRead => '無法從裝置讀取';

  @override
  String get fwupdErrorWrite => '無法寫入裝置';

  @override
  String get fwupdErrorInvalidFile => '無效的檔案格式';

  @override
  String get fwupdErrorNotFound => '不存在匹配的裝置';

  @override
  String get fwupdErrorNothingToDo => '無事可做';

  @override
  String get fwupdErrorNotSupported => '無法進行操作';

  @override
  String get fwupdErrorSignatureInvalid => '簽名無效';

  @override
  String get fwupdErrorAcPowerRequired => '需要交流電源';

  @override
  String get fwupdErrorPermissionDenied => '權限被拒絕';

  @override
  String get fwupdErrorBrokenSystem => '使用者以錯誤的方式配置了他們的系統';

  @override
  String get fwupdErrorBatteryLevelTooLow => '系統電池電量過低';

  @override
  String get fwupdErrorNeedsUserAction => '使用者需要進行操作以完成更新';

  @override
  String get fwupdErrorAuthExpired => '由於憑證已過期，無法取得驗證';

  @override
  String get fwupdErrorUnknown => '未知錯誤';

  @override
  String get fwupdStatusUnknown => '未知狀態';

  @override
  String get fwupdStatusIdle => '閒置';

  @override
  String get fwupdStatusLoading => '正在載入資源';

  @override
  String get fwupdStatusDecompressing => '正在解壓縮韌體';

  @override
  String get fwupdStatusDeviceRestart => '正在重新啟動裝置';

  @override
  String get fwupdStatusDeviceWrite => '正在寫入裝置';

  @override
  String get fwupdStatusDeviceVerify => '正在驗證（讀取）裝置';

  @override
  String get fwupdStatusScheduling => '正在排程離線更新';

  @override
  String get fwupdStatusDownloading => '正在下載檔案';

  @override
  String get fwupdStatusDeviceRead => '正在從裝置讀取';

  @override
  String get fwupdStatusDeviceErase => '正在清除裝置';

  @override
  String get fwupdStatusWaitingForAuth => '正在等待驗證';

  @override
  String get fwupdStatusDeviceBusy => '裝置忙碌中';

  @override
  String get fwupdStatusShutdown => '服務正在關閉';

  @override
  String get guid => 'GUID';

  @override
  String get installError => '韌體安裝失敗！';

  @override
  String get noDevicesFound => '沒有找到裝置';

  @override
  String get ok => '確定';

  @override
  String get olderVersions => '較舊的版本';

  @override
  String get rebootLater => '稍後重新啟動';

  @override
  String get rebootNow => '立即重新啟動';

  @override
  String get rebootConfirmMessage => '您必須重新啟動裝置以完成更新。請確保您的裝置已插入電源或已充滿電。重新啟動前請儲存您的檔案，以避免資料遺失。';

  @override
  String get rebootConfirmTitle => '重新啟動以完成此更新';

  @override
  String get reinstall => '重新安裝';

  @override
  String reinstallConfirm(String name, String current) {
    return '重新安裝 <b>$name</b> 版本 <b>$current</b>？';
  }

  @override
  String get showReleases => '顯示版本';

  @override
  String get showUpdates => '顯示更新';

  @override
  String get update => '更新';

  @override
  String get updateAvailable => '有可用更新';

  @override
  String get updateChecksums => '更新檢查碼';

  @override
  String updateChecksumsConfirm(String name) {
    return '更新 <b>$name</b> 的裝置檢查碼？';
  }

  @override
  String get updateChecksumsInfo => '這將記錄當前已驗證的加密雜湊。';

  @override
  String get updateToLatest => '更新至最新版';

  @override
  String updateConfirm(String name, String version) {
    return '將 <b>$name</b> 更新至 <b>$version</b>？';
  }

  @override
  String get vendor => '供應商';

  @override
  String get verifyFirmware => '驗證韌體';

  @override
  String verifyFirmwareConfirm(String name) {
    return '驗證 $name 的韌體檢查碼？';
  }

  @override
  String get currentVersion => '目前版本';

  @override
  String get minVersion => '最低版本';

  @override
  String get latestVersion => '最新版本';
}
