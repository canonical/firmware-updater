// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get affectsFdeWarningTitle => 'Без ключів відновлення ви можете втратити всі свої дані';

  @override
  String get affectsFdeWarningBody1 => 'Переконайтеся, що у вас є ключі відновлення для всіх зашифрованих дисків. Вам потрібно буде ввести їх під час завантаження після оновлення прошивки.';

  @override
  String get affectsFdeWarningBody2 => 'Вам потрібні ключі відновлення, оскільки ви ввімкнули апаратне шифрування в Ubuntu або інших операційних системах на цьому комп\'ютері.';

  @override
  String get affectsFdeCheckbox => 'У мене є ключі відновлення для всіх моїх зашифрованих дисків';

  @override
  String get affectsFdeLinkLabel => 'Learn more';

  @override
  String get allVersions => 'Всі версії';

  @override
  String get appTitle => 'Оновлювач прошивки';

  @override
  String get batteryWarning => 'Попередження: деякі оновлення пристрою можуть бути доступні лише при зовнішньому живленні!';

  @override
  String get checksum => 'Контрольна сума';

  @override
  String get close => 'Закрити';

  @override
  String get cancel => 'Скасувати';

  @override
  String get current => 'Поточний';

  @override
  String get deviceUnavailable => 'Під час цієї дії пристрій буде недоступний.';

  @override
  String get deviceRequest => 'Запит пристрою';

  @override
  String get downgrade => 'Пониження';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Понизити <b>$name</b> до версії<b>$version</b>?';
  }

  @override
  String get flags => 'Прапорці';

  @override
  String get fwupdDeviceFlagInternal => 'Внутрішній пристрій';

  @override
  String get fwupdDeviceFlagUpdatable => 'Оновлюваний';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'Оновлення потребує перезавантаження';

  @override
  String get fwupdDeviceFlagRequireAc => 'Система потребує зовнішнього джерела живлення';

  @override
  String get fwupdDeviceFlagLocked => 'Пристрій заблоковано';

  @override
  String get fwupdDeviceFlagSupported => 'Підтримуваний на віддаленому сервері';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Потрібен завантажувач';

  @override
  String get fwupdDeviceFlagRegistered => 'Зареєстровано';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'Потребує перезавантаження після встановлення';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'Потребує вимкнення після встановлення';

  @override
  String get fwupdDeviceFlagReported => 'Відзвітовано на віддалений сервер';

  @override
  String get fwupdDeviceFlagNotified => 'Користувача було повідомлено';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'Спочатку встановіть на батьківський пристрій';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Перебуває в режимі завантажувача';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'Апаратне забезпечення чекає на перепід\'єднання';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'Ігнорувати перевірки безпеки валідації';

  @override
  String get fwupdDeviceFlagTrusted => 'Довірено';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'Оновлення пристрою потребує активації';

  @override
  String get fwupdDeviceFlagWillDisappear => 'Пристрій не з\'явиться знову після завершення оновлення';

  @override
  String get fwupdDeviceFlagCanVerify => 'Доступна криптографічна перевірка хешу';

  @override
  String get fwupdDeviceFlagDualImage => 'Оновлення етапів пристрою';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'Пристрій може відновлювати збої флеш-пам\'яті';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => 'Пристрій можна використовувати протягом усього періоду оновлення';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => 'Прошивка пристрою повинна мати перевірку версії';

  @override
  String get fwupdDeviceFlagInstallAllReleases => 'Пристрій потрібен для встановлення всіх наданих випусків';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => 'Пристрій підтримує перехід на іншу версію прошивки';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => 'Пристрій створить резервну копію прошивки перед встановленням';

  @override
  String get fwupdDeviceFlagWildcardInstall => 'Всі пристрої одного типу будуть оновлені одночасно';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => 'Дозволено лише оновлення версій';

  @override
  String get fwupdDeviceFlagUnreachable => 'Пристрій недосяжний';

  @override
  String get fwupdDeviceFlagAffectsFde => 'Секрети шифрування повного диска можуть бути втрачені під час оновлення';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Завершення життєвого циклу';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Підписане навантаження';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Непідписане навантаження';

  @override
  String get fwupdErrorInternal => 'Внутрішня помилка';

  @override
  String get fwupdErrorVersionNewer => 'Встановлено новішу версію прошивки';

  @override
  String get fwupdErrorVersionSame => 'Встановлено ту саму версію прошивки';

  @override
  String get fwupdErrorAlreadyPending => 'Вже налаштовано для встановлення офлайн';

  @override
  String get fwupdErrorAuthFailed => 'Не вдалося отримати автентифікацію';

  @override
  String get fwupdErrorRead => 'Не вдалося прочитати з пристрою';

  @override
  String get fwupdErrorWrite => 'Не вдалося записати на пристрій';

  @override
  String get fwupdErrorInvalidFile => 'Недійсний формат файлу';

  @override
  String get fwupdErrorNotFound => 'Не існує відповідного пристрою';

  @override
  String get fwupdErrorNothingToDo => 'Нічого робити';

  @override
  String get fwupdErrorNotSupported => 'Дія була неможлива';

  @override
  String get fwupdErrorSignatureInvalid => 'Підпис був недійсним';

  @override
  String get fwupdErrorAcPowerRequired => 'Потрібне було живлення змінного струму';

  @override
  String get fwupdErrorPermissionDenied => 'У дозволі було відмовлено';

  @override
  String get fwupdErrorBrokenSystem => 'Користувач неправильно налаштував систему';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'Занизький рівень заряду акумулятора системи';

  @override
  String get fwupdErrorNeedsUserAction => 'Користувачеві потрібно виконати дію, щоб завершити оновлення';

  @override
  String get fwupdErrorAuthExpired => 'Не вдалося отримати доступ, оскільки термін дії облікових даних закінчився';

  @override
  String get fwupdErrorUnknown => 'Невідома помилка';

  @override
  String get fwupdStatusUnknown => 'Невідомий стан';

  @override
  String get fwupdStatusIdle => 'Бездіяльність';

  @override
  String get fwupdStatusLoading => 'Завантаження ресурсу';

  @override
  String get fwupdStatusDecompressing => 'Розпакування прошивки';

  @override
  String get fwupdStatusDeviceRestart => 'Перезапуск пристрою';

  @override
  String get fwupdStatusDeviceWrite => 'Запис на пристрій';

  @override
  String get fwupdStatusDeviceVerify => 'Перевірка (зчитування) пристрою';

  @override
  String get fwupdStatusScheduling => 'Планування офлайн-оновлення';

  @override
  String get fwupdStatusDownloading => 'Файл завантажується';

  @override
  String get fwupdStatusDeviceRead => 'Читання з пристрою';

  @override
  String get fwupdStatusDeviceErase => 'Стирання пристрою';

  @override
  String get fwupdStatusWaitingForAuth => 'Очікування на автентифікацію';

  @override
  String get fwupdStatusDeviceBusy => 'Пристрій зайнятий';

  @override
  String get fwupdStatusShutdown => 'Фонова служба завершує роботу';

  @override
  String get guid => 'GUIDи';

  @override
  String get installError => 'Не вдалося встановити прошивку!';

  @override
  String get noDevicesFound => 'Пристрої не знайдено';

  @override
  String get ok => 'OK';

  @override
  String get olderVersions => 'Старіші версії';

  @override
  String get rebootLater => 'Перезапустити пізніше';

  @override
  String get rebootNow => 'Перезапустити зараз';

  @override
  String get rebootConfirmMessage => 'Щоб завершити оновлення, необхідно перезапустити пристрій. Переконайтеся, що ваш пристрій підключено до мережі або повністю заряджено. Збережіть файли перед перезапуском, щоб уникнути втрати даних.';

  @override
  String get rebootConfirmTitle => 'Перезапустіть, щоб завершити оновлення';

  @override
  String get reinstall => 'Перевстановити';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Перевстановити <b>$name</b> версію <b>$current</b>?';
  }

  @override
  String get showReleases => 'Показати випуски';

  @override
  String get showUpdates => 'Показати оновлення';

  @override
  String get update => 'Оновити';

  @override
  String get updateAvailable => 'Доступне оновлення';

  @override
  String get updateChecksums => 'Оновити контрольні суми';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Оновити контрольні суми пристроїв <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo => 'Поточні криптографічні хеші будуть записані як підтверджені.';

  @override
  String get updateToLatest => 'Оновити до останнього';

  @override
  String updateConfirm(String name, String version) {
    return 'Оновити <b>$name</b> до версії<b>$version</b>?';
  }

  @override
  String get vendor => 'Постачальник';

  @override
  String get verifyFirmware => 'Перевірка прошивки';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Перевірити контрольні суми прошивки $name?';
  }

  @override
  String get currentVersion => 'Поточна версія';

  @override
  String get minVersion => 'Мінімальна версія';

  @override
  String get latestVersion => 'Остання версія';
}
