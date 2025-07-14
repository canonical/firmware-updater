// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Esperanto (`eo`).
class AppLocalizationsEo extends AppLocalizations {
  AppLocalizationsEo([String locale = 'eo']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'Vi eble perdos ĉiom da datenoj sen restaŭra ŝlosilo';

  @override
  String get affectsFdeWarningCheckboxBody1 =>
      'Make sure you have recovery keys for all your encrypted drives. You will need to enter them on boot after updating firmware.';

  @override
  String get affectsFdeWarningCheckboxBody2 =>
      'You need recovery keys because you have enabled hardware-backed encryption in Ubuntu or other operating systems on this computer.';

  @override
  String get affectsFdeWarningPassphraseBody1 =>
      'You may need to enter it on boot after updating firmware. Make sure you also have recovery keys for any other encrypted drives on this computer.';

  @override
  String get affectsFdeWarningPassphraseBody2 =>
      'You need to provide a recovery key because you enabled hardware-backed encryption.';

  @override
  String get affectsFdeCheckbox =>
      'Mi havas restaŭrajn ŝlosilojn por ĉiuj ĉifritaj diskoj';

  @override
  String get affectsFdeTextFieldLabel => 'Enter your recovery key';

  @override
  String get affectsFdeLinkLabel => 'Lerni plu';

  @override
  String get affectsFdeIncorrectKey =>
      'Recovery key does not work, check or replace it in the Security Center';

  @override
  String get allVersions => 'Ĉiuj versioj';

  @override
  String get appTitle => 'Ĝisdatigilo de mikroprogramoj';

  @override
  String get batteryWarning =>
      'Averto: kelkaj aparataj ĝisdatigoj estas nur disponeblaj kun ekstera energifonto!';

  @override
  String get checksum => 'Kontrolsumo';

  @override
  String get close => 'Fermi';

  @override
  String get cancel => 'Nuligi';

  @override
  String get current => 'Aktuala';

  @override
  String get deviceUnavailable => 'La aparato estos okupata dum tiu ago.';

  @override
  String get deviceRequest => 'Aparata peto';

  @override
  String get downgrade => 'Malĝisdatigi';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Ĉu malĝisdatigi <b>$name</b> al versio <b>$version</b>?';
  }

  @override
  String get flags => 'Flagoj';

  @override
  String get fwupdDeviceFlagInternal => 'Interna aparato';

  @override
  String get fwupdDeviceFlagUpdatable => 'Ĝisdatigebla';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'La ĝisdatigo postulas restarton';

  @override
  String get fwupdDeviceFlagRequireAc =>
      'La sistemo postulas eksteran energifonton';

  @override
  String get fwupdDeviceFlagLocked => 'La aparato estas ŝlosita';

  @override
  String get fwupdDeviceFlagSupported => 'Subtenata de fora servilo';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Postulas praŝargilon';

  @override
  String get fwupdDeviceFlagRegistered => 'Registrita';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'Postulas restarton post instalo';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'Postulas malstarton post instalo';

  @override
  String get fwupdDeviceFlagReported => 'Raportita al fora servilo';

  @override
  String get fwupdDeviceFlagNotified => 'La uzanto estis sciigita';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'Unue instalu al patra aparato';

  @override
  String get fwupdDeviceFlagIsBootloader => 'En praŝargila reĝimo';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'Aparato atendas rekonekton';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'Ignori sekurigajn kontrolojn pri valideco';

  @override
  String get fwupdDeviceFlagTrusted => 'Fidata';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'Aparata ĝisdatigo postulas aktivigon';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'La aparato ne reaperos post ĝisdatigo';

  @override
  String get fwupdDeviceFlagCanVerify => 'Eblas kontroli ĉifran haketaĵon';

  @override
  String get fwupdDeviceFlagDualImage =>
      'La aparato subtenas instalon sen tuja aktualigo de la ĝisdatigo';

  @override
  String get fwupdDeviceFlagSelfRecovery =>
      'La aparato povas restaŭri sin post malsukcesa instalo';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'La aparato estas uzebla dum ĝisdatigado';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'La aparata mikroprogramo devas havi versian kontrolon';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'La aparato postulas instali ĉiujn provizitajn eldonojn';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'La aparato permesas uzi alian branĉon de mikroprogramo';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'Aparato faros savkopion de mikroprogramo antaŭ instalo';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'Ĉiuj aparatoj de tiu tipo estos ĝisdatigitaj samtempe';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Nur versiaj ĝisdatigoj estas permesataj';

  @override
  String get fwupdDeviceFlagUnreachable => 'La aparato ne estas atingebla';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Ĝisdatigo eble malvalidigos sekretojn pri plendiska ĉifrado';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Fino de vivo';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Subskribita ŝarĝo';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Nesubskribita ŝarĝo';

  @override
  String get fwupdErrorInternal => 'Interna eraro';

  @override
  String get fwupdErrorVersionNewer =>
      'Instalis pli novan version de mikroprogramo';

  @override
  String get fwupdErrorVersionSame =>
      'Instalis la saman version de mikroprogramo';

  @override
  String get fwupdErrorAlreadyPending =>
      'Jam ekzistas plano instali senkonekte';

  @override
  String get fwupdErrorAuthFailed => 'Malsukcesis aŭtentikigo';

  @override
  String get fwupdErrorRead => 'Malsukcesis legi la aparaton';

  @override
  String get fwupdErrorWrite => 'Malsukcesis skribi sur la aparaton';

  @override
  String get fwupdErrorInvalidFile => 'Nevalida dosierformo';

  @override
  String get fwupdErrorNotFound => 'Ne ekzistas kongrua aparato';

  @override
  String get fwupdErrorNothingToDo => 'Nenio farota';

  @override
  String get fwupdErrorNotSupported => 'La ago ne eblis';

  @override
  String get fwupdErrorSignatureInvalid => 'La subskribo estas nevalida';

  @override
  String get fwupdErrorAcPowerRequired => 'Ekstera energifonto necesas';

  @override
  String get fwupdErrorPermissionDenied => 'Permeso mankas';

  @override
  String get fwupdErrorBrokenSystem => 'La uzanto misagordis sian sistemon';

  @override
  String get fwupdErrorBatteryLevelTooLow =>
      'La sistema baterio estas tro malplena';

  @override
  String get fwupdErrorNeedsUserAction =>
      'La uzanto devas fari ion por kompletigi la ĝisdatigon';

  @override
  String get fwupdErrorAuthExpired =>
      'Malsukcesis aŭtentigi pro eksvalidiĝinta akreditilo';

  @override
  String get fwupdErrorUnknown => 'Nekonata eraro';

  @override
  String get fwupdStatusUnknown => 'Nekonata stato';

  @override
  String get fwupdStatusIdle => 'Senokupa';

  @override
  String get fwupdStatusLoading => 'Ŝargante rimedon';

  @override
  String get fwupdStatusDecompressing => 'Maldensigante mikroprogramon';

  @override
  String get fwupdStatusDeviceRestart => 'Restartigante la aparaton';

  @override
  String get fwupdStatusDeviceWrite => 'Skribante sur aparaton';

  @override
  String get fwupdStatusDeviceVerify => 'Konfirmante (legante) aparaton';

  @override
  String get fwupdStatusScheduling => 'Planante senkonektan ĝisdatigon';

  @override
  String get fwupdStatusDownloading => 'Elŝutante dosieron';

  @override
  String get fwupdStatusDeviceRead => 'Legante aparaton';

  @override
  String get fwupdStatusDeviceErase => 'Forviŝante aparaton';

  @override
  String get fwupdStatusWaitingForAuth => 'Atendante aŭtentikigon';

  @override
  String get fwupdStatusDeviceBusy => 'La aparato estas okupata';

  @override
  String get fwupdStatusShutdown => 'La demono mallanĉiĝas';

  @override
  String get guid => 'Universale unikaj identigiloj';

  @override
  String get installError => 'Malsukcesis instali mikroprogramon!';

  @override
  String get noDevicesFound => 'Neniu aparato troviĝis';

  @override
  String get ok => 'Bone';

  @override
  String get olderVersions => 'Malnovaj versioj';

  @override
  String get rebootLater => 'Restartigi poste';

  @override
  String get rebootNow => 'Restartigi nun';

  @override
  String get rebootConfirmMessage =>
      'Vi devas restartigi vian aparaton por kompletigi la ĝisdatigon. Certigu, ke via aparato estas konektita al energifonto aŭ plene ŝargita. Konservu viajn dosierojn antaŭ la restarto por ne perdi datenojn.';

  @override
  String get rebootConfirmTitle =>
      'Restartigi por kompletigi ĉi tiun ĝisdatigon';

  @override
  String get reinstall => 'Reinstali';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Ĉu reinstali la version <b>$current</b> de <b>$name</b>?';
  }

  @override
  String get showReleases => 'Montri versiojn';

  @override
  String get showUpdates => 'Montri ĝisdatigojn';

  @override
  String get update => 'Ĝisdatigi';

  @override
  String get updateAvailable => 'Ĝisdatigo disponeblas';

  @override
  String get updateChecksums => 'Ĝisdatigi kontrolsumojn';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Ĉu ĝisdatigi la aparatajn kontrolsumojn de <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo =>
      'Tio registras la aktualajn ĉifrajn haketaĵojn kiel konfirmitajn.';

  @override
  String get updateToLatest => 'Ĝisdatigi al la plej nova versio';

  @override
  String updateConfirm(String name, String version) {
    return 'Ĉu ĝisdatigi <b>$name</b> al versio <b>$version</b>?';
  }

  @override
  String get vendor => 'Vendisto';

  @override
  String get verifyFirmware => 'Kontroli mikroprogramojn';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Ĉu kontroli la mikroprogramajn kontrolsumojn de $name?';
  }

  @override
  String get currentVersion => 'Aktuala versio';

  @override
  String get minVersion => 'Minimuma versio';

  @override
  String get latestVersion => 'Plej nova versio';
}
