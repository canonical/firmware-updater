// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uighur Uyghur (`ug`).
class AppLocalizationsUg extends AppLocalizations {
  AppLocalizationsUg([String locale = 'ug']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'ئەسلىگە قايتۇرۇش ئاچقۇچىڭىز بولمىسا بارلىق سانلىق مەلۇماتلىرىڭىزنى يوقىتىشىڭىز مۇمكىن';

  @override
  String get affectsFdeWarningUbuntuFdeTitle =>
      'ئەسلىگە قايتۇرۇش ئاچقۇچىڭىز بولمىسا بارلىق سانلىق مەلۇماتلىرىڭىزنى يوقىتىشىڭىز مۇمكىن';

  @override
  String get affectsFdeWarningOtherFdeBody =>
      'شىفىرلانغان بارلىق دىسكىنى ئەسلىگە قايتۇرىدىغان شىفىرلىق ئاچقۇچ بارلىقىغا كاپالەتلىك قىلىڭ. مۇقىم دېتالنى يېڭىلىغاندىن كېيىن قوزغاتقاندا ئۇنى كىرگۈزۈشكە ئېھتىياجلىق بولۇشىڭىز مۇمكىن.';

  @override
  String get affectsFdeWarningUbuntuFdeBody =>
      'كومپيۇتېرىڭىزدا قاتتىق دېتال ئاساسىدىكى شىفىرلاش قوزغىتىلغان. مۇقىم دېتالنى يېڭىلىغاندىن كېيىن قوزغالغاندا ئەسلىگە قايتۇرۇش ئاچقۇچىنى كىرگۈزۈشكە ئېھتىياجلىق بولۇشىڭىز مۇمكىن. كومپيۇتېرىڭىزدا شىفىرلانغان باشقا دىسكىنى ئەسلىگە قايتۇرىدىغان يەنە باشقا شىفىرلىق ئاچقۇچ بولۇشىغا كاپالەتلىك قىلىڭ.';

  @override
  String get affectsFdeWarningBitlockerBody =>
      'كومپيۇتېرىڭىزدا BitLocker قوزغىتىلغان. شىفىرلانغان بارلىق دىسكىنى ئەسلىگە قايتۇرىدىغان شىفىرلىق ئاچقۇچ بارلىقىغا كاپالەتلىك قىلىڭ. مۇقىم دېتالنى يېڭىلىغاندىن كېيىن قوزغاتقاندا ئۇنى كىرگۈزۈشكە ئېھتىياجلىق بولۇشىڭىز مۇمكىن.';

  @override
  String get affectsFdeCheckbox =>
      'شىفىرلانغان بارلىق دىسكىنىڭ ئەسلىگە قايتۇرۇش ئاچقۇچى بار';

  @override
  String get affectsFdeTextFieldLabel =>
      'ئەسلىگە كەلتۈرۈش ئاچقۇچىڭىزنى كىرگۈزۈڭ';

  @override
  String get affectsFdeLinkLabel => 'مول بىلىم';

  @override
  String get affectsFdeIncorrectKey =>
      'ئەسلىگە كەلتۈرۈش ئاچقۇچى ئىشلىمىدى، ئۇنى بىخەتەرلىك مەركىزىدە تەكشۈرۈڭ ياكى ئالماشتۇرۇڭ';

  @override
  String get allVersions => 'بارلىق نەشرى';

  @override
  String get appTitle => 'مۇقىم دېتال يېڭىلىغۇچ';

  @override
  String get batteryWarning =>
      'ئاگاھلاندۇرۇش: بەزى ئۈسكۈنىنى سىرتقى توك مەنبەسى چېتىلغاندىلا ئاندىن يېڭىلىغىلى بولۇشى مۇمكىن!';

  @override
  String get checksum => 'تەكشۈرۈش يىغىدىسى';

  @override
  String get close => 'ياپ';

  @override
  String get cancel => 'ۋاز كەچ';

  @override
  String get current => 'نۆۋەتتىكى';

  @override
  String get deviceUnavailable =>
      'بۇ مەشغۇلاتنى ئېلىپ بېرىۋاتقاندا ئۈسكۈنىنى ئىشلەتكىلى بولماسلىقى مۇمكىن.';

  @override
  String get deviceRequest => 'ئۈسكۈنە ئىلتىماسى';

  @override
  String get downgrade => 'نەشرىنى تۆۋەنلەت';

  @override
  String downgradeConfirm(String name, String version) {
    return '<b>$name</b> نى <b>$version</b> نەشرىگە تۆۋەنلىتەمدۇ؟';
  }

  @override
  String get flags => 'بەلگە';

  @override
  String get fwupdDeviceFlagInternal => 'ئىچكى ئۈسكۈنە';

  @override
  String get fwupdDeviceFlagUpdatable => 'يېڭىلاشچان';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'يېڭىلاشتا قايتا قوزغىتىش زۆرۈر';

  @override
  String get fwupdDeviceFlagRequireAc => 'سىستېمىغا سىرتقى توك مەنبەسى زۆرۈر';

  @override
  String get fwupdDeviceFlagLocked => 'ئۈسكۈنە قۇلۇپلانغان';

  @override
  String get fwupdDeviceFlagSupported => 'يىراقتىكى مۇلازىمېتىرنى قوللايدۇ';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'قوزغىتىش يۈكلىگۈچ زۆرۈر';

  @override
  String get fwupdDeviceFlagRegistered => 'تىزىملاتقان';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'ئورنىتىشتىن كېيىن قايتا قوزغىتىش كېرەك';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'ئورنىتىشتىن كېيىن تاقاپ توكتىن ئۈزۈش كېرەك';

  @override
  String get fwupdDeviceFlagReported => 'يىراقتىكى مۇلازىمېتىرغا مەلۇم قىلىندى';

  @override
  String get fwupdDeviceFlagNotified => 'ئىشلەتكۈچىگە ئۇقتۇرۇلدى';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'ئالدى بىلەن ئاتا ئۈسكۈنىگە ئورنىتىلىدۇ';

  @override
  String get fwupdDeviceFlagIsBootloader => 'قوزغىتىش يۈكلىگۈچ ھالىتىدە';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'قاتتىق دېتال توكتىن ئۈزۈپ قايتا چېتىشنى كۈتۈۋاتىدۇ';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'بىخەتەرلىك تەكشۈرۈشكە پەرۋا قىلما';

  @override
  String get fwupdDeviceFlagTrusted => 'ئىشەنچلىك';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'ئۈسكۈنە يېڭىلاش ئاكتىپلاشقا ئېھتىياجلىق';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'يېڭىلاش تاماملانمىغۇچە ئۈسكۈنە قايتا كۆرۈنمەيدۇ';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'شىفىرلىق مۇكەممەللىك كودىنى دەلىللەشنى ئىشلەتكىلى بولىدۇ';

  @override
  String get fwupdDeviceFlagDualImage => 'ئۈسكۈنە باسقۇچ يېڭىلانمىسى';

  @override
  String get fwupdDeviceFlagSelfRecovery =>
      'ئۈسكۈنە مۇقىم دېتال يېزىش كاشىلىسىدىن ئەسلىگە قايتالايدۇ';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'ئۈسكۈنىنى يېڭىلىنىۋاتقاندىمۇ ئىشلەتكىلى بولىدۇ';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'ئۈسكۈنە مۇقىم دېتالىنىڭ نەشرىنى تەكشۈرۈش زۆرۈر';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'ئۈسكۈنىگە تارقىتىلغان بارلىق نەشرىنى ئورنىتىش زۆرۈر';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'ئۈسكۈنە مۇقىم دېتالنىڭ پەرقلىق تارمىقىغا ئالماشتۇرۇشنى قوللايدۇ';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'ئۈسكۈنە ئورنىتىشتىن ئىلگىرى مۇقىم دېتالنى زاپاسلايدۇ';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'ئوخشاش تۈردىكى بارلىق ئۈسكۈنىلەر بىرلا ۋاقىتتا يېڭىلىنىدۇ';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'پەقەت نەشرىنى يۈكسەلدۈرۈشكە يول قويۇلىدۇ';

  @override
  String get fwupdDeviceFlagUnreachable => 'ئۈسكۈنىنى زىيارەت قىلغىلى بولمايدۇ';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'پۈتكۈل دىسكىنىڭ شىفىرلاش ئاچقۇچى يېڭىلىنىۋاتقاندا ئىناۋەتسىز قىلىنىشى مۇمكىن';

  @override
  String get fwupdDeviceFlagEndOfLife => 'قوللاش ئاخىرلاشتى';

  @override
  String get fwupdDeviceFlagSignedPayload => 'ئىمزالىق يۈك';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'ئىمزاسىز يۈك';

  @override
  String get fwupdErrorInternal => 'ئىچكى خاتالىق';

  @override
  String get fwupdErrorVersionNewer => 'يېڭىراق مۇقىم دېتال نەشرى ئورنىتىلغان';

  @override
  String get fwupdErrorVersionSame => 'ئوخشاش مۇقىم دېتال نەشرى ئورنىتىلغان';

  @override
  String get fwupdErrorAlreadyPending => 'تورسىز ئورنىتىشقا تەڭشەلگەن';

  @override
  String get fwupdErrorAuthFailed => 'سالاھىيەت دەلىللەشكە ئېرىشەلمىدى';

  @override
  String get fwupdErrorRead => 'ئۈسكۈنىدىن ئوقۇيالمىدى';

  @override
  String get fwupdErrorWrite => 'ئۈسكۈنىگە يازالمىدى';

  @override
  String get fwupdErrorInvalidFile => 'ئىناۋەتسىز ھۆججەت پىچىمى';

  @override
  String get fwupdErrorNotFound => 'ماس كېلىدىغان ئۈسكۈنە مەۋجۇت ئەمەس';

  @override
  String get fwupdErrorNothingToDo => 'قىلىدىغان ھېچ ئىش يوق';

  @override
  String get fwupdErrorNotSupported =>
      'مەشغۇلاتنى ئىجرا قىلىش مۇمكىنچىلىكى يوق';

  @override
  String get fwupdErrorSignatureInvalid => 'ئىمزا ئىناۋەتسىز';

  @override
  String get fwupdErrorAcPowerRequired => 'ئۆزگىرىشچان توك مەنبەسى زۆرۈر';

  @override
  String get fwupdErrorPermissionDenied => 'ئىجازەت رەت قىلىندى';

  @override
  String get fwupdErrorBrokenSystem => 'ئىشلەتكۈچى سىستېمىنى خاتا سەپلىگەن';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'سىستېما توكدانىنىڭ توكى بەك ئاز';

  @override
  String get fwupdErrorNeedsUserAction =>
      'يېڭىلاشنى تاماملاش ئۈچۈن ئىشلەتكۈچى مەشغۇلات ئېلىپ بېرىشى كېرەك';

  @override
  String get fwupdErrorAuthExpired =>
      'ئىجازەت ئىسپاتىنىڭ ۋاقتى ئۆتكەنلىكتىن سالاھىيەت دەلىللىيەلمىدى';

  @override
  String get fwupdErrorUnknown => 'يوچۇن خاتالىق';

  @override
  String get fwupdStatusUnknown => 'يوچۇن ھالەت';

  @override
  String get fwupdStatusIdle => 'بىكار';

  @override
  String get fwupdStatusLoading => 'مەنبەنى يۈكلەۋاتىدۇ';

  @override
  String get fwupdStatusDecompressing => 'مۇقىم دېتالنى يېشىۋاتىدۇ';

  @override
  String get fwupdStatusDeviceRestart => 'ئۈسكۈنىنى قايتا قوزغىتىۋاتىدۇ';

  @override
  String get fwupdStatusDeviceWrite => 'ئۈسكۈنىگە يېزىۋاتىدۇ';

  @override
  String get fwupdStatusDeviceVerify => 'ئۈسكۈنىنى دەلىللەۋاتىدۇ (ئوقۇۋاتىدۇ)';

  @override
  String get fwupdStatusScheduling => 'تورسىز يېڭىلاشنى كۈنتەرتىپكە تىزىۋاتىدۇ';

  @override
  String get fwupdStatusDownloading => '1 ھۆججەتنى چۈشۈرۈۋاتىدۇ';

  @override
  String get fwupdStatusDeviceRead => 'ئۈسكۈنىدىن ئوقۇۋاتىدۇ';

  @override
  String get fwupdStatusDeviceErase => 'ئۈسكۈنىنى ئۆچۈرۈۋاتىدۇ';

  @override
  String get fwupdStatusWaitingForAuth => 'دەلىللەشنى كۈتۈۋاتىدۇ';

  @override
  String get fwupdStatusDeviceBusy => 'ئۈسكۈنە ئالدىراش';

  @override
  String get fwupdStatusShutdown => 'نازارەتچى تاقىلىۋاتىدۇ';

  @override
  String get guid => 'GUID';

  @override
  String get installError => 'مۇقىم دېتالنى ئورنىتالمىدى!';

  @override
  String get noDevicesFound => 'ھېچقانداق ئۈسكۈنە تېپىلمىدى';

  @override
  String get ok => 'جەزملە';

  @override
  String get olderVersions => 'كونىراق نەشرى';

  @override
  String get rebootLater => 'سەل تۇرۇپ قايتا قوزغات';

  @override
  String get rebootNow => 'ھازىر قايتا قوزغات';

  @override
  String get rebootConfirmMessage =>
      'يېڭىلاشنى تاماملاش ئۈچۈن چوقۇم قايتا قوزغىتىشىڭىز كېرەك. ئۈسكۈنىنىڭ توك مەنبەسىگە چېتىلغانلىقى ياكى تولۇق توكلانغانلىقىغا كاپالەتلىك قىلىڭ. سانلىق مەلۇماتنىڭ يوقاپ كېتىشنىڭ ئالدىنى ئېلىش ئۈچۈن قايتا قوزغىتىشتىن ئىلگىرى ھۆججەتلىرىڭىزنى ساقلىۋېلىڭ.';

  @override
  String get rebootConfirmTitle => 'قايتا قوزغىتىپ يېڭىلاشنى تاماملايدۇ';

  @override
  String get reinstall => 'قايتا ئورنات';

  @override
  String reinstallConfirm(String name, String current) {
    return '<b>$name</b> نىڭ <b>$current</b> نەشرىنى قايتا ئورنىتامدۇ؟';
  }

  @override
  String get showReleases => 'تارقىتىلغان نەشرىنى كۆرسەت';

  @override
  String get showUpdates => 'يېڭىلانمىنى كۆرسەت';

  @override
  String get update => 'يېڭىلا';

  @override
  String get updateAvailable => 'يېڭىلانما بار';

  @override
  String get updateChecksums => 'يېڭىلانما مۇكەممەللىك يىغىندىسى';

  @override
  String updateChecksumsConfirm(String name) {
    return '<b>$name</b> نىڭ ئۈسكۈنە مۇكەممەللىك يىغىندىسىنى يېڭىلامدۇ؟';
  }

  @override
  String get updateChecksumsInfo =>
      'بۇ مەشغۇلات نۆۋەتتىكى شىفىرلىق مۇكەممەللىك كودىنىڭ ھالىتىنى دەلىللەنگەن دەپ خاتىرىلەيدۇ.';

  @override
  String get updateToLatest => 'ئەڭ يېڭىسىغا يېڭىلا';

  @override
  String updateConfirm(String name, String version) {
    return '<b>$name</b> نى <b>$version</b> نەشرىگە يېڭىلامدۇ؟';
  }

  @override
  String get vendor => 'تەمىنلىگۈچى';

  @override
  String get verifyFirmware => 'مۇقىم دېتال دەلىللەش';

  @override
  String verifyFirmwareConfirm(String name) {
    return '$name نىڭ مۇقىم دېتال مۇكەممەللىك يىغىندىسىنى دەلىللەمدۇ؟';
  }

  @override
  String get currentVersion => 'نۆۋەتتىكى نەشرى';

  @override
  String get minVersion => 'ئەڭ تۆۋەن نەشرى';

  @override
  String get latestVersion => 'ئەڭ يېڭى نەشرى';
}
