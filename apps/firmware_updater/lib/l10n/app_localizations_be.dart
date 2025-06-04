// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Belarusian (`be`).
class AppLocalizationsBe extends AppLocalizations {
  AppLocalizationsBe([String locale = 'be']) : super(locale);

  @override
  String get affectsFdeWarningTitle => 'You may lose all your data without recovery keys';

  @override
  String get affectsFdeWarningBody1 => 'Make sure you have recovery keys for all your encrypted drives. You will need to enter them on boot after updating firmware.';

  @override
  String get affectsFdeWarningBody2 => 'You need recovery keys because you have enabled hardware-backed encryption in Ubuntu or other operating systems on this computer.';

  @override
  String get affectsFdeCheckbox => 'I have recovery keys for all my encrypted drives';

  @override
  String get affectsFdeLinkLabel => 'Learn more';

  @override
  String get allVersions => 'Усе версіі';

  @override
  String get appTitle => 'Абнаўленне ўбудаваных праграм';

  @override
  String get batteryWarning => 'Папярэджанне: некаторыя абнаўленні прылады могуць быць даступны толькі пры знешнім сілкаванні!';

  @override
  String get checksum => 'Кантрольная сума';

  @override
  String get close => 'Закрыць';

  @override
  String get cancel => 'Скасаваць';

  @override
  String get current => 'Бягучы';

  @override
  String get deviceUnavailable => 'Прылада будзе недаступна падчас гэтага дзеяння.';

  @override
  String get deviceRequest => 'Запыт прылады';

  @override
  String get downgrade => 'Панізіць версію';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Панізіць <b>$name</b> да версіі <b>$version</b>?';
  }

  @override
  String get flags => 'Сцягі';

  @override
  String get fwupdDeviceFlagInternal => 'Унутраная прылада';

  @override
  String get fwupdDeviceFlagUpdatable => 'Абнаўляемы';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'Абнаўленне патрабуе перазагрузку';

  @override
  String get fwupdDeviceFlagRequireAc => 'Сістэма патрабуе знешнюю крыніцу сілкавання';

  @override
  String get fwupdDeviceFlagLocked => 'Прылада заблакіравана';

  @override
  String get fwupdDeviceFlagSupported => 'Падтрымліваецца на аддаленым серверы';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Патрабуецца загрузчык';

  @override
  String get fwupdDeviceFlagRegistered => 'Зарэгістравана';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'Патрабуецца перазагрузка пасля ўсталявання';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'Патрабуецца выключэнне пасля ўсталявання';

  @override
  String get fwupdDeviceFlagReported => 'Паведамлена на аддалены сервер';

  @override
  String get fwupdDeviceFlagNotified => 'Карыстальнік быў апавешчаны';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'Спачатку ўсталёўваецца на бацькоўскай прыладзе';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Знаходзіцца ў рэжыме загрузчыка';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'Абсталяванне чакае паўторнага падключэння';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'Ігнараваць праверку бяспекі пры пацвярджэнні';

  @override
  String get fwupdDeviceFlagTrusted => 'Даверана';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'Прылада абнаўлення патрабуе актывацыю';

  @override
  String get fwupdDeviceFlagWillDisappear => 'Прылада не з\'явіцца паўторна пасля завяршэння абнаўлення';

  @override
  String get fwupdDeviceFlagCanVerify => 'Даступна крыптаграфічная праверка хэшу';

  @override
  String get fwupdDeviceFlagDualImage => 'Абнаўленне этапаў прылады';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'Прылада можа аднаўляць збоі флэш-памяці';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => 'Прыладай можна карыстацца падчас усяго працэсу абнаўлення';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => 'Убудаваная праграма прылады патрабуе праверку версіі';

  @override
  String get fwupdDeviceFlagInstallAllReleases => 'На прыладу неабходна ўсталяваць ўсе выпускі, якія былі да гэтага';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => 'Прылада падтрымлівае пераход на іншую галіну ўбудаванай праграмы';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => 'Прылада створыць рэзервовую копію ўбудаванай праграмы перад усталяваннем';

  @override
  String get fwupdDeviceFlagWildcardInstall => 'Усе прылады аднаго тыпу будуць абноўлены адначасова';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => 'Дазволена толькі абнаўленне версій';

  @override
  String get fwupdDeviceFlagUnreachable => 'Прылада недаступна';

  @override
  String get fwupdDeviceFlagAffectsFde => 'Сакрэтнасць поўнага шыфравання дыска можа абнуліцца пры абнаўленні';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Канец тэрміна службы';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Падпісанае карыснае змесціва';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Непадпісанае карыснае змесціва';

  @override
  String get fwupdErrorInternal => 'Унутраная памылка';

  @override
  String get fwupdErrorVersionNewer => 'Усталявана новая версія ўбудаванай праграмы';

  @override
  String get fwupdErrorVersionSame => 'Усталявана тая ж самая версія ўбудаванай праграмы';

  @override
  String get fwupdErrorAlreadyPending => 'Пазасеткавае ўсталяванне ўжо зададзена';

  @override
  String get fwupdErrorAuthFailed => 'Не ўдалося атрымаць аўтэнтыфікацыю';

  @override
  String get fwupdErrorRead => 'Не ўдалося прачытаць з прылады';

  @override
  String get fwupdErrorWrite => 'Не ўдалося запісаць на прыладу';

  @override
  String get fwupdErrorInvalidFile => 'Памылковы фармат файла';

  @override
  String get fwupdErrorNotFound => 'Адпаведная прылада не знойдзены';

  @override
  String get fwupdErrorNothingToDo => 'Заданні адсутнічаюць';

  @override
  String get fwupdErrorNotSupported => 'Дзеянне было немагчымае';

  @override
  String get fwupdErrorSignatureInvalid => 'Подпіс быў памылковы';

  @override
  String get fwupdErrorAcPowerRequired => 'Патрабавалася электрасілкаванне';

  @override
  String get fwupdErrorPermissionDenied => 'Доступ быў забаронены';

  @override
  String get fwupdErrorBrokenSystem => 'Карыстальнік няправільна сканфігурыраваў сваю сістэму';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'Занадта нізкі ўзровень зараду акумулятара сістэмы';

  @override
  String get fwupdErrorNeedsUserAction => 'Патрабуецца дзеянне карыстальніка для завяршэння абнаўлення';

  @override
  String get fwupdErrorAuthExpired => 'Не ўдалося атрымаць аўтэнтыфікацыю, бо тэрмін дзеяння ўліковых даных скончыўся';

  @override
  String get fwupdErrorUnknown => 'Невядомая памылка';

  @override
  String get fwupdStatusUnknown => 'Невядомы стан';

  @override
  String get fwupdStatusIdle => 'Бяздзейнасць';

  @override
  String get fwupdStatusLoading => 'Загрузка рэсурсу';

  @override
  String get fwupdStatusDecompressing => 'Распакаванне ўбудаванай праграмы';

  @override
  String get fwupdStatusDeviceRestart => 'Перазапуск прылады';

  @override
  String get fwupdStatusDeviceWrite => 'Запіс на прыладу';

  @override
  String get fwupdStatusDeviceVerify => 'Праверка (чытанне) прылады';

  @override
  String get fwupdStatusScheduling => 'Планаванне пазасеткавага абнаўлення';

  @override
  String get fwupdStatusDownloading => 'Спампоўванне файла';

  @override
  String get fwupdStatusDeviceRead => 'Чытанне з прылады';

  @override
  String get fwupdStatusDeviceErase => 'Сціранне прылады';

  @override
  String get fwupdStatusWaitingForAuth => 'Чаканне аўтэнтыфікацыі';

  @override
  String get fwupdStatusDeviceBusy => 'Прылада занята';

  @override
  String get fwupdStatusShutdown => 'Дэман завяршае сваю працу';

  @override
  String get guid => 'Ідэнтыфікатары GUID';

  @override
  String get installError => 'Не ўдалося ўсталяваць убудаваную праграму!';

  @override
  String get noDevicesFound => 'Прылады не знойдзены';

  @override
  String get ok => 'ОК';

  @override
  String get olderVersions => 'Старыя версіі';

  @override
  String get rebootLater => 'Перазапусціць пазней';

  @override
  String get rebootNow => 'Перазапусціць зараз';

  @override
  String get rebootConfirmMessage => 'Для завяршэння абнаўлення неабходна перазапусціць прыладу. Пераканайцеся, што прылада падключана да сеткі электрасілкавання або цалкам зараджана. Захавайце свае файлы перад перазагрузкай, каб пазбегнуць страты даных.';

  @override
  String get rebootConfirmTitle => 'Перазапусціце, каб завяршыць гэта абнаўленне';

  @override
  String get reinstall => 'Пераўсталяваць';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Пераўсталяваць <b>$name</b> версію <b>$current</b>?';
  }

  @override
  String get showReleases => 'Паказаць выпускі';

  @override
  String get showUpdates => 'Паказаць абнаўленні';

  @override
  String get update => 'Абнавіць';

  @override
  String get updateAvailable => 'Даступна абнаўленне';

  @override
  String get updateChecksums => 'Абнавіць кантрольныя сумы';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Абнавіць кантрольныя сумы прылады <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo => 'Гэта запіша бягучыя крыптаграфічныя хэшы як правераныя.';

  @override
  String get updateToLatest => 'Абнавіць да апошняй версіі';

  @override
  String updateConfirm(String name, String version) {
    return 'Абнавіць <b>$name</b> да версіі <b>$version</b>?';
  }

  @override
  String get vendor => 'Пастаўшчык';

  @override
  String get verifyFirmware => 'Праверыць убудаваную праграму';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Праверыць кантрольныя сумы ўбудаванай праграмы $name?';
  }

  @override
  String get currentVersion => 'Бягучая версія';

  @override
  String get minVersion => 'Мінімальная версія';

  @override
  String get latestVersion => 'Апошняя версія';
}
