// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get affectsFdeWarningTitle => 'Без ключей восстановления вы можете потерять все свои данные';

  @override
  String get affectsFdeWarningBody1 => 'Убедитесь, что у вас есть ключи восстановления для всех зашифрованных дисков. Вам нужно будет ввести их при загрузке после обновлений прошивки.';

  @override
  String get affectsFdeWarningBody2 => 'Вам необходимы ключи восстановления, потому что вы включили аппаратное шифрование в Ubuntu или других операционных системах на этом компьютере.';

  @override
  String get affectsFdeCheckbox => 'У меня есть ключи восстановления для всех моих зашифрованных дисков';

  @override
  String get affectsFdeLinkLabel => 'Learn more';

  @override
  String get allVersions => 'Все версии';

  @override
  String get appTitle => 'Обновление прошивок';

  @override
  String get batteryWarning => 'Внимание: некоторые обновления устройств могут быть доступны только при внешнем питании!';

  @override
  String get checksum => 'Контрольная сумма';

  @override
  String get close => 'Закрыть';

  @override
  String get cancel => 'Отменить';

  @override
  String get current => 'Текущая';

  @override
  String get deviceUnavailable => 'Во время этого действия устройство будет недоступно.';

  @override
  String get deviceRequest => 'Запрос устройства';

  @override
  String get downgrade => 'Откатить';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Выполнить откат <b>$name</b> до версии <b>$version</b>?';
  }

  @override
  String get flags => 'Метки';

  @override
  String get fwupdDeviceFlagInternal => 'Внутреннее устройство';

  @override
  String get fwupdDeviceFlagUpdatable => 'Можно обновлять';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'Обновление требует перезагрузки';

  @override
  String get fwupdDeviceFlagRequireAc => 'Система требует внешнего источника питания';

  @override
  String get fwupdDeviceFlagLocked => 'Устройство заблокировано';

  @override
  String get fwupdDeviceFlagSupported => 'Поддерживается на удаленном сервере';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Требуется загрузчик';

  @override
  String get fwupdDeviceFlagRegistered => 'Зарегистрировано';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'Требуется перезагрузка после установки';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'Требуется выключение после установки';

  @override
  String get fwupdDeviceFlagReported => 'Сообщается на удаленный сервер';

  @override
  String get fwupdDeviceFlagNotified => 'Пользователь был уведомлен';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'Сначала устанавливается на родительское устройство';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Находится в режиме загрузчика';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'Оборудование ожидает повторного подсоединения';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'Игнорировать проверки безопасности при валидации';

  @override
  String get fwupdDeviceFlagTrusted => 'Доверено';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'Обновление устройства требует активации';

  @override
  String get fwupdDeviceFlagWillDisappear => 'Устройство не появляется снова после завершения обновления';

  @override
  String get fwupdDeviceFlagCanVerify => 'Доступна криптографическая проверка хэша';

  @override
  String get fwupdDeviceFlagDualImage => 'Обновление этапов устройства';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'Устройство может восстанавливать неисправности флеш-памяти';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => 'Устройство можно использовать в течение всего периода обновления';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => 'Прошивка устройства должна иметь проверку версии';

  @override
  String get fwupdDeviceFlagInstallAllReleases => 'Устройство необходимо для установки всех представленных выпусков';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => 'Устройство поддерживает переключение на другую ветвь прошивки';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => 'Устройство создаст резервную копию прошивки перед установкой';

  @override
  String get fwupdDeviceFlagWildcardInstall => 'Все устройства одного типа будут обновлены одновременно';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => 'Разрешено только обновление версий';

  @override
  String get fwupdDeviceFlagUnreachable => 'Устройство недоступно';

  @override
  String get fwupdDeviceFlagAffectsFde => 'Секретность полного шифрования диска может быть недействительна при обновлении';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Конец срока службы';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Подписанная рабочая нагрузка';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Не подписанная рабочая нагрузка';

  @override
  String get fwupdErrorInternal => 'Внутренняя ошибка';

  @override
  String get fwupdErrorVersionNewer => 'Установлена более новая версия прошивки';

  @override
  String get fwupdErrorVersionSame => 'Установлена та же версия прошивки';

  @override
  String get fwupdErrorAlreadyPending => 'Уже настроена автономная установка';

  @override
  String get fwupdErrorAuthFailed => 'Не удалось получить аутентификацию';

  @override
  String get fwupdErrorRead => 'Не удалось считать данные с устройства';

  @override
  String get fwupdErrorWrite => 'Не удалось выполнить запись на устройство';

  @override
  String get fwupdErrorInvalidFile => 'Недопустимый формат файла';

  @override
  String get fwupdErrorNotFound => 'Нет подходящего устройства';

  @override
  String get fwupdErrorNothingToDo => 'Нечего делать';

  @override
  String get fwupdErrorNotSupported => 'Действие было невозможным';

  @override
  String get fwupdErrorSignatureInvalid => 'Подпись была недействительна';

  @override
  String get fwupdErrorAcPowerRequired => 'Требовалось питание от сети';

  @override
  String get fwupdErrorPermissionDenied => 'В разрешении было отказано';

  @override
  String get fwupdErrorBrokenSystem => 'Пользователь неправильно настроил свою систему';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'Уровень заряда батареи системы слишком низкий';

  @override
  String get fwupdErrorNeedsUserAction => 'Пользователю необходимо выполнить действие для завершения обновления';

  @override
  String get fwupdErrorAuthExpired => 'Не удалось получить авторизацию, так как срок действия учетных данных истек';

  @override
  String get fwupdErrorUnknown => 'Неизвестная ошибка';

  @override
  String get fwupdStatusUnknown => 'Неизвестное состояние';

  @override
  String get fwupdStatusIdle => 'Бездействие';

  @override
  String get fwupdStatusLoading => 'Загрузка ресурса';

  @override
  String get fwupdStatusDecompressing => 'Декомпрессия прошивки';

  @override
  String get fwupdStatusDeviceRestart => 'Перезапуск устройства';

  @override
  String get fwupdStatusDeviceWrite => 'Запись на устройство';

  @override
  String get fwupdStatusDeviceVerify => 'Проверка (считывание) устройства';

  @override
  String get fwupdStatusScheduling => 'Планирование автономного обновления';

  @override
  String get fwupdStatusDownloading => 'Идет загрузка файла';

  @override
  String get fwupdStatusDeviceRead => 'Чтение с устройства';

  @override
  String get fwupdStatusDeviceErase => 'Стирание устройства';

  @override
  String get fwupdStatusWaitingForAuth => 'Ожидание аутентификации';

  @override
  String get fwupdStatusDeviceBusy => 'Устройство занято';

  @override
  String get fwupdStatusShutdown => 'Демон завершает работу';

  @override
  String get guid => 'Идентификаторы GUID';

  @override
  String get installError => 'Не удалось установить прошивку!';

  @override
  String get noDevicesFound => 'Устройства не найдены';

  @override
  String get ok => 'ОК';

  @override
  String get olderVersions => 'Более ранние версии';

  @override
  String get rebootLater => 'Перезагрузить позже';

  @override
  String get rebootNow => 'Перезагрузить сейчас';

  @override
  String get rebootConfirmMessage => 'Для завершения обновления необходимо перезагрузить устройство. Убедитесь, что устройство подключено к сети или полностью заряжено. Сохраните файлы перед перезагрузкой, чтобы избежать потери данных.';

  @override
  String get rebootConfirmTitle => 'Перезагрузите, чтобы завершить обновление';

  @override
  String get reinstall => 'Переустановить';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Переустановить версию <b>$current</b> для <b>$name</b>?';
  }

  @override
  String get showReleases => 'Показать выпуски';

  @override
  String get showUpdates => 'Показать обновления';

  @override
  String get update => 'Обновить';

  @override
  String get updateAvailable => 'Доступно обновление';

  @override
  String get updateChecksums => 'Обновить контрольные суммы';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Обновить контрольные суммы устройства <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo => 'При этом будут записаны текущие проверенные криптографические хэши.';

  @override
  String get updateToLatest => 'Обновить до последней версии';

  @override
  String updateConfirm(String name, String version) {
    return 'Обновить <b>$name</b> до версии <b>$version</b>?';
  }

  @override
  String get vendor => 'Производитель';

  @override
  String get verifyFirmware => 'Проверить прошивку';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Проверить контрольные суммы прошивки $name?';
  }

  @override
  String get currentVersion => 'Текущая версия';

  @override
  String get minVersion => 'Минимальная версия';

  @override
  String get latestVersion => 'Последняя версия';
}
