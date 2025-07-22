// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Irish (`ga`).
class AppLocalizationsGa extends AppLocalizations {
  AppLocalizationsGa([String locale = 'ga']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'Seans go gcaillfidh tú do shonraí go léir gan eochracha athshlánaithe';

  @override
  String get affectsFdeWarningUbuntuFdeTitle =>
      'You may lose all your data without your recovery key';

  @override
  String get affectsFdeWarningOtherFdeBody =>
      'Make sure you have recovery keys for all encrypted disks. You might need to enter them on boot after updating firmware.';

  @override
  String get affectsFdeWarningUbuntuFdeBody =>
      'Hardware-backed encryption is enabled on your computer. You may need to enter your recovery key on boot after updating firmware. Make sure you also have recovery keys for any other encrypted disks on this computer.';

  @override
  String get affectsFdeWarningBitlockerBody =>
      'BitLocker is enabled on your computer. Make sure you have recovery keys for all encrypted disks. You might need to enter them on boot after updating firmware.';

  @override
  String get affectsFdeCheckbox =>
      'Tá eochracha athshlánaithe agam do mo thiomáineann criptithe go léir';

  @override
  String get affectsFdeTextFieldLabel => 'Enter your recovery key';

  @override
  String get affectsFdeLinkLabel => 'Foghlaim níos mó';

  @override
  String get affectsFdeIncorrectKey =>
      'Recovery key does not work, check or replace it in the Security Center';

  @override
  String get allVersions => 'Gach Leagan';

  @override
  String get appTitle => 'Nuashonróir Dochtearraí';

  @override
  String get batteryWarning =>
      'Rabhadh: d\'fhéadfadh roinnt nuashonruithe gléis a bheith ar fáil ach amháin ar chumhacht sheachtrach!';

  @override
  String get checksum => 'Seiceálacha';

  @override
  String get close => 'Dún';

  @override
  String get cancel => 'Cuir ar ceal';

  @override
  String get current => 'Reatha';

  @override
  String get deviceUnavailable =>
      'Ní bheidh an gléas ar fáil le linn an ghnímh seo.';

  @override
  String get deviceRequest => 'Iarratas ar ghléas';

  @override
  String get downgrade => 'Íosghrádú';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Íosghrádaigh <b>$name</b> go leagan <b>$version</b>?';
  }

  @override
  String get flags => 'Bratacha';

  @override
  String get fwupdDeviceFlagInternal => 'Gléas inmheánach';

  @override
  String get fwupdDeviceFlagUpdatable => 'In-athnuaite';

  @override
  String get fwupdDeviceFlagOnlyOffline =>
      'Tá athbhútáil de dhíth chun nuashonrú a dhéanamh';

  @override
  String get fwupdDeviceFlagRequireAc =>
      'Éilíonn an córas foinse cumhachta seachtrach';

  @override
  String get fwupdDeviceFlagLocked => 'Tá an gléas faoi ghlas';

  @override
  String get fwupdDeviceFlagSupported => 'Tacaithe ar fhreastalaí cianda';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Éilíonn bootloader';

  @override
  String get fwupdDeviceFlagRegistered => 'Cláraithe';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'Riachtanais atosaigh tar éis a shuiteáil';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'Múchadh riachtanais tar éis suiteála';

  @override
  String get fwupdDeviceFlagReported => 'Tuairiscíodh don fhreastalaí cianda';

  @override
  String get fwupdDeviceFlagNotified => 'Cuireadh an t-úsáideoir ar an eolas';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'Suiteáil an máthairghléas ar dtús';

  @override
  String get fwupdDeviceFlagIsBootloader => 'An bhfuil i mód bootloader';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'Tá crua-earraí ag fanacht le hathphlugáil';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'Déan neamhaird de sheiceálacha sábháilteachta bailíochtaithe';

  @override
  String get fwupdDeviceFlagTrusted => 'Iontaofa';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'Gníomhachtú de dhíth ar nuashonrú gléis';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'Ní thaispeánfar an gléas arís tar éis don nuashonrú a bheith críochnaithe';

  @override
  String get fwupdDeviceFlagCanVerify => 'Tá fíorú cripteagrafach hash ar fáil';

  @override
  String get fwupdDeviceFlagDualImage =>
      'Nuashonruithe ar chéimeanna an ghléis';

  @override
  String get fwupdDeviceFlagSelfRecovery =>
      'Is féidir le gléas a ghnóthú teipeanna flash';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'Tá an gléas inúsáidte ar feadh ré an nuashonraithe';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'Ní mór seiceáil leagain a bheith ag firmware gléis';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'Ní mór don ghléas gach eisiúint a chuirtear ar fáil a shuiteáil';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'Tacaíonn gléas aistriú chuig brainse eile de firmware';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'Déanfaidh an gléas firmware cúltaca sula suiteálfar é';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'Déanfar gach feiste den chineál céanna a nuashonrú ag an am céanna';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Ní cheadaítear ach uasghrádú leagain';

  @override
  String get fwupdDeviceFlagUnreachable => 'Ní féidir an gléas a úsáid';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Is féidir rúin chriptithe diosca iomlána a chur ó bhail agus iad á nuashonrú';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Deireadh a shaoil';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Pálasta Sínithe';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Pálasta Gan Síniú';

  @override
  String get fwupdErrorInternal => 'Earráid inmheánach';

  @override
  String get fwupdErrorVersionNewer => 'Leagan firmware níos nuaí suiteáilte';

  @override
  String get fwupdErrorVersionSame => 'Suiteáilte an leagan firmware céanna';

  @override
  String get fwupdErrorAlreadyPending => 'Socraithe le suiteáil as líne cheana';

  @override
  String get fwupdErrorAuthFailed => 'Theip ar fhíordheimhniú a fháil';

  @override
  String get fwupdErrorRead => 'Theip ar léamh ón ngléas';

  @override
  String get fwupdErrorWrite => 'Theip ar scríobh chuig an ngléas';

  @override
  String get fwupdErrorInvalidFile => 'Formáid neamhbhailí comhaid';

  @override
  String get fwupdErrorNotFound => 'Níl aon ghléas meaitseála ann';

  @override
  String get fwupdErrorNothingToDo => 'Faic le déanamh';

  @override
  String get fwupdErrorNotSupported => 'Níorbh fhéidir gníomh a dhéanamh';

  @override
  String get fwupdErrorSignatureInvalid => 'Bhí an síniú neamhbhailí';

  @override
  String get fwupdErrorAcPowerRequired => 'Bhí cumhacht AC ag teastáil';

  @override
  String get fwupdErrorPermissionDenied => 'Diúltaíodh cead';

  @override
  String get fwupdErrorBrokenSystem =>
      'Tá a gcóras cumraithe ag an úsáideoir ar bhealach briste';

  @override
  String get fwupdErrorBatteryLevelTooLow =>
      'Tá leibhéal ceallraí an chórais ró-íseal';

  @override
  String get fwupdErrorNeedsUserAction =>
      'Ní mór don úsáideoir gníomh a dhéanamh chun an nuashonrú a chur i gcrích';

  @override
  String get fwupdErrorAuthExpired =>
      'Theip ar údarú a fháil toisc go bhfuil dintiúir imithe in éag';

  @override
  String get fwupdErrorUnknown => 'Earráid anaithnid';

  @override
  String get fwupdStatusUnknown => 'Staid anaithnid';

  @override
  String get fwupdStatusIdle => 'Díomhaoin';

  @override
  String get fwupdStatusLoading => 'Acmhainn á luchtú';

  @override
  String get fwupdStatusDecompressing => 'Firmware dí-chomhbhrúite';

  @override
  String get fwupdStatusDeviceRestart => 'An gléas á atosú';

  @override
  String get fwupdStatusDeviceWrite => 'Ag scríobh chuig gléas';

  @override
  String get fwupdStatusDeviceVerify => 'Gléas a fhíorú (a léamh)';

  @override
  String get fwupdStatusScheduling => 'Nuashonrú as líne a sceidealú';

  @override
  String get fwupdStatusDownloading => 'Tá comhad á íoslódáil';

  @override
  String get fwupdStatusDeviceRead => 'Ag léamh ó ghléas';

  @override
  String get fwupdStatusDeviceErase => 'Gléas á scriosadh';

  @override
  String get fwupdStatusWaitingForAuth => 'Ag fanacht le fíordheimhniú';

  @override
  String get fwupdStatusDeviceBusy => 'Tá an gléas gnóthach';

  @override
  String get fwupdStatusShutdown => 'Tá an deamhan ag múchadh';

  @override
  String get guid => 'Guids';

  @override
  String get installError => 'Theip ar shuiteáil firmware!';

  @override
  String get noDevicesFound => 'Níor aimsíodh gléasanna ar bith';

  @override
  String get ok => 'Ceart go leor';

  @override
  String get olderVersions => 'Leaganacha Níos Sine';

  @override
  String get rebootLater => 'Atosaigh níos déanaí';

  @override
  String get rebootNow => 'Atosaigh anois';

  @override
  String get rebootConfirmMessage =>
      'Ní mór duit do ghléas a atosú chun an nuashonrú a chomhlánú. Cinntigh go bhfuil do ghléas plugáilte isteach nó luchtaithe go hiomlán. Sábháil do chomhaid sula n-atosóidh tú chun nach gcaillfidh tú sonraí.';

  @override
  String get rebootConfirmTitle =>
      'Atosaigh chun an nuashonrú seo a chur i gcrích';

  @override
  String get reinstall => 'Athshuiteáil';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Athshuiteáil <b>$name</b> leagan <b>$current</b>?';
  }

  @override
  String get showReleases => 'Taispeáin Eisiúintí';

  @override
  String get showUpdates => 'Taispeáin Nuashonruithe';

  @override
  String get update => 'Nuashonrú';

  @override
  String get updateAvailable => 'Nuashonrú ar fáil';

  @override
  String get updateChecksums => 'Nuashonraigh Seiceálacha';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Nuashonraigh seiceálacha gléis de <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo =>
      'Déanfaidh sé seo taifead ar na hashes cripteagrafacha reatha mar a fhíoraítear iad.';

  @override
  String get updateToLatest => 'Nuashonrú ar an gceann is déanaí';

  @override
  String updateConfirm(String name, String version) {
    return 'Nuashonraigh <b>$name</b> go leagan <b>$version</b>?';
  }

  @override
  String get vendor => 'Díoltóir';

  @override
  String get verifyFirmware => 'Fíoraigh Firmware';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Fíoraigh seiceálacha firmware de $name?';
  }

  @override
  String get currentVersion => 'Leagan Reatha';

  @override
  String get minVersion => 'Leagan Íosta';

  @override
  String get latestVersion => 'An Leagan is Déanaí';
}
