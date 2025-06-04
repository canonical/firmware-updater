// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get affectsFdeWarningTitle => 'ללא מפתחות שחזור כל הנתונים שלך עלולים ללכת לאיבוד';

  @override
  String get affectsFdeWarningBody1 => 'נא לוודא שיש לך את מפתחות השחזור לכל הכוננים המוצפנים שלך. יש למלא אותם מחדש בזמן העלייה לאחר עדכון קושחה.';

  @override
  String get affectsFdeWarningBody2 => 'צריך מפתחות שחזור כיוון שהפעלת הצפנה בגיבוי חומרה באובונטו או במערכות הפעלה אחרות במחשב הזה.';

  @override
  String get affectsFdeTextFieldLabel => 'Enter your recovery key';

  @override
  String get affectsFdeLinkLabel => 'מידע נוסף';

  @override
  String get affectsFdeIncorrectKey => 'Recovery key does not work, check or replace it in the Security Center';

  @override
  String get allVersions => 'כל הגרסאות';

  @override
  String get appTitle => 'מעדכן הקושחה';

  @override
  String get batteryWarning => 'אזהרה: חלק מעדכוני ההתקנים יהיו זמינים רק בחיבור למקור חשמל חיצוני!';

  @override
  String get checksum => 'סיכום ביקורת';

  @override
  String get close => 'סגירה';

  @override
  String get cancel => 'ביטול';

  @override
  String get current => 'נוכחי';

  @override
  String get deviceUnavailable => 'ההתקן לא יהיה זמין במהלך הפעולה הזאת.';

  @override
  String get deviceRequest => 'בקשת התקן';

  @override
  String get downgrade => 'שנמוך';

  @override
  String downgradeConfirm(String name, String version) {
    return 'לשנמך את <b>$name</b> לגרסה <b>$version</b>?';
  }

  @override
  String get flags => 'דגלונים';

  @override
  String get fwupdDeviceFlagInternal => 'התקן פנימי';

  @override
  String get fwupdDeviceFlagUpdatable => 'ניתן לעדכן';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'עדכון דורש הפעלה מחדש';

  @override
  String get fwupdDeviceFlagRequireAc => 'המערכת דורשת מקור חשמל חיצוני';

  @override
  String get fwupdDeviceFlagLocked => 'ההתקן נעול';

  @override
  String get fwupdDeviceFlagSupported => 'נתמך בשרת המרוחק';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'דורש מנהל אתחול';

  @override
  String get fwupdDeviceFlagRegistered => 'רשום';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'דורש הפעלה מחדש לאחר ההתקנה';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'דורש כיבוי לאחר ההתקנה';

  @override
  String get fwupdDeviceFlagReported => 'דווח לשרת המרוחק';

  @override
  String get fwupdDeviceFlagNotified => 'המשתמש קיבל הודעה';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'להתקין קודם להתקן ההורה';

  @override
  String get fwupdDeviceFlagIsBootloader => 'במצב מנהל אתחול';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'החומרה ממתינה לחיבור מחדש';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'התעלמות מבדיקות בטיחות של תיקוף';

  @override
  String get fwupdDeviceFlagTrusted => 'מהימן';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'עדכון ההתקן דורש הפעלה';

  @override
  String get fwupdDeviceFlagWillDisappear => 'ההתקן לא יופיע מחדש לאחר השלמת העדכון';

  @override
  String get fwupdDeviceFlagCanVerify => 'אימות הגיבוב הקריפטוגרפי זמין';

  @override
  String get fwupdDeviceFlagDualImage => 'שלבי ההתקן מתעדכנים';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'ההתקן יכול להשתקם מתקלות צריבה';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => 'ההתקן שמיש במשך העדכון';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => 'קושחת ההתקן נחוצה לצורך בדיקת גרסה';

  @override
  String get fwupdDeviceFlagInstallAllReleases => 'ההתקן נחוץ כדי להתקין את כל המהדורות שסופקו';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => 'ההתקן תומך בהחלפה לענף או קושחה אחרים';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => 'ההתקן יגבה את הקושחה לפני ההתקנה';

  @override
  String get fwupdDeviceFlagWildcardInstall => 'כל ההתקנים מאותו הסוג יעודכנו בו־זמנית';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => 'מותר לעדכן רק את הגרסאות';

  @override
  String get fwupdDeviceFlagUnreachable => 'ההתקן לא נגיש';

  @override
  String get fwupdDeviceFlagAffectsFde => 'סודות הצפנת כונן מלא יפקעו בעת עדכון';

  @override
  String get fwupdDeviceFlagEndOfLife => 'סוף החיים';

  @override
  String get fwupdDeviceFlagSignedPayload => 'מטען חתום';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'מטען לא חתום';

  @override
  String get fwupdErrorInternal => 'שגיאה פנימית';

  @override
  String get fwupdErrorVersionNewer => 'הותקנה גרסת קושחה חדשה יותר';

  @override
  String get fwupdErrorVersionSame => 'הותקנה אותה גרסת קושחה';

  @override
  String get fwupdErrorAlreadyPending => 'כבר הוגדר להתקנה בלתי מקוונת';

  @override
  String get fwupdErrorAuthFailed => 'משיכת האימות נכשלה';

  @override
  String get fwupdErrorRead => 'הקריאה מההתקן נכשלה';

  @override
  String get fwupdErrorWrite => 'הכתיבה להתקן נכשלה';

  @override
  String get fwupdErrorInvalidFile => 'תבנית הקובץ שגויה';

  @override
  String get fwupdErrorNotFound => 'לא קיים התקן מתאים';

  @override
  String get fwupdErrorNothingToDo => 'אין מה לעשות';

  @override
  String get fwupdErrorNotSupported => 'הפעולה אינה אפשרית';

  @override
  String get fwupdErrorSignatureInvalid => 'החתימה הייתה שגויה';

  @override
  String get fwupdErrorAcPowerRequired => 'צריך חיבור לחשמל';

  @override
  String get fwupdErrorPermissionDenied => 'ההרשאה נדחתה';

  @override
  String get fwupdErrorBrokenSystem => 'המשתמש הגדיר את המערכת שלו בצורה שגויה';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'סוללת המערכת חלשה מדי';

  @override
  String get fwupdErrorNeedsUserAction => 'על המשתמש לבצע פעולה להשלמת העדכון';

  @override
  String get fwupdErrorAuthExpired => 'משיכת האימות נכשלה כיוון שפרטי הגישה פקעו';

  @override
  String get fwupdErrorUnknown => 'שגיאה לא ידועה';

  @override
  String get fwupdStatusUnknown => 'מצב לא ידוע';

  @override
  String get fwupdStatusIdle => 'בהמתנה';

  @override
  String get fwupdStatusLoading => 'המשאב נטען';

  @override
  String get fwupdStatusDecompressing => 'הקושחה נפרסת';

  @override
  String get fwupdStatusDeviceRestart => 'ההתקן מופעל מחדש';

  @override
  String get fwupdStatusDeviceWrite => 'מתבצעת כתיבה להתקן';

  @override
  String get fwupdStatusDeviceVerify => 'מתבצע אימות (קריאה) של התקן';

  @override
  String get fwupdStatusScheduling => 'עדכון בלתי מקוון מתוזמן';

  @override
  String get fwupdStatusDownloading => 'קובץ יורד';

  @override
  String get fwupdStatusDeviceRead => 'מתבצעת קריאה מההתקן';

  @override
  String get fwupdStatusDeviceErase => 'ההתקן נמחק';

  @override
  String get fwupdStatusWaitingForAuth => 'בהמתנה לאימות';

  @override
  String get fwupdStatusDeviceBusy => 'ההתקן עסוק';

  @override
  String get fwupdStatusShutdown => 'הסוכן נכבה';

  @override
  String get guid => 'מזהים יחודיים';

  @override
  String get installError => 'התקנת הקושחה נכשלה!';

  @override
  String get noDevicesFound => 'לא נמצאו התקנים';

  @override
  String get ok => 'אישור';

  @override
  String get olderVersions => 'גרסאות ישנות יותר';

  @override
  String get rebootLater => 'להפעיל מחדש אחר כך';

  @override
  String get rebootNow => 'להפעיל מחדש כעת';

  @override
  String get rebootConfirmMessage => 'יש להפעיל את ההתקן שלך מחדש כדי להשלים את העדכון. נא לוודא שההתקן שלך מחובר או טעון במלואו. נא לשמור את הקבצים שלך בטרם הפעלה מחדש כדי למנוע אובדן מידע.';

  @override
  String get rebootConfirmTitle => 'הפעלה מחדש תשלים את העדכון';

  @override
  String get reinstall => 'התקנה מחדש';

  @override
  String reinstallConfirm(String name, String current) {
    return 'להתקין את <b>$name</b> מחדש בגרסה <b>$current</b>?';
  }

  @override
  String get showReleases => 'הצגת מהדורות';

  @override
  String get showUpdates => 'הצגת עדכונים';

  @override
  String get update => 'עדכון';

  @override
  String get updateAvailable => 'יש עדכון';

  @override
  String get updateChecksums => 'עדכון סיכומי ביקורת';

  @override
  String updateChecksumsConfirm(String name) {
    return 'לעדכן את סיכומי ביקורת ההתקן של <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo => 'הפעולה הזאת תתעד את הגיבובים הקריפטוגרפיים כמאומתים.';

  @override
  String get updateToLatest => 'עדכון לעדכני ביותר';

  @override
  String updateConfirm(String name, String version) {
    return 'לעדכן את <b>$name</b> לגרסה <b>$version</b>?';
  }

  @override
  String get vendor => 'ספק';

  @override
  String get verifyFirmware => 'אימות קושחה';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'לאמת את סיכומי הביקורת של $name?';
  }

  @override
  String get currentVersion => 'הגרסה הנוכחית';

  @override
  String get minVersion => 'הגרסה המזערית';

  @override
  String get latestVersion => 'הגרסה העדכנית ביותר';
}
