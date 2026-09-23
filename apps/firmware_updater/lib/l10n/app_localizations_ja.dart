// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get affectsFdeWarningTitle => 'リカバリーキーがないと、すべてのデータを失う可能性があります';

  @override
  String get affectsFdeWarningUbuntuFdeTitle =>
      'リカバリーキーがないと、すべてのデータを失う可能性があります';

  @override
  String get affectsFdeWarningOtherFdeBody =>
      'すべての暗号化されたディスクについて、リカバリーキーを持っていることを確認してください。ファームウェアの更新後、起動時にキーの入力を求められることがあります。';

  @override
  String get affectsFdeWarningUbuntuFdeBody =>
      'このコンピューターでは、ハードウェアベースの暗号化が有効になっています。ファームウェアの更新後、起動時にリカバリーキーの入力を求められることがあります。他の暗号化されたディスクについても、キーが用意されていることを確認してください。';

  @override
  String get affectsFdeWarningBitlockerBody =>
      'このコンピューターでは、BitLockerが有効になっています。すべての暗号化されたディスクについて、リカバリーキーを持っていることを確認してください。ファームウェアの更新後、起動時にキーの入力を求められることがあります。';

  @override
  String get affectsFdeCheckbox => '暗号化されたすべてのディスクのリカバリーキーを持っています';

  @override
  String get affectsFdeTextFieldLabel => 'リカバリーキーを入力';

  @override
  String get affectsFdeLinkLabel => '詳しく見る';

  @override
  String get affectsFdeIncorrectKey =>
      'リカバリーキーが使用できません。セキュリティセンターで確認するか、新しいキーに置き換えてください';

  @override
  String get allVersions => 'すべてのバージョン';

  @override
  String get appTitle => 'ファームウェアのアップデート';

  @override
  String get batteryWarning => '注意: デバイスによってはアップデートに外部電源が必要な場合があります！';

  @override
  String get checksum => 'チェックサム';

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
  String get fwupdDeviceFlagInternal => '内蔵デバイス';

  @override
  String get fwupdDeviceFlagUpdatable => 'アップデート可能';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'アップデートするには再起動が必要です';

  @override
  String get fwupdDeviceFlagRequireAc => '外部電源への接続が必要です';

  @override
  String get fwupdDeviceFlagLocked => 'デバイスはロックされています';

  @override
  String get fwupdDeviceFlagSupported => 'リモートサーバーに登録されています';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'ブートローダーモードが必要です';

  @override
  String get fwupdDeviceFlagRegistered => '登録済み';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'インストール後に再起動が必要です';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'インストール後に電源オフが必要です';

  @override
  String get fwupdDeviceFlagReported => 'リモートサーバーに報告済み';

  @override
  String get fwupdDeviceFlagNotified => 'ユーザーに通知済み';

  @override
  String get fwupdDeviceFlagInstallParentFirst => '親デバイスを先に更新します';

  @override
  String get fwupdDeviceFlagIsBootloader => 'ブートローダーモードです';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'デバイスの再接続を待機しています';

  @override
  String get fwupdDeviceFlagIgnoreValidation => '検証時の安全チェックを無視';

  @override
  String get fwupdDeviceFlagTrusted => '信頼済み';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'デバイスのアップデートには別途有効化が必要です';

  @override
  String get fwupdDeviceFlagWillDisappear => 'アップデート完了後、デバイスは再認識されません';

  @override
  String get fwupdDeviceFlagCanVerify => '暗号学的ハッシュ検証が利用可能です';

  @override
  String get fwupdDeviceFlagDualImage => 'デバイスはアップデートを段階的に適用します';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'デバイスはファームウェア更新に失敗しても復旧できます';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => 'アップデート中もデバイスは使用可能です';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'デバイスファームウェアにはバージョンチェックが必要です';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'デバイスは提供されたすべてのリリースをインストールする必要があります';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'デバイスは異なるファームウェアブランチへの切り替えに対応しています';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'デバイスはインストール前にファームウェアをバックアップします';

  @override
  String get fwupdDeviceFlagWildcardInstall => '同じ種類のすべてのデバイスは同時に更新されます';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => 'バージョンアップグレードのみが許可されています';

  @override
  String get fwupdDeviceFlagUnreachable => 'デバイスに接続できません';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'アップデート後、フルディスク暗号化の解除にリカバリーキーが必要になる場合があります';

  @override
  String get fwupdDeviceFlagEndOfLife => 'サポート終了';

  @override
  String get fwupdDeviceFlagSignedPayload => '署名済みペイロード';

  @override
  String get fwupdDeviceFlagUnsignedPayload => '未署名ペイロード';

  @override
  String get fwupdErrorInternal => '内部エラー';

  @override
  String get fwupdErrorVersionNewer => 'より新しいファームウェアがインストールされています';

  @override
  String get fwupdErrorVersionSame => '同じバージョンのファームウェアがインストールされています';

  @override
  String get fwupdErrorAlreadyPending => 'オフラインでのインストールがすでに予約されています';

  @override
  String get fwupdErrorAuthFailed => '認証に失敗しました';

  @override
  String get fwupdErrorRead => 'デバイスからの読み込みに失敗しました';

  @override
  String get fwupdErrorWrite => 'デバイスへの書き込みに失敗しました';

  @override
  String get fwupdErrorInvalidFile => '無効なファイル形式です';

  @override
  String get fwupdErrorNotFound => '該当するデバイスがありません';

  @override
  String get fwupdErrorNothingToDo => '実行できる処理がありません';

  @override
  String get fwupdErrorNotSupported => '操作を実行できませんでした';

  @override
  String get fwupdErrorSignatureInvalid => '署名が無効です';

  @override
  String get fwupdErrorAcPowerRequired => '電源への接続が必要です';

  @override
  String get fwupdErrorPermissionDenied => '操作が拒否されました';

  @override
  String get fwupdErrorBrokenSystem => 'システムが正しく構成されていません';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'バッテリー残量が少なすぎます';

  @override
  String get fwupdErrorNeedsUserAction => '更新を完了するには操作が必要です';

  @override
  String get fwupdErrorAuthExpired => '認証情報の有効期限が切れているため、認証できませんでした';

  @override
  String get fwupdErrorUnknown => '不明なエラーが発生しました';

  @override
  String get fwupdStatusUnknown => '状態を確認できません';

  @override
  String get fwupdStatusIdle => '待機';

  @override
  String get fwupdStatusLoading => 'リソースを読み込み中';

  @override
  String get fwupdStatusDecompressing => 'ファームウェアを展開中';

  @override
  String get fwupdStatusDeviceRestart => 'デバイスを再起動しています';

  @override
  String get fwupdStatusDeviceWrite => 'デバイスに書き込んでいます';

  @override
  String get fwupdStatusDeviceVerify => 'デバイスを検証しています';

  @override
  String get fwupdStatusScheduling => 'オフライン更新を予約しています';

  @override
  String get fwupdStatusDownloading => 'ファイルをダウンロード中';

  @override
  String get fwupdStatusDeviceRead => 'デバイスから読み込み中';

  @override
  String get fwupdStatusDeviceErase => 'デバイスを消去しています';

  @override
  String get fwupdStatusWaitingForAuth => '認証を待っています';

  @override
  String get fwupdStatusDeviceBusy => 'デバイスの応答を待っています';

  @override
  String get fwupdStatusShutdown => 'デーモンを終了しています';

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
  String get rebootConfirmMessage =>
      'デバイスのアップデートを完了するには再起動が必要です。デバイスに電力を供給するか、満タンまで充電してください。再起動前にファイルを保存すると、データを失うことはないでしょう。';

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
  String get updateChecksumsInfo => '現在の暗号化ハッシュを認証で使用するのに保存します。';

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
