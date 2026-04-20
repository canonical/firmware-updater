// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'Μπορεί να χάσετε τα δεδομένα σας χωρίς κλειδιά ανάκτησης';

  @override
  String get affectsFdeWarningUbuntuFdeTitle =>
      'Μπορείτε να χάσετε όλα τα δεδομένα χωρίς το κλειδί ανάκτησης';

  @override
  String get affectsFdeWarningOtherFdeBody =>
      'Βεβαιωθείτε ότι έχετε κλειδιά ανάκτησης για όλους τους κρυπτογραφημένους δίσκους. Μπορεί να χρειαστεί να τα εισάγετε κατά την εκκίνηση μετά από ενημέρωση του υλικολογισμικού.';

  @override
  String get affectsFdeWarningUbuntuFdeBody =>
      'Στον υπολογιστή σας είναι ενεργοποιημένη η κρυπτογράφηση με υποστήριξη υλικού. Ενδέχεται να χρειαστεί να εισαγάγετε το κλειδί ανάκτησης κατά την εκκίνηση μετά από ενημέρωση του υλικολογισμικού (firmware). Βεβαιωθείτε ότι διαθέτετε επίσης τα κλειδιά ανάκτησης για τυχόν άλλους κρυπτογραφημένους δίσκους σε αυτόν τον υπολογιστή.';

  @override
  String get affectsFdeWarningBitlockerBody =>
      'Το BitLocker είναι ενεργοποιημένο στον υπολογιστή σας. Βεβαιωθείτε ότι έχετε κλειδιά ανάκτησης για όλους τους κρυπτογραφημένους δίσκους. Μπορεί να χρειαστεί να τα εισάγετε κατά την εκκίνηση μετά από ενημέρωση του υλικολογισμικού (firmware).';

  @override
  String get affectsFdeCheckbox =>
      'Έχω τα κλειδιά ανάκτησης για όλους τους κρυπτογραφημένους δίσκους μου';

  @override
  String get affectsFdeTextFieldLabel => 'Εισάγετε το κλειδί ανάκτησης';

  @override
  String get affectsFdeLinkLabel => 'Μάθετε περισσότερα';

  @override
  String get affectsFdeIncorrectKey =>
      'Το κλειδί ανάκτησης δεν λειτουργεί. Ελέγξτε το ή αντικαταστήστε το στο Κέντρο Ασφαλείας';

  @override
  String get allVersions => 'Όλες οι εκδόσεις';

  @override
  String get appTitle => 'Ενημέρωση υλικολογισμικού';

  @override
  String get batteryWarning =>
      'Προειδοποίηση: ορισμένες ενημερώσεις σε συσκευές ενδέχεται να είναι διαθέσιμες μόνο με σύνδεση σε εξωτερική πηγή τροφοδοσίας!';

  @override
  String get checksum => 'Άθροισμα ελέγχου';

  @override
  String get close => 'Κλείσιμο';

  @override
  String get cancel => 'Ακύρωση';

  @override
  String get current => 'Τρέχον';

  @override
  String get deviceUnavailable =>
      'Η συσκευή δεν θα είναι διαθέσιμη κατά τη διάρκεια αυτής της ενέργειας.';

  @override
  String get deviceRequest => 'Αίτημα συσκευής';

  @override
  String get downgrade => 'Υποβάθμιση';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Υποβάθμιση του <b>$name</b> στην έκδοση <b>$version</b>;';
  }

  @override
  String get flags => 'Σημαίες';

  @override
  String get fwupdDeviceFlagInternal => 'Εσωτερική συσκευή';

  @override
  String get fwupdDeviceFlagUpdatable => 'Με δυνατότητα ενημέρωσης';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'Η ενημέρωση απαιτεί επανεκκίνηση';

  @override
  String get fwupdDeviceFlagRequireAc =>
      'Το σύστημα απαιτεί εξωτερική πηγή τροφοδοσίας';

  @override
  String get fwupdDeviceFlagLocked => 'Η συσκευή είναι κλειδωμένη';

  @override
  String get fwupdDeviceFlagSupported =>
      'Υποστηρίζεται σε απομακρυσμένο διακομιστή';

  @override
  String get fwupdDeviceFlagNeedsBootloader =>
      'Απαιτεί πρόγραμμα εκκίνησης συστήματος';

  @override
  String get fwupdDeviceFlagRegistered => 'Καταχωρήθηκε';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'Απαιτεί επανεκκίνηση μετά την εγκατάσταση';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'Απαιτεί τερματισμό λειτουργίας μετά την εγκατάσταση';

  @override
  String get fwupdDeviceFlagReported =>
      'Αναφέρθηκε στον απομακρυσμένο διακομιστή';

  @override
  String get fwupdDeviceFlagNotified => 'Ο χρήστης έχει ειδοποιηθεί';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'Εγκατάσταση πρώτα στη γονική συσκευή';

  @override
  String get fwupdDeviceFlagIsBootloader =>
      'Βρίσκεται σε λειτουργία εκκίνησης συστήματος';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'Το υλικό αναμένει να επανασυνδεθεί';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'Παράκαμψη ελέγχων ασφαλείας επικύρωσης';

  @override
  String get fwupdDeviceFlagTrusted => 'Έμπιστο';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'Η ενημέρωση της συσκευής απαιτεί ενεργοποίηση';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'Η συσκευή δεν θα επανεμφανιστεί μετά την ολοκλήρωση της ενημέρωσης';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'Είναι διαθέσιμη η επαλήθευση κρυπτογραφικού κατακερματισμού';

  @override
  String get fwupdDeviceFlagDualImage => 'Η συσκευή προετοιμάζει ενημερώσεις';

  @override
  String get fwupdDeviceFlagSelfRecovery =>
      'Η συσκευή μπορεί να ανακάμψει από αστοχίες μνήμης flash';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'Η συσκευή παραμένει χρησιμοποιήσιμη κατά τη διάρκεια της ενημέρωσης';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'Το υλικολογισμικό συσκευής χρειάζεται να κάνει έναν έλεγχο έκδοσης';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'Η συσκευή απαιτείται για να εγκαταστήσει όλες τις παρεχόμενες ενημερώσεις';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'Η συσκευή υποστηρίζει τη μετάβαση σε διαφορετικό κλάδο υλικολογισμικού';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'Η συσκευή θα δημιουργήσει αντίγραφο ασφαλείας του υλικολογισμικού πριν την εγκατάσταση';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'Όλες οι συσκευές ίδιου τύπου θα ενημερωθούν ταυτόχρονα';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Επιτρέπονται μόνο αναβαθμίσεις έκδοσης';

  @override
  String get fwupdDeviceFlagUnreachable => 'Η συσκευή δεν είναι προσβάσιμη';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Τα μυστικά κλειδιά κρυπτογράφησης πλήρους δίσκου ενδέχεται να ακυρωθούν κατά την ενημέρωση';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Τέλος υποστήριξης';

  @override
  String get fwupdDeviceFlagSignedPayload =>
      'Υπογεγραμμένο ωφέλιμο φορτίο λογισμικού';

  @override
  String get fwupdDeviceFlagUnsignedPayload =>
      'Μη υπογεγραμμένο ωφέλιμο φορτίο λογισμικού';

  @override
  String get fwupdErrorInternal => 'Εσωτερικό σφάλμα';

  @override
  String get fwupdErrorVersionNewer =>
      'Εγκαταστάθηκε νεότερη έκδοση υλικολογισμικού';

  @override
  String get fwupdErrorVersionSame =>
      'Εγκαταστάθηκε η ίδια έκδοση υλικολογισμικού';

  @override
  String get fwupdErrorAlreadyPending =>
      'Έχει ήδη οριστεί για εγκατάσταση εκτός σύνδεσης';

  @override
  String get fwupdErrorAuthFailed => 'Αποτυχία λήψης ελέγχου ταυτότητας';

  @override
  String get fwupdErrorRead => 'Αποτυχία ανάγνωσης από συσκευή';

  @override
  String get fwupdErrorWrite => 'Αποτυχία εγγραφής σε συσκευή';

  @override
  String get fwupdErrorInvalidFile => 'Μη έγκυρη μορφή αρχείου';

  @override
  String get fwupdErrorNotFound => 'Δεν υπάρχει συσκευή που ταιριάζει';

  @override
  String get fwupdErrorNothingToDo => 'Καμία ενέργεια προς εκτέλεση';

  @override
  String get fwupdErrorNotSupported => 'Η ενέργεια δεν ήταν εφικτή';

  @override
  String get fwupdErrorSignatureInvalid => 'Η ψηφιακή υπογραφή δεν ήταν έγκυρη';

  @override
  String get fwupdErrorAcPowerRequired =>
      'Απαιτούνταν τροφοδοσία εναλλασσόμενου ρεύματος (AC)';

  @override
  String get fwupdErrorPermissionDenied => 'Δεν δόθηκε άδεια';

  @override
  String get fwupdErrorBrokenSystem =>
      'Το σύστημα έχει ρυθμιστεί από τον χρήστη με μη λειτουργικό τρόπο';

  @override
  String get fwupdErrorBatteryLevelTooLow =>
      'Η στάθμη της μπαταρίας του συστήματος είναι πολύ χαμηλή';

  @override
  String get fwupdErrorNeedsUserAction =>
      'Απαιτείται ενέργεια από τον χρήστη για την ολοκλήρωση της ενημέρωσης';

  @override
  String get fwupdErrorAuthExpired =>
      'Αποτυχία ελέγχου ταυτότητας λόγω λήξης των διαπιστευτηρίων';

  @override
  String get fwupdErrorUnknown => 'Άγνωστο σφάλμα';

  @override
  String get fwupdStatusUnknown => 'Άγνωστη κατάσταση';

  @override
  String get fwupdStatusIdle => 'Σε αδράνεια';

  @override
  String get fwupdStatusLoading => 'Γίνεται φόρτωση πόρου';

  @override
  String get fwupdStatusDecompressing => 'Γίνεται αποσυμπίεση υλικολογισμικού';

  @override
  String get fwupdStatusDeviceRestart => 'Γίνεται επανεκκίνηση της συσκευής';

  @override
  String get fwupdStatusDeviceWrite => 'Γίνεται εγγραφή σε συσκευή';

  @override
  String get fwupdStatusDeviceVerify =>
      'Γίνεται επαλήθευση (ανάγνωση) συσκευής';

  @override
  String get fwupdStatusScheduling =>
      'Γίνεται προγραμματισμός ενημέρωσης εκτός σύνδεσης';

  @override
  String get fwupdStatusDownloading => 'Λήψη αρχείου σε εξέλιξη';

  @override
  String get fwupdStatusDeviceRead => 'Γίνεται ανάγνωση από συσκευή';

  @override
  String get fwupdStatusDeviceErase => 'Γίνεται διαγραφή συσκευής';

  @override
  String get fwupdStatusWaitingForAuth => 'Αναμονή για έλεγχο ταυτότητας';

  @override
  String get fwupdStatusDeviceBusy => 'Η συσκευή είναι απασχολημένη';

  @override
  String get fwupdStatusShutdown => 'Η υπηρεσία (daemon) τερματίζεται';

  @override
  String get guid => 'GUID';

  @override
  String get installError => 'Αποτυχία εγκατάστασης υλικολογισμικού!';

  @override
  String get noDevicesFound => 'Δεν βρέθηκαν συσκευές';

  @override
  String get ok => 'Εντάξει';

  @override
  String get olderVersions => 'Παλαιότερες εκδόσεις';

  @override
  String get rebootLater => 'Επανεκκίνηση αργότερα';

  @override
  String get rebootNow => 'Επανεκκίνηση τώρα';

  @override
  String get rebootConfirmMessage =>
      'Πρέπει να επανεκκινήσετε τη συσκευή σας για να ολοκληρωθεί η ενημέρωση. Βεβαιωθείτε ότι η συσκευή σας είναι συνδεδεμένη στο ρεύμα ή πλήρως φορτισμένη. Αποθηκεύστε τα αρχεία σας πριν από την επανεκκίνηση για να αποφύγετε την απώλεια δεδομένων.';

  @override
  String get rebootConfirmTitle =>
      'Κάντε επανεκκίνηση για να ολοκληρωθεί η ενημέρωση';

  @override
  String get reinstall => 'Επανεγκατάσταση';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Επανεγκατάσταση του <b>$name</b>, έκδοση <b>$current</b>;';
  }

  @override
  String get showReleases => 'Εμφάνιση εκδόσεων';

  @override
  String get showUpdates => 'Εμφάνιση ενημερώσεων';

  @override
  String get update => 'Ενημέρωση';

  @override
  String get updateAvailable => 'Διαθέσιμη ενημέρωση';

  @override
  String get updateChecksums => 'Ενημέρωση αθροισμάτων ελέγχου';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Ενημέρωση αθροισμάτων ελέγχου συσκευής του <b>$name</b>;';
  }

  @override
  String get updateChecksumsInfo =>
      'Αυτό θα καταγράψει τους τρέχοντες κρυπτογραφικούς κατακερματισμούς (hashes) ως επαληθευμένους.';

  @override
  String get updateToLatest => 'Ενημέρωση στην τελευταία έκδοση';

  @override
  String updateConfirm(String name, String version) {
    return 'Ενημέρωση του <b>$name</b> στην έκδοση <b>$version</b>;';
  }

  @override
  String get vendor => 'Κατασκευαστής';

  @override
  String get verifyFirmware => 'Επαλήθευση υλικολογισμικού';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Επαλήθευση αθροισμάτων ελέγχου υλικολογισμικού του $name;';
  }

  @override
  String get currentVersion => 'Τρέχουσα έκδοση';

  @override
  String get minVersion => 'Ελάχιστη έκδοση';

  @override
  String get latestVersion => 'Τελευταία έκδοση';
}
