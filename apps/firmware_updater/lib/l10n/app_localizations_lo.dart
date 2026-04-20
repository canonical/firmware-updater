// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lao (`lo`).
class AppLocalizationsLo extends AppLocalizations {
  AppLocalizationsLo([String locale = 'lo']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'ທ່ານອາດຈະສູນເສຍຂໍ້ມູນທັງໝົດຂອງທ່ານ ຖ້າບໍ່ມີລະຫັດກູ້ຄືນ';

  @override
  String get affectsFdeWarningUbuntuFdeTitle =>
      'ທ່ານອາດຈະສູນເສຍຂໍ້ມູນທັງໝົດຂອງທ່ານ ຖ້າບໍ່ມີລະຫັດກູ້ຄືນຂອງທ່ານ';

  @override
  String get affectsFdeWarningOtherFdeBody =>
      'ໃຫ້ແນ່ໃຈວ່າທ່ານມີລະຫັດກູ້ຄືນສຳລັບດິດທັງໝົດທີ່ຖືກເຂົ້າລະຫັດໄວ້. ທ່ານອາດຈຳເປັນຕ້ອງປ້ອນພວກມັນເມື່ອເປີດເຄື່ອງ ຫຼັງຈາກອັບເດດເຟີມແວ.';

  @override
  String get affectsFdeWarningUbuntuFdeBody =>
      'ການເຂົ້າລະຫັດທີ່ຮອງຮັບໂດຍຮາດແວຖືກເປີດໃຊ້ງານຢູ່ໃນຄອມພິວເຕີຂອງທ່ານ. ທ່ານອາດຈຳເປັນຕ້ອງປ້ອນລະຫັດກູ້ຄືນຂອງທ່ານເມື່ອເປີດເຄື່ອງ ຫຼັງຈາກອັບເດດເຟີມແວ. ໃຫ້ແນ່ໃຈວ່າທ່ານມີລະຫັດກູ້ຄືນສຳລັບດິດອື່ນໆ ທີ່ຖືກເຂົ້າລະຫັດຢູ່ໃນຄອມພິວເຕີນີ້ເຊັ່ນກັນ.';

  @override
  String get affectsFdeWarningBitlockerBody =>
      'BitLocker ຖືກເປີດໃຊ້ງານຢູ່ໃນຄອມພິວເຕີຂອງທ່ານ. ໃຫ້ແນ່ໃຈວ່າທ່ານມີລະຫັດກູ້ຄືນສຳລັບດິດທັງໝົດທີ່ຖືກເຂົ້າລະຫັດໄວ້. ທ່ານອາດຈຳເປັນຕ້ອງປ້ອນພວກມັນເມື່ອເປີດເຄື່ອງ ຫຼັງຈາກອັບເດດເຟີມແວ.';

  @override
  String get affectsFdeCheckbox =>
      'ຂ້ອຍມີລະຫັດກູ້ຄືນສຳລັບໄດຣຟ໌ທີ່ຖືກເຂົ້າລະຫັດທັງໝົດຂອງຂ້ອຍ';

  @override
  String get affectsFdeTextFieldLabel => 'ປ້ອນລະຫັດກູ້ຄືນຂອງທ່ານ';

  @override
  String get affectsFdeLinkLabel => 'ຮຽນຮູ້ເພີ່ມເຕີມ';

  @override
  String get affectsFdeIncorrectKey =>
      'ລະຫັດກູ້ຄືນໃຊ້ບໍ່ໄດ້, ໃຫ້ກວດສອບ ຫຼື ປ່ຽນແທນມັນໃໝ່ໃນ ສູນຄວາມປອດໄພ';

  @override
  String get allVersions => 'ເວີຊັນທັງໝົດ';

  @override
  String get appTitle => 'ຕົວອັບເດດເຟີມແວ';

  @override
  String get batteryWarning =>
      'ຄຳເຕືອນ: ການອັບເດດອຸປະກອນບາງຢ່າງ ອາດຈະເຮັດໄດ້ກໍຕໍ່ເມື່ອສຽບສາຍສາກເທົ່ານັ້ນ!';

  @override
  String get checksum => 'ຜົນລວມກວດສອຍ';

  @override
  String get close => 'ປິດ';

  @override
  String get cancel => 'ຍົກເລີກ';

  @override
  String get current => 'ປັດຈຸບັນ';

  @override
  String get deviceUnavailable =>
      'ອຸປະກອນຈະບໍ່ສາມາດໃຊ້ງານໄດ້ໃນລະຫວ່າງການດຳເນີນການນີ້.';

  @override
  String get deviceRequest => 'ຄຳຮ້ອງຂໍຂອງອຸປະກອນ';

  @override
  String get downgrade => 'ດາວເກຣດ';

  @override
  String downgradeConfirm(String name, String version) {
    return 'ດາວເກຣດ <b>$name</b> ໄປເປັນເວີຊັນ <b>$version</b> ບໍ່?';
  }

  @override
  String get flags => 'Flags';

  @override
  String get fwupdDeviceFlagInternal => 'ອຸປະກອນພາຍໃນ';

  @override
  String get fwupdDeviceFlagUpdatable => 'ສາມາດອັບເດດໄດ້';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'ການອັບເດດຕ້ອງການການຣີສະຕາດເຄື່ອງ';

  @override
  String get fwupdDeviceFlagRequireAc => 'ລະບົບຕ້ອງການແຫຼ່ງພະລັງງານພາຍນອກ';

  @override
  String get fwupdDeviceFlagLocked => 'ອຸປະກອນຖືກລັອກ';

  @override
  String get fwupdDeviceFlagSupported => 'ຮອງຮັບຢູ່ເທິງເຊີບເວີທາງໄກ';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'ຕ້ອງການ Bootloader';

  @override
  String get fwupdDeviceFlagRegistered => 'ລົງທະບຽນແລ້ວ';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'ຕ້ອງການຣີສະຕາດຫຼັງຈາກການຕິດຕັ້ງ';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'ຕ້ອງການປິດເຄື່ອງຫຼັງຈາກການຕິດຕັ້ງ';

  @override
  String get fwupdDeviceFlagReported => 'ລາຍງານໄປຍັງເຊີບເວີທາງໄກແລ້ວ';

  @override
  String get fwupdDeviceFlagNotified => 'ຜູ້ໃຊ້ໄດ້ຮັບການແຈ້ງເຕືອນແລ້ວ';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'ຕິດຕັ້ງໃສ່ອຸປະກອນຫຼັກກ່ອນ';

  @override
  String get fwupdDeviceFlagIsBootloader => 'ຢູ່ໃນໂໝດ Bootloader';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'ຮາດແວກຳລັງລໍຖ້າການຖອດແລ້ວສຽບໃໝ່';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'ບໍ່ສົນໃຈການກວດສອບຄວາມປອດໄພ';

  @override
  String get fwupdDeviceFlagTrusted => 'ເຊື່ອຖືໄດ້';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'ການອັບເດດອຸປະກອນຕ້ອງການການເປີດໃຊ້ງານ';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'ອຸປະກອນຈະບໍ່ປະກົດຂຶ້ນມາອີກ ຫຼັງຈາກການອັບເດດສຳເລັດ';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'ມີການກວດສອບ Cryptographic hash ໃຫ້ໃຊ້ງານ';

  @override
  String get fwupdDeviceFlagDualImage => 'ອຸປະກອນກຽມການອັບເດດເປັນຂັ້ນຕອນ';

  @override
  String get fwupdDeviceFlagSelfRecovery =>
      'ອຸປະກອນສາມາດກູ້ຄືນຄວາມລົ້ມເຫຼວໃນການແຟລຊໄດ້';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'ອຸປະກອນສາມາດໃຊ້ງານໄດ້ໃນລະຫວ່າງການອັບເດດ';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'ເຟີມແວຂອງອຸປະກອນຈຳເປັນຕ້ອງມີການກວດສອບເວີຊັນ';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'ອຸປະກອນຈຳເປັນຕ້ອງຕິດຕັ້ງທຸກລຸ້ນທີ່ປ່ອຍອອກມາ';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'ອຸປະກອນຮອງຮັບການປ່ຽນໄປໃຊ້ເຟີມແວສາຂາອື່ນ';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'ອຸປະກອນຈະສຳຮອງຂໍ້ມູນເຟີມແວກ່ອນການຕິດຕັ້ງ';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'ອຸປະກອນປະເພດດຽວກັນທັງໝົດຈະຖືກອັບເດດພ້ອມກັນ';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'ອະນຸຍາດສະເພາະການອັບເກຣດເວີຊັນເທົ່ານັ້ນ';

  @override
  String get fwupdDeviceFlagUnreachable => 'ບໍ່ສາມາດຕິດຕໍ່ອຸປະກອນໄດ້';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'ລະຫັດລັບການເຂົ້າລະຫັດເຕັມດິດ ອາດຈະໃຊ້ບໍ່ໄດ້ເມື່ອມີການອັບເດດ';

  @override
  String get fwupdDeviceFlagEndOfLife => 'ໝົດອາຍຸການສະໜັບສະໜູນ';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Payload ທີ່ມີການເຊັນລາຍເຊັນ';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Payload ທີ່ບໍ່ມີການເຊັນລາຍເຊັນ';

  @override
  String get fwupdErrorInternal => 'ຂໍ້ຜິດພາດພາຍໃນ';

  @override
  String get fwupdErrorVersionNewer => 'ຕິດຕັ້ງເຟີມແວເວີຊັນທີ່ໃໝ່ກວ່າແລ້ວ';

  @override
  String get fwupdErrorVersionSame => 'ຕິດຕັ້ງເຟີມແວເວີຊັນດຽວກັນແລ້ວ';

  @override
  String get fwupdErrorAlreadyPending =>
      'ຖືກຕັ້ງຄ່າໃຫ້ຕິດຕັ້ງແບບອອບໄລນ໌ໄວ້ແລ້ວ';

  @override
  String get fwupdErrorAuthFailed => 'ການຢືນຢັນຕົວຕົນລົ້ມເຫຼວ';

  @override
  String get fwupdErrorRead => 'ອ່ານຂໍ້ມູນຈາກອຸປະກອນລົ້ມເຫຼວ';

  @override
  String get fwupdErrorWrite => 'ຂຽນຂໍ້ມູນລົງອຸປະກອນລົ້ມເຫຼວ';

  @override
  String get fwupdErrorInvalidFile => 'ຮູບແບບໄຟລ໌ບໍ່ຖືກຕ້ອງ';

  @override
  String get fwupdErrorNotFound => 'ບໍ່ພົບອຸປະກອນທີ່ກົງກັນ';

  @override
  String get fwupdErrorNothingToDo => 'ບໍ່ມີຫຍັງຕ້ອງເຮັດ';

  @override
  String get fwupdErrorNotSupported => 'ບໍ່ສາມາດດຳເນີນການໄດ້';

  @override
  String get fwupdErrorSignatureInvalid => 'ລາຍເຊັນບໍ່ຖືກຕ້ອງ';

  @override
  String get fwupdErrorAcPowerRequired => 'ຕ້ອງການແຫຼ່ງພະລັງງານ AC';

  @override
  String get fwupdErrorPermissionDenied => 'ການອະນຸຍາດຖືກປະຕິເສດ';

  @override
  String get fwupdErrorBrokenSystem =>
      'ຜູ້ໃຊ້ໄດ້ປັບແຕ່ງລະບົບຂອງພວກເຂົາໃນຮູບແບບທີ່ເສຍຫາຍ';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'ລະດັບແບັດເຕີຣີຂອງລະບົບຕ່ຳເກີນໄປ';

  @override
  String get fwupdErrorNeedsUserAction =>
      'ຜູ້ໃຊ້ຕ້ອງດຳເນີນການບາງຢ່າງເພື່ອໃຫ້ການອັບເດດສຳເລັດ';

  @override
  String get fwupdErrorAuthExpired =>
      'ການຢືນຢັນຕົວຕົນລົ້ມເຫຼວ ເນື່ອງຈາກຂໍ້ມູນການຢືນຢັນໝົດອາຍຸ';

  @override
  String get fwupdErrorUnknown => 'ຂໍ້ຜິດພາດທີ່ບໍ່ຮູ້ຈັກ';

  @override
  String get fwupdStatusUnknown => 'ສະຖານະທີ່ບໍ່ຮູ້ຈັກ';

  @override
  String get fwupdStatusIdle => 'ວ່າງງານ';

  @override
  String get fwupdStatusLoading => 'ກຳລັງໂຫຼດຊັບພະຍາກອນ';

  @override
  String get fwupdStatusDecompressing => 'ກຳລັງແຕກໄຟລ໌ເຟີມແວ';

  @override
  String get fwupdStatusDeviceRestart => 'ກຳລັງຣີສະຕາດອຸປະກອນ';

  @override
  String get fwupdStatusDeviceWrite => 'ກຳລັງຂຽນລົງອຸປະກອນ';

  @override
  String get fwupdStatusDeviceVerify => 'ກຳລັງກວດສອບ (ອ່ານ) ອຸປະກອນ';

  @override
  String get fwupdStatusScheduling => 'ກຳລັງຈັດຕາຕະລາງການອັບເດດແບບອອບໄລນ໌';

  @override
  String get fwupdStatusDownloading => 'ກຳລັງດາວໂຫຼດໄຟລ໌';

  @override
  String get fwupdStatusDeviceRead => 'ກຳລັງອ່ານຈາກອຸປະກອນ';

  @override
  String get fwupdStatusDeviceErase => 'ກຳລັງລຶບຂໍ້ມູນອຸປະກອນ';

  @override
  String get fwupdStatusWaitingForAuth => 'ກຳລັງລໍຖ້າການຢືນຢັນຕົວຕົນ';

  @override
  String get fwupdStatusDeviceBusy => 'ອຸປະກອນບໍ່ວ່າງ';

  @override
  String get fwupdStatusShutdown => 'ໂປຣແກຣມເບື້ອງຫຼັງກຳລັງປິດການເຮັດວຽກ';

  @override
  String get guid => 'GUIDs';

  @override
  String get installError => 'ຕິດຕັ້ງເຟີມແວລົ້ມເຫຼວ!';

  @override
  String get noDevicesFound => 'ບໍ່ພົບອຸປະກອນ';

  @override
  String get ok => 'ຕົກລົງ';

  @override
  String get olderVersions => 'ເວີຊັນເກົ່າ';

  @override
  String get rebootLater => 'ຣີສະຕາດພາຍຫຼັງ';

  @override
  String get rebootNow => 'ຣີສະຕາດດຽວນີ້';

  @override
  String get rebootConfirmMessage =>
      'ທ່ານຕ້ອງຣີສະຕາດອຸປະກອນຂອງທ່ານເພື່ອໃຫ້ການອັບເດດສຳເລັດ. ໃຫ້ແນ່ໃຈວ່າອຸປະກອນຂອງທ່ານສຽບສາຍສາກຢູ່ ຫຼື ມີແບັດເຕີຣີເຕັມ. ບັນທຶກໄຟລ໌ຂອງທ່ານກ່ອນທີ່ຈະຣີສະຕາດ ເພື່ອຫຼີກເວັ້ນການສູນເສຍຂໍ້ມູນ.';

  @override
  String get rebootConfirmTitle => 'ຣີສະຕາດເພື່ອເຮັດໃຫ້ການອັບເດດນີ້ສຳເລັດ';

  @override
  String get reinstall => 'ຕິດຕັ້ງຄືນໃໝ່';

  @override
  String reinstallConfirm(String name, String current) {
    return 'ຕິດຕັ້ງ <b>$name</b> ເວີຊັນ <b>$current</b> ຄືນໃໝ່ບໍ່?';
  }

  @override
  String get showReleases => 'ສະແດງລຸ້ນທີ່ປ່ອຍອອກມາ';

  @override
  String get showUpdates => 'ສະແດງການອັບເດດ';

  @override
  String get update => 'ອັບເດດ';

  @override
  String get updateAvailable => 'ມີການອັບເດດ';

  @override
  String get updateChecksums => 'ອັບເດດ Checksums';

  @override
  String updateChecksumsConfirm(String name) {
    return 'ອັບເດດ Checksums ອຸປະກອນຂອງ <b>$name</b> ບໍ່?';
  }

  @override
  String get updateChecksumsInfo =>
      'ສິ່ງນີ້ຈະບັນທຶກ cryptographic hashes ປັດຈຸບັນວ່າຜ່ານການກວດສອບແລ້ວ.';

  @override
  String get updateToLatest => 'ອັບເດດເປັນເວີຊັນຫຼ້າສຸດ';

  @override
  String updateConfirm(String name, String version) {
    return 'ອັບເດດ <b>$name</b> ໄປເປັນເວີຊັນ <b>$version</b> ບໍ່?';
  }

  @override
  String get vendor => 'ຜູ້ຜະລິດ';

  @override
  String get verifyFirmware => 'ກວດສອບເຟີມແວ';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'ກວດສອບ Checksums ເຟີມແວຂອງ $name ບໍ່?';
  }

  @override
  String get currentVersion => 'ເວີຊັນປັດຈຸບັນ';

  @override
  String get minVersion => 'ເວີຊັນຂັ້ນຕ່ຳ';

  @override
  String get latestVersion => 'ເວີຊັນຫຼ້າສຸດ';
}
