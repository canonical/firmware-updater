// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'மீட்பு விசைகள் இல்லாமல் உங்கள் எல்லா தரவையும் இழக்க நேரிடும்';

  @override
  String get affectsFdeWarningBody1 =>
      'உங்கள் மறைகுறியாக்கப்பட்ட அனைத்து இயக்கிகளுக்கும் மீட்பு விசைகள் இருப்பதை உறுதிப்படுத்திக் கொள்ளுங்கள். ஃபார்ம்வேரைப் புதுப்பித்த பிறகு அவற்றை துவக்கத்தில் உள்ளிட வேண்டும்.';

  @override
  String get affectsFdeWarningBody2 =>
      'இந்த கணினியில் உபுண்டு அல்லது பிற இயக்க முறைமைகளில் வன்பொருள் உதவி குறியாக்கத்தை இயக்கியுள்ளதால் உங்களுக்கு மீட்பு விசைகள் தேவை.';

  @override
  String get affectsFdeTextFieldLabel => 'Enter your recovery key';

  @override
  String get affectsFdeLinkLabel => 'மேலும் அறிக';

  @override
  String get affectsFdeIncorrectKey =>
      'Recovery key does not work, check or replace it in the Security Center';

  @override
  String get allVersions => 'அனைத்து பதிப்புகளும்';

  @override
  String get appTitle => 'ஃபார்ம்வேர் புதுப்பிப்பு';

  @override
  String get batteryWarning =>
      'எச்சரிக்கை: சில சாதன புதுப்பிப்புகள் வெளிப்புற சக்தியில் மட்டுமே கிடைக்கக்கூடும்!';

  @override
  String get checksum => 'செக்சம்';

  @override
  String get close => 'மூடு';

  @override
  String get cancel => 'ரத்துசெய்';

  @override
  String get current => 'மின்னோட்ட்ம், ஓட்டம்';

  @override
  String get deviceUnavailable => 'இந்த செயலின் போது சாதனம் கிடைக்காது.';

  @override
  String get deviceRequest => 'சாதன கோரிக்கை';

  @override
  String get downgrade => 'தரமிறக்குதல்';

  @override
  String downgradeConfirm(String name, String version) {
    return 'பதிப்பிற்கு <b> $name </b> ஐத் தரமிறக்கவும் <b> $version </b>?';
  }

  @override
  String get flags => 'கொடிகள்';

  @override
  String get fwupdDeviceFlagInternal => 'உள் சாதனம்';

  @override
  String get fwupdDeviceFlagUpdatable => 'புதுப்பிக்கத்தக்கது';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'புதுப்பிப்புக்கு மறுதொடக்கம் தேவை';

  @override
  String get fwupdDeviceFlagRequireAc => 'கணினிக்கு வெளிப்புற ஆற்றல் மூல தேவை';

  @override
  String get fwupdDeviceFlagLocked => 'சாதனம் பூட்டப்பட்டுள்ளது';

  @override
  String get fwupdDeviceFlagSupported => 'தொலை சேவையகத்தில் ஆதரிக்கப்படுகிறது';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'துவக்க ஏற்றி தேவை';

  @override
  String get fwupdDeviceFlagRegistered => 'பதிவுசெய்யப்பட்டது';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'நிறுவலுக்குப் பிறகு மறுதொடக்கம் தேவை';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'நிறுவலுக்குப் பிறகு பணிநிறுத்தம் தேவை';

  @override
  String get fwupdDeviceFlagReported => 'தொலை சேவையகத்திற்கு அறிக்கை';

  @override
  String get fwupdDeviceFlagNotified => 'பயனருக்கு அறிவிக்கப்பட்டுள்ளது';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'முதலில் பெற்றோர் சாதனத்தில் நிறுவவும்';

  @override
  String get fwupdDeviceFlagIsBootloader => 'துவக்க ஏற்றி பயன்முறையில் உள்ளது';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'வன்பொருள் மாற்றப்படுவதற்கு காத்திருக்கிறது';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'சரிபார்ப்பு பாதுகாப்பு சோதனைகளை புறக்கணிக்கவும்';

  @override
  String get fwupdDeviceFlagTrusted => 'நம்பகமான';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'சாதன புதுப்பிப்புக்கு செயல்படுத்தல் தேவை';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'புதுப்பிப்பு முடிந்ததும் சாதனம் மீண்டும் தோன்றாது';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'கிரிப்டோகிராஃபிக் ஆச் சரிபார்ப்பு கிடைக்கிறது';

  @override
  String get fwupdDeviceFlagDualImage => 'சாதன நிலைகள் புதுப்பிப்புகள்';

  @override
  String get fwupdDeviceFlagSelfRecovery =>
      'சாதனம் ஃபிளாச் தோல்விகளை மீட்டெடுக்க முடியும்';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'புதுப்பிப்பின் காலத்திற்கு சாதனம் பயன்படுத்தக்கூடியது';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'பதிப்பு காசோலை வைத்திருக்க சாதன நிலைபொருள் தேவை';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'வழங்கப்பட்ட அனைத்து வெளியீடுகளையும் நிறுவ சாதனம் தேவை';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'சாதனம் ஃபார்ம்வேரின் வேறு கிளைக்கு மாறுவதை ஆதரிக்கிறது';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'நிறுவும் முன் சாதனம் ஃபார்ம்வேரை காப்புப் பிரதி எடுக்கும்';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'ஒரே வகையின் அனைத்து சாதனங்களும் ஒரே நேரத்தில் புதுப்பிக்கப்படும்';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'பதிப்பு மேம்படுத்தல்கள் மட்டுமே அனுமதிக்கப்படுகின்றன';

  @override
  String get fwupdDeviceFlagUnreachable => 'சாதனம் அணுக முடியாதது';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'புதுப்பிக்கும்போது முழு வட்டு குறியாக்க ரகசியங்கள் செல்லுபடியாகாது';

  @override
  String get fwupdDeviceFlagEndOfLife => 'வாழ்க்கையின் முடிவு';

  @override
  String get fwupdDeviceFlagSignedPayload => 'கையொப்பமிடப்பட்ட பேலோட்';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'கையொப்பமிடாத பேலோட்';

  @override
  String get fwupdErrorInternal => 'உள் பிழை';

  @override
  String get fwupdErrorVersionNewer => 'புதிய ஃபார்ம்வேர் பதிப்பை நிறுவியது';

  @override
  String get fwupdErrorVersionSame => 'அதே ஃபார்ம்வேர் பதிப்பை நிறுவியது';

  @override
  String get fwupdErrorAlreadyPending => 'ஏற்கனவே ஆஃப்லைனில் நிறுவப்பட உள்ளது';

  @override
  String get fwupdErrorAuthFailed => 'அங்கீகாரத்தைப் பெறுவதில் தோல்வி';

  @override
  String get fwupdErrorRead => 'சாதனத்திலிருந்து படிக்கத் தவறிவிட்டது';

  @override
  String get fwupdErrorWrite => 'சாதனத்திற்கு எழுதத் தவறிவிட்டது';

  @override
  String get fwupdErrorInvalidFile => 'தவறான கோப்பு வடிவம்';

  @override
  String get fwupdErrorNotFound => 'பொருந்தக்கூடிய சாதனம் எதுவும் இல்லை';

  @override
  String get fwupdErrorNothingToDo => 'செய்ய எதுவும் இல்லை';

  @override
  String get fwupdErrorNotSupported => 'நடவடிக்கை சாத்தியமில்லை';

  @override
  String get fwupdErrorSignatureInvalid => 'கையொப்பம் தவறானது';

  @override
  String get fwupdErrorAcPowerRequired => 'ஏசி ஆற்றல் தேவைப்பட்டது';

  @override
  String get fwupdErrorPermissionDenied => 'இசைவு மறுக்கப்பட்டது';

  @override
  String get fwupdErrorBrokenSystem =>
      'பயனர் தங்கள் கணினியை உடைந்த வழியில் உள்ளமைத்துள்ளார்';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'கணினி பேட்டரி நிலை மிகக் குறைவு';

  @override
  String get fwupdErrorNeedsUserAction =>
      'புதுப்பிப்பை முடிக்க பயனர் ஒரு செயலைச் செய்ய வேண்டும்';

  @override
  String get fwupdErrorAuthExpired =>
      'நற்சான்றிதழ்கள் காலாவதியானதால் ஏற்பு பெறத் தவறிவிட்டது';

  @override
  String get fwupdErrorUnknown => 'தெரியாத பிழை';

  @override
  String get fwupdStatusUnknown => 'தெரியாத நிலை';

  @override
  String get fwupdStatusIdle => 'நிலையிக்கம்';

  @override
  String get fwupdStatusLoading => 'ஒரு வளத்தை ஏற்றுகிறது';

  @override
  String get fwupdStatusDecompressing => 'ஃபார்ம்வேரை குறைக்கவும்';

  @override
  String get fwupdStatusDeviceRestart => 'சாதனத்தை மறுதொடக்கம் செய்தல்';

  @override
  String get fwupdStatusDeviceWrite => 'ஒரு சாதனத்திற்கு எழுதுதல்';

  @override
  String get fwupdStatusDeviceVerify =>
      'ஒரு சாதனத்தை சரிபார்க்கிறது (படித்தல்)';

  @override
  String get fwupdStatusScheduling => 'இணைப்பில்லாத புதுப்பிப்பை திட்டமிடுதல்';

  @override
  String get fwupdStatusDownloading => 'ஒரு கோப்பு பதிவிறக்கம் செய்கிறது';

  @override
  String get fwupdStatusDeviceRead => 'சாதனத்திலிருந்து படித்தல்';

  @override
  String get fwupdStatusDeviceErase => 'சாதனத்தை அழித்தல்';

  @override
  String get fwupdStatusWaitingForAuth => 'அங்கீகாரத்திற்காக காத்திருக்கிறது';

  @override
  String get fwupdStatusDeviceBusy => 'சாதனம் பிசியாக உள்ளது';

  @override
  String get fwupdStatusShutdown => 'டீமான் மூடப்பட்டு வருகிறது';

  @override
  String get guid => 'கய்ட்ச்';

  @override
  String get installError => 'ஃபார்ம்வேரை நிறுவுவதில் தோல்வி!';

  @override
  String get noDevicesFound => 'சாதனங்கள் எதுவும் கிடைக்கவில்லை';

  @override
  String get ok => 'சரி';

  @override
  String get olderVersions => 'பழைய பதிப்புகள்';

  @override
  String get rebootLater => 'பின்னர் மறுதொடக்கம் செய்யுங்கள்';

  @override
  String get rebootNow => 'இப்போது மறுதொடக்கம் செய்யுங்கள்';

  @override
  String get rebootConfirmMessage =>
      'புதுப்பிப்பை முடிக்க உங்கள் சாதனத்தை மறுதொடக்கம் செய்ய வேண்டும். உங்கள் சாதனம் செருகப்பட்டதா அல்லது முழுமையாக சார்ச் செய்யப்பட்டுள்ளதா என்பதை உறுதிப்படுத்திக் கொள்ளுங்கள். தரவை இழப்பதைத் தவிர்க்க மறுதொடக்கம் செய்வதற்கு முன் உங்கள் கோப்புகளைச் சேமிக்கவும்.';

  @override
  String get rebootConfirmTitle =>
      'இந்த புதுப்பிப்பை முடிக்க மறுதொடக்கம் செய்யுங்கள்';

  @override
  String get reinstall => 'மீண்டும் நிறுவவும்';

  @override
  String reinstallConfirm(String name, String current) {
    return 'மீண்டும் நிறுவவும் <b> $name </b> பதிப்பு <b> $current </b>?';
  }

  @override
  String get showReleases => 'வெளியீடுகளைக் காட்டு';

  @override
  String get showUpdates => 'புதுப்பிப்புகளைக் காட்டு';

  @override
  String get update => 'புதுப்பிப்பு';

  @override
  String get updateAvailable => 'புதுப்பிப்பு கிடைக்கிறது';

  @override
  String get updateChecksums => 'செக்சம்களைப் புதுப்பிக்கவும்';

  @override
  String updateChecksumsConfirm(String name) {
    return '<b> $name </b> இன் சாதன செக்சம்களைப் புதுப்பிக்கவும்?';
  }

  @override
  String get updateChecksumsInfo =>
      'இது சரிபார்க்கப்பட்டபடி தற்போதைய கிரிப்டோகிராஃபிக் ஆச்களை பதிவு செய்யும்.';

  @override
  String get updateToLatest => 'அண்மைக் கால புதுப்பிப்பு';

  @override
  String updateConfirm(String name, String version) {
    return 'புதுப்பிப்பு <b> $name </b> பதிப்பிற்கு <b> $version </b>?';
  }

  @override
  String get vendor => 'விற்பனையாளர்';

  @override
  String get verifyFirmware => 'ஃபார்ம்வேரை சரிபார்க்கவும்';

  @override
  String verifyFirmwareConfirm(String name) {
    return '$name இன் ஃபார்ம்வேர் செக்சம்களை சரிபார்க்கவா?';
  }

  @override
  String get currentVersion => 'தற்போதைய பதிப்பு';

  @override
  String get minVersion => 'குறைந்தபட்ச பதிப்பு';

  @override
  String get latestVersion => 'அண்மைக் கால பதிப்பு';
}
