// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'Anda bisa kehilangan semua data Anda tanpa kunci pemulihan';

  @override
  String get affectsFdeWarningBody1 =>
      'Pastikan Anda memiliki kunci pemulihan untuk semua drive terenkripsi Anda. Anda harus memasukkannya saat boot setelah memperbarui firmware.';

  @override
  String get affectsFdeWarningBody2 =>
      'Anda membutuhkan kunci pemulihan karena Anda telah mengaktifkan enkripsi yang didukung perangkat keras di Ubuntu atau sistem operasi lainnya di komputer ini.';

  @override
  String get affectsFdeTextFieldLabel => 'Enter your recovery key';

  @override
  String get affectsFdeLinkLabel => 'Learn more';

  @override
  String get affectsFdeIncorrectKey =>
      'Recovery key does not work, check or replace it in the Security Center';

  @override
  String get allVersions => 'Semua versi';

  @override
  String get appTitle => 'Pembaruan Firmware';

  @override
  String get batteryWarning =>
      'Peringatan: beberapa pembaruan perangkat mungkin hanya tersedia pada daya eksternal!';

  @override
  String get checksum => 'Ceksum';

  @override
  String get close => 'Tutup';

  @override
  String get cancel => 'Batal';

  @override
  String get current => 'Saat ini';

  @override
  String get deviceUnavailable =>
      'Perangkat ini tidak akan tersedia selama aksi ini.';

  @override
  String get deviceRequest => 'Permintaan perangkat';

  @override
  String get downgrade => 'Turunkan versi';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Turun tingkatkan <b>$name</b> ke versi <b>$version</b>?';
  }

  @override
  String get flags => 'Bendera';

  @override
  String get fwupdDeviceFlagInternal => 'Perangkat internal';

  @override
  String get fwupdDeviceFlagUpdatable => 'Dapat diperbarui';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'Pembaruan memerlukan boot ulang';

  @override
  String get fwupdDeviceFlagRequireAc =>
      'Sistem memerlukan sumber daya eksternal';

  @override
  String get fwupdDeviceFlagLocked => 'Perangkat terkunci';

  @override
  String get fwupdDeviceFlagSupported => 'Didukung pada server remote';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Memerlukan bootloader';

  @override
  String get fwupdDeviceFlagRegistered => 'Terdaftar';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'Memerlukan boot ulang setelah pemasangan';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'Perlu dimatikan setelah pemasangan';

  @override
  String get fwupdDeviceFlagReported => 'Dilaporkan pada server remote';

  @override
  String get fwupdDeviceFlagNotified => 'Pengguna sudah diberitahu';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'Pasang ke perangkat induk terlebih dahulu';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Dalam mode bootloader';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'Perangkat keras menunggu untuk dipasang ulang';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'Abaikan validasi keamanan';

  @override
  String get fwupdDeviceFlagTrusted => 'Terpercaya';

  @override
  String get fwupdDeviceFlagNeedsActivation =>
      'Pembaruan perangkat memerlukan aktivasi';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'Perangkat tidak akan muncul kembali setelah pembaruan selesai';

  @override
  String get fwupdDeviceFlagCanVerify => 'Verifikasi hash kriptografi tersedia';

  @override
  String get fwupdDeviceFlagDualImage => 'Pembaruan tahapan perangkat';

  @override
  String get fwupdDeviceFlagSelfRecovery =>
      'Perangkat dapat memulihkan kegagalan flash';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'Perangkat dapat digunakan selama durasi pembaruan';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'Firmware perangkat diperlukan untuk melakukan pemeriksaan versi';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'Perangkat diperlukan untuk memasang semua rilis yang disediakan';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'Perangkat mendukung peralihan ke cabang firmware yang berbeda';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'Perangkat akan mencadangkan firmware sebelum memasang';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'Semua perangkat dari jenis yang sama akan diperbarui secara bersamaan';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Hanya peningkatan versi yang diperbolehkan';

  @override
  String get fwupdDeviceFlagUnreachable => 'Perangkat tidak dapat dijangkau';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Rahasia enkripsi disk penuh mungkin tidak valid selama pembaruan';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Akhir hidup';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Muatan yang Ditandatangani';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Muatan yang Ditandatangani';

  @override
  String get fwupdErrorInternal => 'Kesalahan internal';

  @override
  String get fwupdErrorVersionNewer =>
      'Versi firmware yang lebih baru terinstal';

  @override
  String get fwupdErrorVersionSame => 'Versi firmware yang sama terinstal';

  @override
  String get fwupdErrorAlreadyPending =>
      'Sudah diatur untuk dipasang secara offline';

  @override
  String get fwupdErrorAuthFailed => 'Gagal untuk mendapatkan otentikasi';

  @override
  String get fwupdErrorRead => 'Gagal membaca dari perangkat';

  @override
  String get fwupdErrorWrite => 'Gagal menulis ke perangkat';

  @override
  String get fwupdErrorInvalidFile => 'Format berkas tidak valid';

  @override
  String get fwupdErrorNotFound => 'Tidak ada perangkat yang cocok';

  @override
  String get fwupdErrorNothingToDo => 'Tidak ada yang dilakukan';

  @override
  String get fwupdErrorNotSupported => 'Aksi tidak mungkin lakukan';

  @override
  String get fwupdErrorSignatureInvalid => 'Tanda tangan tidak valid';

  @override
  String get fwupdErrorAcPowerRequired => 'Daya AC diperlukan';

  @override
  String get fwupdErrorPermissionDenied => 'Izin ditolak';

  @override
  String get fwupdErrorBrokenSystem =>
      'Pengguna telah mengonfigurasikan sistem mereka dalam cara yang salah';

  @override
  String get fwupdErrorBatteryLevelTooLow =>
      'Level baterai sistem terlalu rendah';

  @override
  String get fwupdErrorNeedsUserAction =>
      'Pengguna perlu untuk melakukan sebuah tindakan untuk menyelesaikan pembaruan';

  @override
  String get fwupdErrorAuthExpired =>
      'Gagal mendapatkan autentikasi karena kredensial telah kadaluwarsa';

  @override
  String get fwupdErrorUnknown => 'Kesalahan yang tidak diketahui';

  @override
  String get fwupdStatusUnknown => 'Status tidak diketahui';

  @override
  String get fwupdStatusIdle => 'Menganggur';

  @override
  String get fwupdStatusLoading => 'Memuat sumber daya';

  @override
  String get fwupdStatusDecompressing => 'Mendekompresi firmware';

  @override
  String get fwupdStatusDeviceRestart => 'Memulai ulang perangkat';

  @override
  String get fwupdStatusDeviceWrite => 'Menulis ke perangkat';

  @override
  String get fwupdStatusDeviceVerify => 'Memverifikasi (membaca) perangkat';

  @override
  String get fwupdStatusScheduling => 'Menjadwalkan pembaruan offline';

  @override
  String get fwupdStatusDownloading => 'Sebuah berkas sedang diunduh';

  @override
  String get fwupdStatusDeviceRead => 'Membaca dari sebuah perangkat';

  @override
  String get fwupdStatusDeviceErase => 'Menghapus perangkat';

  @override
  String get fwupdStatusWaitingForAuth => 'Menunggu autentikasi';

  @override
  String get fwupdStatusDeviceBusy => 'Perangkat sedang sibuk';

  @override
  String get fwupdStatusShutdown => 'Daemon sedang dinonaktifkan';

  @override
  String get guid => 'GUID';

  @override
  String get installError => 'Gagal memasang firmware!';

  @override
  String get noDevicesFound => 'Tidak ada perangkat yang ditemukan';

  @override
  String get ok => 'Ok';

  @override
  String get olderVersions => 'Versi yang lebih lama';

  @override
  String get rebootLater => 'Mulai ulang nanti';

  @override
  String get rebootNow => 'Mulai ulang sekarang';

  @override
  String get rebootConfirmMessage =>
      'Anda harus memulai ulang perangkat Anda untuk menyelesaikan pembaruan. Pastikan perangkat Anda tercolok atau terisi sempurna. Simpan berkas Anda sebelum memulai ulang untuk mencegah kehilangan data.';

  @override
  String get rebootConfirmTitle =>
      'Mulai ulang untuk menyelesaikan pembaruan ini';

  @override
  String get reinstall => 'Pasang ulang';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Pasang ulang <b>$name</b> versi <b>$current</b>?';
  }

  @override
  String get showReleases => 'Tampilkan Rilis';

  @override
  String get showUpdates => 'Tampilkan Pembaruan';

  @override
  String get update => 'Pembaruan';

  @override
  String get updateAvailable => 'Pembaruan tersedia';

  @override
  String get updateChecksums => 'Perbarui Ceksum';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Perbarui ceksum perangkat <b>$name</b>?';
  }

  @override
  String get updateChecksumsInfo =>
      'Ini akan mencatat hash kriptografi saat ini sebagai terverifikasi.';

  @override
  String get updateToLatest => 'Perbarui ke Paling Baru';

  @override
  String updateConfirm(String name, String version) {
    return 'Perbarui <b>$name</b> ke versi <b>$version</b>?';
  }

  @override
  String get vendor => 'Vendor';

  @override
  String get verifyFirmware => 'Verifikasi Firmware';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Verifikasi ceksum firmware $name?';
  }

  @override
  String get currentVersion => 'Versi Saat Ini';

  @override
  String get minVersion => 'Versi Minimum';

  @override
  String get latestVersion => 'Versi Paling Baru';
}
