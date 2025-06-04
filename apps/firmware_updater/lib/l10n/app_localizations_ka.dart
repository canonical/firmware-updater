// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class AppLocalizationsKa extends AppLocalizations {
  AppLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get affectsFdeWarningTitle => 'აღდგენის გასაღებების გარეშე, შეიძლება, მონაცემები სრულად დაკარგოთ';

  @override
  String get affectsFdeWarningBody1 => 'დარწმუნდით, რომ გაქვთ აღდგენის გასაღებები ყველა თქვენი დაშიფრული დისკისთვის. შეიძლება, მისი შეყვანა მიკროკოდის განახლების შემდეგ, ჩატვირთვისას დაგჭირდეთ.';

  @override
  String get affectsFdeWarningBody2 => 'აღდგენის გასაღებები გჭირდებათ, რადგან ჩართეთ აპარატურის მიერ მხარდაჭერილი დაშიფვრა Ubuntu-ზე, ან სხვა ოპერაციულ სისტემაზე ამ კომპიუტერზე.';

  @override
  String get affectsFdeCheckbox => 'მე მაქვს აღდგენის გასაღებები ყველა ჩემი დაშიფრული დისკისთვის';

  @override
  String get affectsFdeLinkLabel => 'მეტის გაგება';

  @override
  String get allVersions => 'ყველა ვერსია';

  @override
  String get appTitle => 'მიკროკოდის განახლების პროგრამა';

  @override
  String get batteryWarning => 'გაფრთხილება: ზოგიერთი მოწყობილობის განახლება, მხოლოდ, გარე კვების არსებობის შემთხვევაშია შესაძლებელი!';

  @override
  String get checksum => 'საკონტროლო ჯამი';

  @override
  String get close => 'დახურვა';

  @override
  String get cancel => 'გაუქმება';

  @override
  String get current => 'მიმდინარე';

  @override
  String get deviceUnavailable => 'მოწყობილობა ხელმიუწვდომელი იქნება ამ ქმედების შესრულებისას.';

  @override
  String get deviceRequest => 'მოწყობილობის მოთხოვნა';

  @override
  String get downgrade => 'ვერსიის დაწევა';

  @override
  String downgradeConfirm(String name, String version) {
    return 'დავწიო <b>$name</b> ვერსიამდე <b>$version</b>?';
  }

  @override
  String get flags => 'ალმები';

  @override
  String get fwupdDeviceFlagInternal => 'შიდა მოწყობილობა';

  @override
  String get fwupdDeviceFlagUpdatable => 'განახლებადი';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'განახლებას გადატვირთვა სჭირდება';

  @override
  String get fwupdDeviceFlagRequireAc => 'სისტემას გარე კვების წყარო სჭირდება';

  @override
  String get fwupdDeviceFlagLocked => 'მოწყობილობა დაბლოკილია';

  @override
  String get fwupdDeviceFlagSupported => 'მხარდაჭერილია დაშორებულ სერვერზე';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'ესაჭიროება ჩამტვირთავი';

  @override
  String get fwupdDeviceFlagRegistered => 'დარეგისტრირებულია';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'სჭირდება გადატვირთვა დაყენების შემდეგ';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'სჭირდება გამორთვა დაყენების შემდეგ';

  @override
  String get fwupdDeviceFlagReported => 'ანგარიში გადაცემულია დაშორებულ სერვერზე';

  @override
  String get fwupdDeviceFlagNotified => 'მომხმრებელი გაფრთხილებულია';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'ჯერ მშობელ მოწყობილობაზე დაყენება';

  @override
  String get fwupdDeviceFlagIsBootloader => 'ჩამტვირთავის რეჟიმში';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'აპარატურა თავიდან მიერთების მოლოდინშია';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'გადამოწმების უსაფრთხოების შემოწმებების გამოტოვება';

  @override
  String get fwupdDeviceFlagTrusted => 'სანდო';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'მოწყობილობის განახლებას აქტივაცია ესაჭიროება';

  @override
  String get fwupdDeviceFlagWillDisappear => 'მოწყობილობა არ გამოჩნდება თავიდან, როცა განახლება დასრულდება';

  @override
  String get fwupdDeviceFlagCanVerify => 'კრიპტოგრაფიული ჰეშის გადამოწმება ხელმისაწვდომია';

  @override
  String get fwupdDeviceFlagDualImage => 'მოწყობილობა შემოინახავს განახლებებს';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'მოწყობილობას შეუძლია ფლეშის ჩავარდნების აღდგენა';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => 'მოწყობილობა წვდომადია განახლების მიმდინარეობისას';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => 'მოწყობილობის მიკროკოდს ვერსიის შემოწმება აუცილებლად უნდა ჰქონდეს';

  @override
  String get fwupdDeviceFlagInstallAllReleases => 'მოწყობილობაზე აუცილებელია ყველა მოწოდებული რელიზის დაყენება';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => 'მოწყობილობას აქვს მიკროკოდის სხვა ბრენჩზე გადართვის მხარდაჭერა';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => 'მოწყობილობა დაამარქაფებს მიკროკოდს დაყენებამდე';

  @override
  String get fwupdDeviceFlagWildcardInstall => 'ყველა ერთი ტიპის მოწყობილობის განახლება ერთდროულად მოხდება';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => 'დაშვებულია, მხოლოდ, ვერსიის განახლებები';

  @override
  String get fwupdDeviceFlagUnreachable => 'მოწყობილობა ხელმიუწვდომელია';

  @override
  String get fwupdDeviceFlagAffectsFde => 'განახლებისას, შესაძლოა, სრული დისკის საიდუმლოებები არასწორი გახდეს';

  @override
  String get fwupdDeviceFlagEndOfLife => 'სიცოცხლის დასასრული';

  @override
  String get fwupdDeviceFlagSignedPayload => 'ხელმოწერილი შემცველობა';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'ხელმოუწერელი შემცველობა';

  @override
  String get fwupdErrorInternal => 'შიდა შეცდომა';

  @override
  String get fwupdErrorVersionNewer => 'დაყენებულია უფრო ახალი მიკროკოდის ვერსია';

  @override
  String get fwupdErrorVersionSame => 'დაყენებულია იგივე მიკროკოდის ვერსია';

  @override
  String get fwupdErrorAlreadyPending => 'უკვე დაყენებულია, რომ განახლება ინტერნეტის გარეშე მოხდეს';

  @override
  String get fwupdErrorAuthFailed => 'ავთენტიკაციის მიღება ჩავარდა';

  @override
  String get fwupdErrorRead => 'მოწყობილობიდან წაკითხვა ჩავარდა';

  @override
  String get fwupdErrorWrite => 'მოწყობილობაზე ჩაწერა ჩავარდა';

  @override
  String get fwupdErrorInvalidFile => 'არასწორი ფაილის ფორმატი';

  @override
  String get fwupdErrorNotFound => 'ასეთი მოწყობილობა არ არსებობს';

  @override
  String get fwupdErrorNothingToDo => 'გასაკეთებელი არაფერია';

  @override
  String get fwupdErrorNotSupported => 'ქმედება შეუძლებელი იყო';

  @override
  String get fwupdErrorSignatureInvalid => 'ხელმოწერა არასწორი იყო';

  @override
  String get fwupdErrorAcPowerRequired => 'AC კვება აუცილებელი იყო';

  @override
  String get fwupdErrorPermissionDenied => 'წვდომა აკრძალული იყო';

  @override
  String get fwupdErrorBrokenSystem => 'მომხმარებელმა თავისი სისტემა არასწორად მოირგო';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'სისტემის ელემენტის დონე ძალიან მცირეა';

  @override
  String get fwupdErrorNeedsUserAction => 'განახლების დასასრულებლად მომხმარებლის ქმედებაა საჭირო';

  @override
  String get fwupdErrorAuthExpired => 'ავთენტიკაციის მიღების შეცდომა, რადგან შესვლის უფლება ამოიწურა';

  @override
  String get fwupdErrorUnknown => 'უცნობი შეცდომა';

  @override
  String get fwupdStatusUnknown => 'უცნობი მდგომარეობა';

  @override
  String get fwupdStatusIdle => 'უქმე';

  @override
  String get fwupdStatusLoading => 'რესურსის ჩატვირთვა';

  @override
  String get fwupdStatusDecompressing => 'მიკროკოდის გაშლა';

  @override
  String get fwupdStatusDeviceRestart => 'მიმდინარეობს მოწყობილობის გადატვირთვა';

  @override
  String get fwupdStatusDeviceWrite => 'მოწყობილობის მოლოდინი';

  @override
  String get fwupdStatusDeviceVerify => 'მოწყობილობის გადამოწმება (წაკითხვა)';

  @override
  String get fwupdStatusScheduling => 'ინტერნეტგარეშე განახლების დაგეგმვა';

  @override
  String get fwupdStatusDownloading => 'მიმდინარეობს ფაილის გადმოწერა';

  @override
  String get fwupdStatusDeviceRead => 'მოწყობილობიდან წაკითხვა';

  @override
  String get fwupdStatusDeviceErase => 'მოწყობილობის წაშლა';

  @override
  String get fwupdStatusWaitingForAuth => 'ავთენტიკაციის მოლოდინი';

  @override
  String get fwupdStatusDeviceBusy => 'მოწყობილობა დაკავებულია';

  @override
  String get fwupdStatusShutdown => 'მიმდინარეობს დემონის გამორთვა';

  @override
  String get guid => 'GUID-ები';

  @override
  String get installError => 'მიკროკოდის განახლება ჩავარდა!';

  @override
  String get noDevicesFound => 'მოწყობილობები აღმოჩენილი არაა';

  @override
  String get ok => 'დიახ';

  @override
  String get olderVersions => 'ძველი ვერსიები';

  @override
  String get rebootLater => 'მოგვიანებით გადატვირთვა';

  @override
  String get rebootNow => 'ახლავე გადატვირთვა';

  @override
  String get rebootConfirmMessage => 'განახლების დასასრულებლად თქვენი მოწყობილობა უნდა გადატვირთოთ. დარწმუნდით, რომ მოწყობილობა მიერთებულია, ან ბოლომდეა დატენილი. შეინახეთ თქვენი ფაილები გადატვირთვამდე, რომ მონაცემების კარგვა აიცილოთ თავიდან.';

  @override
  String get rebootConfirmTitle => 'გადატვირთეთ რომ დაასრულოთ ეს განახლება';

  @override
  String get reinstall => 'თავიდან დაყენება';

  @override
  String reinstallConfirm(String name, String current) {
    return 'დავაყენო თავიდან <b>$name</b>-ის ვერსია <b>$current</b>-?';
  }

  @override
  String get showReleases => 'რელიზების ჩვენება';

  @override
  String get showUpdates => 'განახლებების ჩვენება';

  @override
  String get update => 'განახლება';

  @override
  String get updateAvailable => 'განახლება ხელმისაწვდომია';

  @override
  String get updateChecksums => 'განახლების საკონტროლო ჯამები';

  @override
  String updateChecksumsConfirm(String name) {
    return 'განვაახლო <b>$name</b>-ის საკონტროლო ჯამები?';
  }

  @override
  String get updateChecksumsInfo => 'ეს ჩაიწერს მიმდინარე კრიპტოგრაფიულ ჰეშებს, როცა მათ გადაამოწმებს.';

  @override
  String get updateToLatest => 'განახლება უკანასკნელამდე';

  @override
  String updateConfirm(String name, String version) {
    return 'განვაახლო <b>$name</b> ვერსიამდე <b>$version</b>?';
  }

  @override
  String get vendor => 'მომწოდებელი';

  @override
  String get verifyFirmware => 'მიკროკოდის განამოწმება';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'გადავამოწმო $name-ის საკონტროლო ჯამები?';
  }

  @override
  String get currentVersion => 'მიმდინარე ვერსია';

  @override
  String get minVersion => 'მინიმალური ვერსია';

  @override
  String get latestVersion => 'უკანასკნელი ვერსია';
}
