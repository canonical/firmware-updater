import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_be.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bo.dart';
import 'app_localizations_bs.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_cy.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_dz.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_eo.dart';
import 'app_localizations_es.dart';
import 'app_localizations_et.dart';
import 'app_localizations_eu.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_ga.dart';
import 'app_localizations_gl.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_id.dart';
import 'app_localizations_is.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ka.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_km.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ku.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_mk.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_my.dart';
import 'app_localizations_nb.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_nn.dart';
import 'app_localizations_oc.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_se.dart';
import 'app_localizations_si.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sq.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_tg.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tl.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_ug.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('am'),
    Locale('ar'),
    Locale('be'),
    Locale('bg'),
    Locale('bn'),
    Locale('bo'),
    Locale('bs'),
    Locale('ca'),
    Locale('cs'),
    Locale('cy'),
    Locale('da'),
    Locale('de'),
    Locale('dz'),
    Locale('el'),
    Locale('en'),
    Locale('eo'),
    Locale('es'),
    Locale('et'),
    Locale('eu'),
    Locale('fa'),
    Locale('fi'),
    Locale('fr'),
    Locale('ga'),
    Locale('gl'),
    Locale('gu'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('hu'),
    Locale('id'),
    Locale('is'),
    Locale('it'),
    Locale('ja'),
    Locale('ka'),
    Locale('kk'),
    Locale('km'),
    Locale('kn'),
    Locale('ko'),
    Locale('ku'),
    Locale('lo'),
    Locale('lt'),
    Locale('lv'),
    Locale('mk'),
    Locale('ml'),
    Locale('mr'),
    Locale('my'),
    Locale('nb'),
    Locale('ne'),
    Locale('nl'),
    Locale('nn'),
    Locale('oc'),
    Locale('pa'),
    Locale('pl'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('ro'),
    Locale('ru'),
    Locale('se'),
    Locale('si'),
    Locale('sk'),
    Locale('sl'),
    Locale('sq'),
    Locale('sr'),
    Locale('sv'),
    Locale('ta'),
    Locale('te'),
    Locale('tg'),
    Locale('th'),
    Locale('tl'),
    Locale('tr'),
    Locale('ug'),
    Locale('uk'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'TW')
  ];

  /// No description provided for @affectsFdeWarningTitle.
  ///
  /// In en, this message translates to:
  /// **'You may lose all your data without recovery keys'**
  String get affectsFdeWarningTitle;

  /// No description provided for @affectsFdeWarningCheckboxBody1.
  ///
  /// In en, this message translates to:
  /// **'Make sure you have recovery keys for all your encrypted drives. You will need to enter them on boot after updating firmware.'**
  String get affectsFdeWarningCheckboxBody1;

  /// No description provided for @affectsFdeWarningCheckboxBody2.
  ///
  /// In en, this message translates to:
  /// **'You need recovery keys because you have enabled hardware-backed encryption in Ubuntu or other operating systems on this computer.'**
  String get affectsFdeWarningCheckboxBody2;

  /// No description provided for @affectsFdeWarningPassphraseBody1.
  ///
  /// In en, this message translates to:
  /// **'You may need to enter it on boot after updating firmware. Make sure you also have recovery keys for any other encrypted drives on this computer.'**
  String get affectsFdeWarningPassphraseBody1;

  /// No description provided for @affectsFdeWarningPassphraseBody2.
  ///
  /// In en, this message translates to:
  /// **'You need to provide a recovery key because you enabled hardware-backed encryption.'**
  String get affectsFdeWarningPassphraseBody2;

  /// No description provided for @affectsFdeCheckbox.
  ///
  /// In en, this message translates to:
  /// **'I have recovery keys for all my encrypted drives'**
  String get affectsFdeCheckbox;

  /// No description provided for @affectsFdeTextFieldLabel.
  ///
  /// In en, this message translates to:
  /// **'Enter your recovery key'**
  String get affectsFdeTextFieldLabel;

  /// No description provided for @affectsFdeLinkLabel.
  ///
  /// In en, this message translates to:
  /// **'Learn more'**
  String get affectsFdeLinkLabel;

  /// No description provided for @affectsFdeIncorrectKey.
  ///
  /// In en, this message translates to:
  /// **'Recovery key does not work, check or replace it in the Security Center'**
  String get affectsFdeIncorrectKey;

  /// No description provided for @allVersions.
  ///
  /// In en, this message translates to:
  /// **'All Versions'**
  String get allVersions;

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Firmware Updater'**
  String get appTitle;

  /// No description provided for @batteryWarning.
  ///
  /// In en, this message translates to:
  /// **'Warning: some device updates may only be available on external power!'**
  String get batteryWarning;

  /// No description provided for @checksum.
  ///
  /// In en, this message translates to:
  /// **'Checksum'**
  String get checksum;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @current.
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get current;

  /// No description provided for @deviceUnavailable.
  ///
  /// In en, this message translates to:
  /// **'The device will be unavailable during this action.'**
  String get deviceUnavailable;

  /// No description provided for @deviceRequest.
  ///
  /// In en, this message translates to:
  /// **'Device request'**
  String get deviceRequest;

  /// No description provided for @downgrade.
  ///
  /// In en, this message translates to:
  /// **'Downgrade'**
  String get downgrade;

  /// No description provided for @downgradeConfirm.
  ///
  /// In en, this message translates to:
  /// **'Downgrade <b>{name}</b> to version <b>{version}</b>?'**
  String downgradeConfirm(String name, String version);

  /// No description provided for @flags.
  ///
  /// In en, this message translates to:
  /// **'Flags'**
  String get flags;

  /// No description provided for @fwupdDeviceFlagInternal.
  ///
  /// In en, this message translates to:
  /// **'Internal device'**
  String get fwupdDeviceFlagInternal;

  /// No description provided for @fwupdDeviceFlagUpdatable.
  ///
  /// In en, this message translates to:
  /// **'Updatable'**
  String get fwupdDeviceFlagUpdatable;

  /// No description provided for @fwupdDeviceFlagOnlyOffline.
  ///
  /// In en, this message translates to:
  /// **'Update requires a reboot'**
  String get fwupdDeviceFlagOnlyOffline;

  /// No description provided for @fwupdDeviceFlagRequireAc.
  ///
  /// In en, this message translates to:
  /// **'System requires external power source'**
  String get fwupdDeviceFlagRequireAc;

  /// No description provided for @fwupdDeviceFlagLocked.
  ///
  /// In en, this message translates to:
  /// **'Device is locked'**
  String get fwupdDeviceFlagLocked;

  /// No description provided for @fwupdDeviceFlagSupported.
  ///
  /// In en, this message translates to:
  /// **'Supported on remote server'**
  String get fwupdDeviceFlagSupported;

  /// No description provided for @fwupdDeviceFlagNeedsBootloader.
  ///
  /// In en, this message translates to:
  /// **'Requires a bootloader'**
  String get fwupdDeviceFlagNeedsBootloader;

  /// No description provided for @fwupdDeviceFlagRegistered.
  ///
  /// In en, this message translates to:
  /// **'Registered'**
  String get fwupdDeviceFlagRegistered;

  /// No description provided for @fwupdDeviceFlagNeedsReboot.
  ///
  /// In en, this message translates to:
  /// **'Needs a reboot after installation'**
  String get fwupdDeviceFlagNeedsReboot;

  /// No description provided for @fwupdDeviceFlagNeedsShutdown.
  ///
  /// In en, this message translates to:
  /// **'Needs shutdown after installation'**
  String get fwupdDeviceFlagNeedsShutdown;

  /// No description provided for @fwupdDeviceFlagReported.
  ///
  /// In en, this message translates to:
  /// **'Reported to remote server'**
  String get fwupdDeviceFlagReported;

  /// No description provided for @fwupdDeviceFlagNotified.
  ///
  /// In en, this message translates to:
  /// **'User has been notified'**
  String get fwupdDeviceFlagNotified;

  /// No description provided for @fwupdDeviceFlagInstallParentFirst.
  ///
  /// In en, this message translates to:
  /// **'Install to parent device first'**
  String get fwupdDeviceFlagInstallParentFirst;

  /// No description provided for @fwupdDeviceFlagIsBootloader.
  ///
  /// In en, this message translates to:
  /// **'Is in bootloader mode'**
  String get fwupdDeviceFlagIsBootloader;

  /// No description provided for @fwupdDeviceFlagWaitForReplug.
  ///
  /// In en, this message translates to:
  /// **'Hardware is waiting to be replugged'**
  String get fwupdDeviceFlagWaitForReplug;

  /// No description provided for @fwupdDeviceFlagIgnoreValidation.
  ///
  /// In en, this message translates to:
  /// **'Ignore validation safety checks'**
  String get fwupdDeviceFlagIgnoreValidation;

  /// No description provided for @fwupdDeviceFlagTrusted.
  ///
  /// In en, this message translates to:
  /// **'Trusted'**
  String get fwupdDeviceFlagTrusted;

  /// No description provided for @fwupdDeviceFlagNeedsActivation.
  ///
  /// In en, this message translates to:
  /// **'Device update needs activation'**
  String get fwupdDeviceFlagNeedsActivation;

  /// No description provided for @fwupdDeviceFlagWillDisappear.
  ///
  /// In en, this message translates to:
  /// **'Device will not re-appear after update completes'**
  String get fwupdDeviceFlagWillDisappear;

  /// No description provided for @fwupdDeviceFlagCanVerify.
  ///
  /// In en, this message translates to:
  /// **'Cryptographic hash verification is available'**
  String get fwupdDeviceFlagCanVerify;

  /// No description provided for @fwupdDeviceFlagDualImage.
  ///
  /// In en, this message translates to:
  /// **'Device stages updates'**
  String get fwupdDeviceFlagDualImage;

  /// No description provided for @fwupdDeviceFlagSelfRecovery.
  ///
  /// In en, this message translates to:
  /// **'Device can recover flash failures'**
  String get fwupdDeviceFlagSelfRecovery;

  /// No description provided for @fwupdDeviceFlagUsableDuringUpdate.
  ///
  /// In en, this message translates to:
  /// **'Device is usable for the duration of the update'**
  String get fwupdDeviceFlagUsableDuringUpdate;

  /// No description provided for @fwupdDeviceFlagVersionCheckRequired.
  ///
  /// In en, this message translates to:
  /// **'Device firmware is required to have a version check'**
  String get fwupdDeviceFlagVersionCheckRequired;

  /// No description provided for @fwupdDeviceFlagInstallAllReleases.
  ///
  /// In en, this message translates to:
  /// **'Device is required to install all provided releases'**
  String get fwupdDeviceFlagInstallAllReleases;

  /// No description provided for @fwupdDeviceFlagHasMultipleBranches.
  ///
  /// In en, this message translates to:
  /// **'Device supports switching to a different branch of firmware'**
  String get fwupdDeviceFlagHasMultipleBranches;

  /// No description provided for @fwupdDeviceFlagBackupBeforeInstall.
  ///
  /// In en, this message translates to:
  /// **'Device will backup firmware before installing'**
  String get fwupdDeviceFlagBackupBeforeInstall;

  /// No description provided for @fwupdDeviceFlagWildcardInstall.
  ///
  /// In en, this message translates to:
  /// **'All devices of the same type will be updated at the same time'**
  String get fwupdDeviceFlagWildcardInstall;

  /// No description provided for @fwupdDeviceFlagOnlyVersionUpgrade.
  ///
  /// In en, this message translates to:
  /// **'Only version upgrades are allowed'**
  String get fwupdDeviceFlagOnlyVersionUpgrade;

  /// No description provided for @fwupdDeviceFlagUnreachable.
  ///
  /// In en, this message translates to:
  /// **'Device is unreachable'**
  String get fwupdDeviceFlagUnreachable;

  /// No description provided for @fwupdDeviceFlagAffectsFde.
  ///
  /// In en, this message translates to:
  /// **'Full disk encryption secrets may be invalidated when updating'**
  String get fwupdDeviceFlagAffectsFde;

  /// No description provided for @fwupdDeviceFlagEndOfLife.
  ///
  /// In en, this message translates to:
  /// **'End of life'**
  String get fwupdDeviceFlagEndOfLife;

  /// No description provided for @fwupdDeviceFlagSignedPayload.
  ///
  /// In en, this message translates to:
  /// **'Signed Payload'**
  String get fwupdDeviceFlagSignedPayload;

  /// No description provided for @fwupdDeviceFlagUnsignedPayload.
  ///
  /// In en, this message translates to:
  /// **'Unsigned Payload'**
  String get fwupdDeviceFlagUnsignedPayload;

  /// No description provided for @fwupdErrorInternal.
  ///
  /// In en, this message translates to:
  /// **'Internal error'**
  String get fwupdErrorInternal;

  /// No description provided for @fwupdErrorVersionNewer.
  ///
  /// In en, this message translates to:
  /// **'Installed newer firmware version'**
  String get fwupdErrorVersionNewer;

  /// No description provided for @fwupdErrorVersionSame.
  ///
  /// In en, this message translates to:
  /// **'Installed same firmware version'**
  String get fwupdErrorVersionSame;

  /// No description provided for @fwupdErrorAlreadyPending.
  ///
  /// In en, this message translates to:
  /// **'Already set to be installed offline'**
  String get fwupdErrorAlreadyPending;

  /// No description provided for @fwupdErrorAuthFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to get authentication'**
  String get fwupdErrorAuthFailed;

  /// No description provided for @fwupdErrorRead.
  ///
  /// In en, this message translates to:
  /// **'Failed to read from device'**
  String get fwupdErrorRead;

  /// No description provided for @fwupdErrorWrite.
  ///
  /// In en, this message translates to:
  /// **'Failed to write to the device'**
  String get fwupdErrorWrite;

  /// No description provided for @fwupdErrorInvalidFile.
  ///
  /// In en, this message translates to:
  /// **'Invalid file format'**
  String get fwupdErrorInvalidFile;

  /// No description provided for @fwupdErrorNotFound.
  ///
  /// In en, this message translates to:
  /// **'No matching device exists'**
  String get fwupdErrorNotFound;

  /// No description provided for @fwupdErrorNothingToDo.
  ///
  /// In en, this message translates to:
  /// **'Nothing to do'**
  String get fwupdErrorNothingToDo;

  /// No description provided for @fwupdErrorNotSupported.
  ///
  /// In en, this message translates to:
  /// **'Action was not possible'**
  String get fwupdErrorNotSupported;

  /// No description provided for @fwupdErrorSignatureInvalid.
  ///
  /// In en, this message translates to:
  /// **'Signature was invalid'**
  String get fwupdErrorSignatureInvalid;

  /// No description provided for @fwupdErrorAcPowerRequired.
  ///
  /// In en, this message translates to:
  /// **'AC power was required'**
  String get fwupdErrorAcPowerRequired;

  /// No description provided for @fwupdErrorPermissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Permission was denied'**
  String get fwupdErrorPermissionDenied;

  /// No description provided for @fwupdErrorBrokenSystem.
  ///
  /// In en, this message translates to:
  /// **'User has configured their system in a broken way'**
  String get fwupdErrorBrokenSystem;

  /// No description provided for @fwupdErrorBatteryLevelTooLow.
  ///
  /// In en, this message translates to:
  /// **'The system battery level is too low'**
  String get fwupdErrorBatteryLevelTooLow;

  /// No description provided for @fwupdErrorNeedsUserAction.
  ///
  /// In en, this message translates to:
  /// **'User needs to do an action to complete the update'**
  String get fwupdErrorNeedsUserAction;

  /// No description provided for @fwupdErrorAuthExpired.
  ///
  /// In en, this message translates to:
  /// **'Failed to get auth as credentials have expired'**
  String get fwupdErrorAuthExpired;

  /// No description provided for @fwupdErrorUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown error'**
  String get fwupdErrorUnknown;

  /// No description provided for @fwupdStatusUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown state'**
  String get fwupdStatusUnknown;

  /// No description provided for @fwupdStatusIdle.
  ///
  /// In en, this message translates to:
  /// **'Idle'**
  String get fwupdStatusIdle;

  /// No description provided for @fwupdStatusLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading a resource'**
  String get fwupdStatusLoading;

  /// No description provided for @fwupdStatusDecompressing.
  ///
  /// In en, this message translates to:
  /// **'Decompressing firmware'**
  String get fwupdStatusDecompressing;

  /// No description provided for @fwupdStatusDeviceRestart.
  ///
  /// In en, this message translates to:
  /// **'Restarting the device'**
  String get fwupdStatusDeviceRestart;

  /// No description provided for @fwupdStatusDeviceWrite.
  ///
  /// In en, this message translates to:
  /// **'Writing to a device'**
  String get fwupdStatusDeviceWrite;

  /// No description provided for @fwupdStatusDeviceVerify.
  ///
  /// In en, this message translates to:
  /// **'Verifying (reading) a device'**
  String get fwupdStatusDeviceVerify;

  /// No description provided for @fwupdStatusScheduling.
  ///
  /// In en, this message translates to:
  /// **'Scheduling an offline update'**
  String get fwupdStatusScheduling;

  /// No description provided for @fwupdStatusDownloading.
  ///
  /// In en, this message translates to:
  /// **'A file is downloading'**
  String get fwupdStatusDownloading;

  /// No description provided for @fwupdStatusDeviceRead.
  ///
  /// In en, this message translates to:
  /// **'Reading from a device'**
  String get fwupdStatusDeviceRead;

  /// No description provided for @fwupdStatusDeviceErase.
  ///
  /// In en, this message translates to:
  /// **'Erasing a device'**
  String get fwupdStatusDeviceErase;

  /// No description provided for @fwupdStatusWaitingForAuth.
  ///
  /// In en, this message translates to:
  /// **'Waiting for authentication'**
  String get fwupdStatusWaitingForAuth;

  /// No description provided for @fwupdStatusDeviceBusy.
  ///
  /// In en, this message translates to:
  /// **'The device is busy'**
  String get fwupdStatusDeviceBusy;

  /// No description provided for @fwupdStatusShutdown.
  ///
  /// In en, this message translates to:
  /// **'The daemon is shutting down'**
  String get fwupdStatusShutdown;

  /// No description provided for @guid.
  ///
  /// In en, this message translates to:
  /// **'GUIDs'**
  String get guid;

  /// No description provided for @installError.
  ///
  /// In en, this message translates to:
  /// **'Failed to install firmware!'**
  String get installError;

  /// No description provided for @noDevicesFound.
  ///
  /// In en, this message translates to:
  /// **'No devices found'**
  String get noDevicesFound;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @olderVersions.
  ///
  /// In en, this message translates to:
  /// **'Older Versions'**
  String get olderVersions;

  /// No description provided for @rebootLater.
  ///
  /// In en, this message translates to:
  /// **'Restart later'**
  String get rebootLater;

  /// No description provided for @rebootNow.
  ///
  /// In en, this message translates to:
  /// **'Restart now'**
  String get rebootNow;

  /// No description provided for @rebootConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'You must restart your device to complete the update. Make sure your device is plugged in or fully charged. Save your files before you restart to avoid losing data.'**
  String get rebootConfirmMessage;

  /// No description provided for @rebootConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Restart to complete this update'**
  String get rebootConfirmTitle;

  /// No description provided for @reinstall.
  ///
  /// In en, this message translates to:
  /// **'Reinstall'**
  String get reinstall;

  /// No description provided for @reinstallConfirm.
  ///
  /// In en, this message translates to:
  /// **'Reinstall <b>{name}</b> version <b>{current}</b>?'**
  String reinstallConfirm(String name, String current);

  /// No description provided for @showReleases.
  ///
  /// In en, this message translates to:
  /// **'Show Releases'**
  String get showReleases;

  /// No description provided for @showUpdates.
  ///
  /// In en, this message translates to:
  /// **'Show Updates'**
  String get showUpdates;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @updateAvailable.
  ///
  /// In en, this message translates to:
  /// **'Update available'**
  String get updateAvailable;

  /// No description provided for @updateChecksums.
  ///
  /// In en, this message translates to:
  /// **'Update Checksums'**
  String get updateChecksums;

  /// No description provided for @updateChecksumsConfirm.
  ///
  /// In en, this message translates to:
  /// **'Update device checksums of <b>{name}</b>?'**
  String updateChecksumsConfirm(String name);

  /// No description provided for @updateChecksumsInfo.
  ///
  /// In en, this message translates to:
  /// **'This will record the current cryptographic hashes as verified.'**
  String get updateChecksumsInfo;

  /// No description provided for @updateToLatest.
  ///
  /// In en, this message translates to:
  /// **'Update to Latest'**
  String get updateToLatest;

  /// No description provided for @updateConfirm.
  ///
  /// In en, this message translates to:
  /// **'Update <b>{name}</b> to version <b>{version}</b>?'**
  String updateConfirm(String name, String version);

  /// No description provided for @vendor.
  ///
  /// In en, this message translates to:
  /// **'Vendor'**
  String get vendor;

  /// No description provided for @verifyFirmware.
  ///
  /// In en, this message translates to:
  /// **'Verify Firmware'**
  String get verifyFirmware;

  /// No description provided for @verifyFirmwareConfirm.
  ///
  /// In en, this message translates to:
  /// **'Verify firmware checksums of {name}?'**
  String verifyFirmwareConfirm(String name);

  /// No description provided for @currentVersion.
  ///
  /// In en, this message translates to:
  /// **'Current Version'**
  String get currentVersion;

  /// No description provided for @minVersion.
  ///
  /// In en, this message translates to:
  /// **'Minimum Version'**
  String get minVersion;

  /// No description provided for @latestVersion.
  ///
  /// In en, this message translates to:
  /// **'Latest Version'**
  String get latestVersion;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'am',
        'ar',
        'be',
        'bg',
        'bn',
        'bo',
        'bs',
        'ca',
        'cs',
        'cy',
        'da',
        'de',
        'dz',
        'el',
        'en',
        'eo',
        'es',
        'et',
        'eu',
        'fa',
        'fi',
        'fr',
        'ga',
        'gl',
        'gu',
        'he',
        'hi',
        'hr',
        'hu',
        'id',
        'is',
        'it',
        'ja',
        'ka',
        'kk',
        'km',
        'kn',
        'ko',
        'ku',
        'lo',
        'lt',
        'lv',
        'mk',
        'ml',
        'mr',
        'my',
        'nb',
        'ne',
        'nl',
        'nn',
        'oc',
        'pa',
        'pl',
        'pt',
        'ro',
        'ru',
        'se',
        'si',
        'sk',
        'sl',
        'sq',
        'sr',
        'sv',
        'ta',
        'te',
        'tg',
        'th',
        'tl',
        'tr',
        'ug',
        'uk',
        'vi',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
        }
        break;
      }
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'am':
      return AppLocalizationsAm();
    case 'ar':
      return AppLocalizationsAr();
    case 'be':
      return AppLocalizationsBe();
    case 'bg':
      return AppLocalizationsBg();
    case 'bn':
      return AppLocalizationsBn();
    case 'bo':
      return AppLocalizationsBo();
    case 'bs':
      return AppLocalizationsBs();
    case 'ca':
      return AppLocalizationsCa();
    case 'cs':
      return AppLocalizationsCs();
    case 'cy':
      return AppLocalizationsCy();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'dz':
      return AppLocalizationsDz();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'eo':
      return AppLocalizationsEo();
    case 'es':
      return AppLocalizationsEs();
    case 'et':
      return AppLocalizationsEt();
    case 'eu':
      return AppLocalizationsEu();
    case 'fa':
      return AppLocalizationsFa();
    case 'fi':
      return AppLocalizationsFi();
    case 'fr':
      return AppLocalizationsFr();
    case 'ga':
      return AppLocalizationsGa();
    case 'gl':
      return AppLocalizationsGl();
    case 'gu':
      return AppLocalizationsGu();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'hu':
      return AppLocalizationsHu();
    case 'id':
      return AppLocalizationsId();
    case 'is':
      return AppLocalizationsIs();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ka':
      return AppLocalizationsKa();
    case 'kk':
      return AppLocalizationsKk();
    case 'km':
      return AppLocalizationsKm();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ku':
      return AppLocalizationsKu();
    case 'lo':
      return AppLocalizationsLo();
    case 'lt':
      return AppLocalizationsLt();
    case 'lv':
      return AppLocalizationsLv();
    case 'mk':
      return AppLocalizationsMk();
    case 'ml':
      return AppLocalizationsMl();
    case 'mr':
      return AppLocalizationsMr();
    case 'my':
      return AppLocalizationsMy();
    case 'nb':
      return AppLocalizationsNb();
    case 'ne':
      return AppLocalizationsNe();
    case 'nl':
      return AppLocalizationsNl();
    case 'nn':
      return AppLocalizationsNn();
    case 'oc':
      return AppLocalizationsOc();
    case 'pa':
      return AppLocalizationsPa();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'se':
      return AppLocalizationsSe();
    case 'si':
      return AppLocalizationsSi();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'sq':
      return AppLocalizationsSq();
    case 'sr':
      return AppLocalizationsSr();
    case 'sv':
      return AppLocalizationsSv();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'tg':
      return AppLocalizationsTg();
    case 'th':
      return AppLocalizationsTh();
    case 'tl':
      return AppLocalizationsTl();
    case 'tr':
      return AppLocalizationsTr();
    case 'ug':
      return AppLocalizationsUg();
    case 'uk':
      return AppLocalizationsUk();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
