// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get affectsFdeWarningTitle => '복구 키가 없으면 저장된 자료를 모두 잃게 됩니다';

  @override
  String get affectsFdeWarningBody1 =>
      '모든 암호화된 드라이브에 대해 복구 키를 보관하고 있는지 확인하십시오. 펌웨어를 업데이트한 후에 부팅 시 복구 키를 입력해야 합니다.';

  @override
  String get affectsFdeWarningBody2 =>
      'Ubuntu나 이 컴퓨터에 있는 다른 운영 체제에서 하드웨어 기반 암호화를 활성화하였기 때문에 복구 키가 필요합니다.';

  @override
  String get affectsFdeTextFieldLabel => 'Enter your recovery key';

  @override
  String get affectsFdeLinkLabel => 'Learn more';

  @override
  String get affectsFdeIncorrectKey =>
      'Recovery key does not work, check or replace it in the Security Center';

  @override
  String get allVersions => '모든 버전';

  @override
  String get appTitle => '펌웨어 업데이터';

  @override
  String get batteryWarning => '경고: 일부 장치 업데이트는 전원에 연결한 상태에서만 가능합니다!';

  @override
  String get checksum => '체크섬';

  @override
  String get close => '닫기';

  @override
  String get cancel => '취소';

  @override
  String get current => '현재';

  @override
  String get deviceUnavailable => '이 동작 중에는 장치를 사용할 수 없습니다.';

  @override
  String get deviceRequest => '장치 요청';

  @override
  String get downgrade => '다운그레이드';

  @override
  String downgradeConfirm(String name, String version) {
    return '<b>$name</b> 을(를) <b>$version</b> 버전으로 다운그레이드 하겠습니까?';
  }

  @override
  String get flags => '플래그';

  @override
  String get fwupdDeviceFlagInternal => '내부 장치';

  @override
  String get fwupdDeviceFlagUpdatable => '업데이트 가능';

  @override
  String get fwupdDeviceFlagOnlyOffline => '업데이트하려면 다시 시작해야 합니다';

  @override
  String get fwupdDeviceFlagRequireAc => '시스템에 외부 전원을 연결해야 합니다';

  @override
  String get fwupdDeviceFlagLocked => '장치가 잠겼습니다';

  @override
  String get fwupdDeviceFlagSupported => '원격 서버에서 지원';

  @override
  String get fwupdDeviceFlagNeedsBootloader => '부트로더 필요';

  @override
  String get fwupdDeviceFlagRegistered => '등록됨';

  @override
  String get fwupdDeviceFlagNeedsReboot => '설치 후 재부팅 필요';

  @override
  String get fwupdDeviceFlagNeedsShutdown => '설치 후에 시스템 종료 필요';

  @override
  String get fwupdDeviceFlagReported => '원격 서버에 보고됨';

  @override
  String get fwupdDeviceFlagNotified => 'User has been notified';

  @override
  String get fwupdDeviceFlagInstallParentFirst => '부모 장치에 먼저 설치하십시오';

  @override
  String get fwupdDeviceFlagIsBootloader => '부트로더 모드에 있음';

  @override
  String get fwupdDeviceFlagWaitForReplug => '하드웨어가 재연결을 기다리는 중';

  @override
  String get fwupdDeviceFlagIgnoreValidation => '유효성 검사 무시';

  @override
  String get fwupdDeviceFlagTrusted => '신뢰함';

  @override
  String get fwupdDeviceFlagNeedsActivation => '장치를 업데이트하려면 활성화해야 함';

  @override
  String get fwupdDeviceFlagWillDisappear => '업데이트 완료 후에는 장치가 다시 표시되지 않습니다';

  @override
  String get fwupdDeviceFlagCanVerify => '암호화 해시 검증이 가능합니다';

  @override
  String get fwupdDeviceFlagDualImage => 'Device stages updates';

  @override
  String get fwupdDeviceFlagSelfRecovery => '장치 플래시 실패 시 복구 가능함';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => '업데이트하는 동안 장치를 사용할 수 있음';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => '기기 펌웨어의 버전을 확인해야 합니다';

  @override
  String get fwupdDeviceFlagInstallAllReleases => '장치에 제공된 모든 버전을 설치해야 합니다';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => '장치가 다른 분기의 펌웨어로의 변경을 지원합니다';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => '설치 전 기기에서 펌웨어를 백업합니다';

  @override
  String get fwupdDeviceFlagWildcardInstall => '같은 종류의 모든 장치는 동시에 업데이트됩니다';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => '버전 업그레이드만 허용됨';

  @override
  String get fwupdDeviceFlagUnreachable => '장치에 접근 불가';

  @override
  String get fwupdDeviceFlagAffectsFde => '업데이트 중 전체 디스크 암호화 키가 무효화될 수 있음';

  @override
  String get fwupdDeviceFlagEndOfLife => '지원 종료';

  @override
  String get fwupdDeviceFlagSignedPayload => '서명된 페이로드';

  @override
  String get fwupdDeviceFlagUnsignedPayload => '서명 안 된 페이로드';

  @override
  String get fwupdErrorInternal => '내부 오류';

  @override
  String get fwupdErrorVersionNewer => '더 높은 버전의 펌웨어가 설치되어 있습니다';

  @override
  String get fwupdErrorVersionSame => '동일한 펌웨어 버전이 설치되어 있습니다';

  @override
  String get fwupdErrorAlreadyPending => '이미 오프라인에서 설치하도록 설정되어 있습니다';

  @override
  String get fwupdErrorAuthFailed => '인증에 실패했습니다';

  @override
  String get fwupdErrorRead => '장치로부터 읽는 데 실패했습니다';

  @override
  String get fwupdErrorWrite => '장치에 쓰는 데 실패했습니다';

  @override
  String get fwupdErrorInvalidFile => '올바르지 않은 파일 형식';

  @override
  String get fwupdErrorNotFound => '일치하는 장치가 존재하지 않습니다';

  @override
  String get fwupdErrorNothingToDo => '아무것도 할 게 없습니다';

  @override
  String get fwupdErrorNotSupported => '해당 동작을 실행할 수 없었습니다';

  @override
  String get fwupdErrorSignatureInvalid => '서명이 유효하지 않습니다';

  @override
  String get fwupdErrorAcPowerRequired => 'AC 전원 연결이 필요합니다';

  @override
  String get fwupdErrorPermissionDenied => '권한 요청이 거부되었습니다';

  @override
  String get fwupdErrorBrokenSystem => '사용자가 시스템을 올바르지 않게 설정했습니다';

  @override
  String get fwupdErrorBatteryLevelTooLow => '시스템 배터리가 부족합니다';

  @override
  String get fwupdErrorNeedsUserAction => '업데이트를 완료하려면 사용자의 동작이 필요합니다';

  @override
  String get fwupdErrorAuthExpired => '자격 증명이 만료되어 인증 정보를 가져올 수 없습니다';

  @override
  String get fwupdErrorUnknown => '알 수 없는 오류입니다';

  @override
  String get fwupdStatusUnknown => '알 수 없는 상태입니다';

  @override
  String get fwupdStatusIdle => '대기';

  @override
  String get fwupdStatusLoading => '리소스 불러오는 중';

  @override
  String get fwupdStatusDecompressing => '펌웨어 압축 해제 중';

  @override
  String get fwupdStatusDeviceRestart => '장치 재시작 중';

  @override
  String get fwupdStatusDeviceWrite => '장치에 쓰는 중';

  @override
  String get fwupdStatusDeviceVerify => '장치 검증(읽기) 중';

  @override
  String get fwupdStatusScheduling => 'Scheduling an offline update';

  @override
  String get fwupdStatusDownloading => '파일 다운로드 중';

  @override
  String get fwupdStatusDeviceRead => '장치에서 읽어오는 중';

  @override
  String get fwupdStatusDeviceErase => '장치 삭제 중';

  @override
  String get fwupdStatusWaitingForAuth => '인증을 기다리는 중';

  @override
  String get fwupdStatusDeviceBusy => '장치가 바쁩니다';

  @override
  String get fwupdStatusShutdown => '데몬을 종료하는 중';

  @override
  String get guid => 'GUID';

  @override
  String get installError => '펌웨어를 설치할 수 없습니다!';

  @override
  String get noDevicesFound => '장치가 없습니다';

  @override
  String get ok => '확인';

  @override
  String get olderVersions => '이전 버전';

  @override
  String get rebootLater => '나중에 다시 시작';

  @override
  String get rebootNow => '지금 다시 시작';

  @override
  String get rebootConfirmMessage =>
      '업데이트를 완료하려면 반드시 장치를 다시 시작해야 합니다. 장치에 플러그가 연결되어 있거나 완전히 충전되어 있는지 확인하십시오. 데이터 손실을 방지하려면 다시 시작하기 전 파일을 저장하십시오.';

  @override
  String get rebootConfirmTitle => '업데이트 완료를 위해 다시 시작';

  @override
  String get reinstall => '재설치';

  @override
  String reinstallConfirm(String name, String current) {
    return '<b>$name</b> 장치에 <b>$current</b> 버전을 다시 설치하시겠습니까?';
  }

  @override
  String get showReleases => '출시 정보 확인';

  @override
  String get showUpdates => '업데이트 정보 확인';

  @override
  String get update => '업데이트';

  @override
  String get updateAvailable => '업데이트 사용 가능';

  @override
  String get updateChecksums => '체크섬 업데이트';

  @override
  String updateChecksumsConfirm(String name) {
    return '<b>$name</b> 장치의 체크섬을 업데이트하시겠습니까?';
  }

  @override
  String get updateChecksumsInfo => '이 작업은 현재 암호 해시를 인증된 것으로 기록합니다.';

  @override
  String get updateToLatest => '최신 버전으로 업데이트';

  @override
  String updateConfirm(String name, String version) {
    return '<b>$name</b> 장치를 <b>$version</b> 버전으로 업데이트하시겠습니까?';
  }

  @override
  String get vendor => '제조사';

  @override
  String get verifyFirmware => '펌웨어 검증';

  @override
  String verifyFirmwareConfirm(String name) {
    return '$name 장치의 펌웨어 체크섬을 검증하시겠습니까?';
  }

  @override
  String get currentVersion => '현재 버전';

  @override
  String get minVersion => '최소 버전';

  @override
  String get latestVersion => '최신 버전';
}
