// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get affectsFdeWarningTitle => 'You may lose all your data without recovery keys';

  @override
  String get affectsFdeWarningBody1 => 'Make sure you have recovery keys for all your encrypted drives. You will need to enter them on boot after updating firmware.';

  @override
  String get affectsFdeWarningBody2 => 'You need recovery keys because you have enabled hardware-backed encryption in Ubuntu or other operating systems on this computer.';

  @override
  String get affectsFdeCheckbox => 'I have recovery keys for all my encrypted drives';

  @override
  String get allVersions => 'Све верзије';

  @override
  String get appTitle => 'Ажурирање фирмвера';

  @override
  String get batteryWarning => 'Упозорење: нека ажурирања уређаја могу бити доступна само на спољном напајању!';

  @override
  String get checksum => 'Контролна сума';

  @override
  String get close => 'Затвори';

  @override
  String get cancel => 'Откажи';

  @override
  String get current => 'Тренутно';

  @override
  String get deviceUnavailable => 'Уређај неће бити доступан током ове акције.';

  @override
  String get deviceRequest => 'Захтев уређаја';

  @override
  String get downgrade => 'Поништавање верзије';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Поништити верзију <b>$name</b> на <b>$version</b>?';
  }

  @override
  String get flags => 'Ознаке';

  @override
  String get fwupdDeviceFlagInternal => 'Интерни уређај';

  @override
  String get fwupdDeviceFlagUpdatable => 'Може се ажурирати';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'Ажурирање захтева поновно покретање';

  @override
  String get fwupdDeviceFlagRequireAc => 'Систем захтева спољни извор напајања';

  @override
  String get fwupdDeviceFlagLocked => 'Уређај је закључан';

  @override
  String get fwupdDeviceFlagSupported => 'Подржано на удаљеном серверу';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Захтева бутлоадер';

  @override
  String get fwupdDeviceFlagRegistered => 'Регистровано';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'Потребно је поновно покретање након инсталације';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'Потребно је искључивање након инсталације';

  @override
  String get fwupdDeviceFlagReported => 'Пријављено на удаљени сервер';

  @override
  String get fwupdDeviceFlagNotified => 'Корисник је обавештен';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'Прво инсталирајте на матични уређај';

  @override
  String get fwupdDeviceFlagIsBootloader => 'У бутлоадер режиму';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'Хардвер чека да буде поново прикључен';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'Игнориши безбедносне провере валидације';

  @override
  String get fwupdDeviceFlagTrusted => 'Поуздано';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'Ажурирање уређаја захтева активацију';

  @override
  String get fwupdDeviceFlagWillDisappear => 'Уређај се неће поново појавити након завршетка ажурирања';

  @override
  String get fwupdDeviceFlagCanVerify => 'Доступна је криптографска провера хеша';

  @override
  String get fwupdDeviceFlagDualImage => 'Уређај припрема ажурирања';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'Уређај може опоравити неуспехе флеша';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => 'Уређај је употребљив током трајања ажурирања';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => 'Фирмвер уређаја мора имати проверу верзије';

  @override
  String get fwupdDeviceFlagInstallAllReleases => 'Уређај мора инсталирати сва обезбеђена издања';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => 'Уређај подржава прелазак на другу грану фирмвера';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => 'Уређај ће направити резервну копију фирмвера пре инсталације';

  @override
  String get fwupdDeviceFlagWildcardInstall => 'Сви уређаји истог типа ће бити ажурирани у исто време';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => 'Дозвољена су само ажурирања верзије';

  @override
  String get fwupdDeviceFlagUnreachable => 'Уређај је недоступан';

  @override
  String get fwupdDeviceFlagAffectsFde => 'Тајне потпуне енкрипције диска могу бити поништене приликом ажурирања';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Крај животног века';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Потписан садржај';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Непотписан садржај';

  @override
  String get fwupdErrorInternal => 'Интерна грешка';

  @override
  String get fwupdErrorVersionNewer => 'Инсталирана новија верзија фирмвера';

  @override
  String get fwupdErrorVersionSame => 'Инсталирана иста верзија фирмвера';

  @override
  String get fwupdErrorAlreadyPending => 'Већ подешено за инсталацију ван мреже';

  @override
  String get fwupdErrorAuthFailed => 'Неуспех у добијању аутентификације';

  @override
  String get fwupdErrorRead => 'Није успело читање са уређаја';

  @override
  String get fwupdErrorWrite => 'Није успело писање на уређај';

  @override
  String get fwupdErrorInvalidFile => 'Неважећи формат датотеке';

  @override
  String get fwupdErrorNotFound => 'Не постоји одговарајући уређај';

  @override
  String get fwupdErrorNothingToDo => 'Нема шта да се ради';

  @override
  String get fwupdErrorNotSupported => 'Акција није била могућа';

  @override
  String get fwupdErrorSignatureInvalid => 'Потпис је био неважећи';

  @override
  String get fwupdErrorAcPowerRequired => 'Потребно је било напајање наизменичном струјом';

  @override
  String get fwupdErrorPermissionDenied => 'Дозвола је одбијена';

  @override
  String get fwupdErrorBrokenSystem => 'Корисник је конфигурисао свој систем на неисправан начин';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'Ниво батерије система је пренизак';

  @override
  String get fwupdErrorNeedsUserAction => 'Корисник треба да изврши акцију да би завршио ажурирање';

  @override
  String get fwupdErrorAuthExpired => 'Није успело добијање ауторизације јер су акредитиви истекли';

  @override
  String get fwupdErrorUnknown => 'Непозната грешка';

  @override
  String get fwupdStatusUnknown => 'Непознато стање';

  @override
  String get fwupdStatusIdle => 'Мировање';

  @override
  String get fwupdStatusLoading => 'Учитавање ресурса';

  @override
  String get fwupdStatusDecompressing => 'Декомпресија фирмвера';

  @override
  String get fwupdStatusDeviceRestart => 'Поновно покретање уређаја';

  @override
  String get fwupdStatusDeviceWrite => 'Писање на уређај';

  @override
  String get fwupdStatusDeviceVerify => 'Верификација (читање) уређаја';

  @override
  String get fwupdStatusScheduling => 'Заказивање офлајн ажурирања';

  @override
  String get fwupdStatusDownloading => 'Преузимање датотеке';

  @override
  String get fwupdStatusDeviceRead => 'Читање са уређаја';

  @override
  String get fwupdStatusDeviceErase => 'Брисање уређаја';

  @override
  String get fwupdStatusWaitingForAuth => 'Чекање на аутентификацију';

  @override
  String get fwupdStatusDeviceBusy => 'Уређај је заузет';

  @override
  String get fwupdStatusShutdown => 'Демон се гаси';

  @override
  String get guid => 'GUID-ови';

  @override
  String get installError => 'Није успела инсталација фирмвера!';

  @override
  String get noDevicesFound => 'Није пронађен ниједан уређај';

  @override
  String get ok => 'У реду';

  @override
  String get olderVersions => 'Старије верзије';

  @override
  String get rebootLater => 'Поново покрени касније';

  @override
  String get rebootNow => 'Поново покрени сада';

  @override
  String get rebootConfirmMessage => 'Морате поново покренути уређај да бисте завршили ажурирање. Уверите се да је ваш уређај прикључен или потпуно напуњен. Сачувајте своје датотеке пре поновног покретања да бисте избегли губитак података.';

  @override
  String get rebootConfirmTitle => 'Поново покрените да бисте завршили ово ажурирање';

  @override
  String get reinstall => 'Поново инсталирај';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Поново инсталирати <b>$name</b> верзију <b>$current</b>?';
  }

  @override
  String get showReleases => 'Прикажи издања';

  @override
  String get showUpdates => 'Прикажи ажурирања';

  @override
  String get update => 'Ажурирај';

  @override
  String get updateAvailable => 'Ажурирање доступно';

  @override
  String get updateChecksums => 'Ажурирај контролну суму';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Ажурирати контролну суму уређаја <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo => 'Ово ће забележити тренутне криптографске хешеве као проверене.';

  @override
  String get updateToLatest => 'Ажурирај на најновије';

  @override
  String updateConfirm(String name, String version) {
    return 'Ажурирати <b>$name</b> на <b>$version</b>?';
  }

  @override
  String get vendor => 'Продавац';

  @override
  String get verifyFirmware => 'Верификуј фирмвер';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Верификовати контролну суму фирмвера $name?';
  }

  @override
  String get currentVersion => 'Тренутна верзија';

  @override
  String get minVersion => 'Минимална верзија';

  @override
  String get latestVersion => 'Најновија верзија';
}
