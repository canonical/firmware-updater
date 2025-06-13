// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get affectsFdeWarningTitle => 'You may lose all your data without recovery keys';

  @override
  String get affectsFdeWarningBody1 => 'You may need to enter it on boot after updating firmware. Make sure you also have recovery keys for any other encrypted drives on this computer.';

  @override
  String get affectsFdeWarningBody2 => 'You need to provide a recovery key because you enabled hardware-backed encryption.';

  @override
  String get affectsFdeTextFieldLabel => 'Enter your recovery key';

  @override
  String get affectsFdeLinkLabel => 'Learn more';

  @override
  String get affectsFdeIncorrectKey => 'Recovery key does not work, check or replace it in the Security Center';

  @override
  String get allVersions => 'すべてのバージョン';

  @override
  String get appTitle => 'ファームウェアのアップデート';

  @override
  String get batteryWarning => '注意: デバイスによってはアップデートに外部電源が必要な場合があります！';

  @override
  String get checksum => 'Checksum';

  @override
  String get close => '閉じる';

  @override
  String get cancel => 'キャンセル';

  @override
  String get current => '現在';

  @override
  String get deviceUnavailable => '操作中はデバイスを使用できません。';

  @override
  String get deviceRequest => 'デバイスのリクエスト';

  @override
  String get downgrade => 'ダウングレード';

  @override
  String downgradeConfirm(String name, String version) {
    return '<b>$name</b> から <b>$version</b> へダウングレードしますか？';
  }

  @override
  String get flags => 'フラグ';

  @override
  String get fwupdDeviceFlagInternal => '';

  @override
  String get fwupdDeviceFlagUpdatable => '';

  @override
  String get fwupdDeviceFlagOnlyOffline => '';

  @override
  String get fwupdDeviceFlagRequireAc => '';

  @override
  String get fwupdDeviceFlagLocked => '';

  @override
  String get fwupdDeviceFlagSupported => '';

  @override
  String get fwupdDeviceFlagNeedsBootloader => '';

  @override
  String get fwupdDeviceFlagRegistered => '';

  @override
  String get fwupdDeviceFlagNeedsReboot => '';

  @override
  String get fwupdDeviceFlagNeedsShutdown => '';

  @override
  String get fwupdDeviceFlagReported => '';

  @override
  String get fwupdDeviceFlagNotified => '';

  @override
  String get fwupdDeviceFlagInstallParentFirst => '';

  @override
  String get fwupdDeviceFlagIsBootloader => '';

  @override
  String get fwupdDeviceFlagWaitForReplug => '';

  @override
  String get fwupdDeviceFlagIgnoreValidation => '';

  @override
  String get fwupdDeviceFlagTrusted => '';

  @override
  String get fwupdDeviceFlagNeedsActivation => '';

  @override
  String get fwupdDeviceFlagWillDisappear => '';

  @override
  String get fwupdDeviceFlagCanVerify => '';

  @override
  String get fwupdDeviceFlagDualImage => '';

  @override
  String get fwupdDeviceFlagSelfRecovery => '';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => '';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => '';

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
  String get fwupdErrorInternal => 'Internal error';

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
  String get guid => 'GUID';

  @override
  String get installError => 'ファームウェアのインストールに失敗しました！';

  @override
  String get noDevicesFound => 'デバイスが見つかりません';

  @override
  String get ok => 'OK';

  @override
  String get olderVersions => '古いバージョン';

  @override
  String get rebootLater => '後ほど再起動';

  @override
  String get rebootNow => '今すぐ再起動';

  @override
  String get rebootConfirmMessage => 'デバイスのアップデートを完了するには再起動が必要です。デバイスに電力を供給するか、満タンまで充電してください。再起動前にファイルを保存すると、データを失うことはないでしょう。';

  @override
  String get rebootConfirmTitle => 'アップデートを完了するために再起動';

  @override
  String get reinstall => '再インストール';

  @override
  String reinstallConfirm(String name, String current) {
    return '<b>$name</b> バージョン <b>$current</b> を再インストールしますか？';
  }

  @override
  String get showReleases => 'リリースを表示';

  @override
  String get showUpdates => 'アップデートを表示';

  @override
  String get update => 'アップデート';

  @override
  String get updateAvailable => 'アップデートがあります';

  @override
  String get updateChecksums => 'チェックサムのアップデート';

  @override
  String updateChecksumsConfirm(String name) {
    return '<b>$name</b> のチェックサムをアップデートしますか？';
  }

  @override
  String get updateChecksumsInfo => '現在の暗号化ハッシュを認証で使用するのに保存じます。';

  @override
  String get updateToLatest => '最新版にアップデート';

  @override
  String updateConfirm(String name, String version) {
    return '<b>$name</b> を <b>$version</b> にアップデートしますか？';
  }

  @override
  String get vendor => 'ベンダー';

  @override
  String get verifyFirmware => 'ファームウェアの照合';

  @override
  String verifyFirmwareConfirm(String name) {
    return '$name のファームウェアチェックサムを照合しますか？';
  }

  @override
  String get currentVersion => '現在のバージョン';

  @override
  String get minVersion => '最小バージョン';

  @override
  String get latestVersion => '最新バージョン';
}
