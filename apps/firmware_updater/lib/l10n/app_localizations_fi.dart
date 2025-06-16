// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get affectsFdeWarningTitle =>
      'Kaikki tiedot voidaan menettää ilman palautusavaimia';

  @override
  String get affectsFdeWarningBody1 =>
      'Varmista että sinulla on palautusavaimet kaikille salatuille asemille. Sinun tulee syöttää ne käynnistettäessä laiteohjelmiston päivttämisen jälkeen.';

  @override
  String get affectsFdeWarningBody2 =>
      'Tarvitse palautusavaimia, koska tällä tietokoneella on Ubuntun tai muun käyttöjärjestelmän käytössä laitevarmennettu salaus.';

  @override
  String get affectsFdeTextFieldLabel => 'Enter your recovery key';

  @override
  String get affectsFdeLinkLabel => 'Lue lisää';

  @override
  String get affectsFdeIncorrectKey =>
      'Recovery key does not work, check or replace it in the Security Center';

  @override
  String get allVersions => 'Kaikki versiot';

  @override
  String get appTitle => 'Laiteohjelmiston päivitys';

  @override
  String get batteryWarning =>
      'Varoitus: jotkin laitepäivitykset ovat mahdollisia vain käytettäessä ulkoista virtalähdettä!';

  @override
  String get checksum => 'Tarkistussumma';

  @override
  String get close => 'Sulje';

  @override
  String get cancel => 'Peru';

  @override
  String get current => 'Nykyinen';

  @override
  String get deviceUnavailable =>
      'Laite ei ole käytettävissä tämän toiminnon aikana.';

  @override
  String get deviceRequest => 'Laitepyyntö';

  @override
  String get downgrade => 'Palauta vanhempaan versioon';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Palautetaanko <b>$name</b> vanhempaan versioon <b>$version</b>?';
  }

  @override
  String get flags => 'Liput';

  @override
  String get fwupdDeviceFlagInternal => 'Sisäinen laite';

  @override
  String get fwupdDeviceFlagUpdatable => 'Päivitettävissä';

  @override
  String get fwupdDeviceFlagOnlyOffline =>
      'Päivitys vaatii uudelleenkäynnistyksen';

  @override
  String get fwupdDeviceFlagRequireAc =>
      'Järjestelmä tarvitsee ulkoisen virtalähteen';

  @override
  String get fwupdDeviceFlagLocked => 'Laite on lukittu';

  @override
  String get fwupdDeviceFlagSupported => 'Tuettu etäpalvelimella';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Vaatii alkukäynnistysohjelman';

  @override
  String get fwupdDeviceFlagRegistered => 'Rekisteröity';

  @override
  String get fwupdDeviceFlagNeedsReboot =>
      'Tarvitsee uudelleen käynnistämisen asennuksen jälkeen';

  @override
  String get fwupdDeviceFlagNeedsShutdown =>
      'Tarvitsee sammuttamisen asennuksen jälkeen';

  @override
  String get fwupdDeviceFlagReported => 'Tehty ilmoitus etäpalvelimelle';

  @override
  String get fwupdDeviceFlagNotified => 'Käyttäjälle on ilmoitettu';

  @override
  String get fwupdDeviceFlagInstallParentFirst =>
      'Asenna ylemmän tason laitteelle ensin';

  @override
  String get fwupdDeviceFlagIsBootloader => 'On alkulataustilassa';

  @override
  String get fwupdDeviceFlagWaitForReplug =>
      'Laite odottaa uudelleen kytkemistä';

  @override
  String get fwupdDeviceFlagIgnoreValidation =>
      'Jätä huomiotta turvallisuustarkistukset';

  @override
  String get fwupdDeviceFlagTrusted => 'Luotettu';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'Laite vaatii aktivoinnin';

  @override
  String get fwupdDeviceFlagWillDisappear =>
      'Laite ei ilmesty uudelleen päivityksen valmistuttua';

  @override
  String get fwupdDeviceFlagCanVerify =>
      'Salaustiivisteiden tarkistus on käytettävissä';

  @override
  String get fwupdDeviceFlagDualImage => 'Laite vaiheistaa päivitykset';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'Laite voi toipua asennusvirheistä';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate =>
      'Laite on käytettävissä päivityksen aikana';

  @override
  String get fwupdDeviceFlagVersionCheckRequired =>
      'Laiteohjelmisto vaatii versiotarkistuksen';

  @override
  String get fwupdDeviceFlagInstallAllReleases =>
      'Laite vaatii kaikkien tarjolla olevian julkaisujen asentamisen';

  @override
  String get fwupdDeviceFlagHasMultipleBranches =>
      'Laite tukee vaihtamista laiteohjelmiston toiseen versiohaaraan';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall =>
      'Laite varmuuskopioi laiteohjelmiston ennen asentamista';

  @override
  String get fwupdDeviceFlagWildcardInstall =>
      'Kaikki samantyyppiset laitteet päivitetään samaan aikaan';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade =>
      'Vain versiopäivitykset sallitaan';

  @override
  String get fwupdDeviceFlagUnreachable => 'Laite ei ole tavoitettavissa';

  @override
  String get fwupdDeviceFlagAffectsFde =>
      'Koko levyn salauksen salausavaimet voivat tulla epäkelvoiksi päivitettäessä';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Tuki on loppunut';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Allekirjoitettu sisältö';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Allekirjoittamaton sisältö';

  @override
  String get fwupdErrorInternal => 'Sisäinen virhe';

  @override
  String get fwupdErrorVersionNewer => 'Uudempi laiteohjelmisto asennettu';

  @override
  String get fwupdErrorVersionSame => 'Sama laiteohjelmistoversio asennettu';

  @override
  String get fwupdErrorAlreadyPending =>
      'On jo merkitty asennettavaksi kun poiskytketty';

  @override
  String get fwupdErrorAuthFailed => 'Tunnistautuminen epäonnistui';

  @override
  String get fwupdErrorRead => 'Laitteelta lukeminen epäonnistui';

  @override
  String get fwupdErrorWrite => 'Laitteelle kirjoittaminen epäonnistui';

  @override
  String get fwupdErrorInvalidFile => 'Virheellinen tieodostomuoto';

  @override
  String get fwupdErrorNotFound => 'Täsmäävää laitetta ei löydy';

  @override
  String get fwupdErrorNothingToDo => 'Ei tehtävää';

  @override
  String get fwupdErrorNotSupported => 'Toiminto ei mahdollinen';

  @override
  String get fwupdErrorSignatureInvalid => 'Virheellinen allekirjoitus';

  @override
  String get fwupdErrorAcPowerRequired => 'Ulkoinen virtalähde vaaditaan';

  @override
  String get fwupdErrorPermissionDenied => 'Pääsy evätty';

  @override
  String get fwupdErrorBrokenSystem =>
      'Järjestelmän asetukset ovat virheelliset';

  @override
  String get fwupdErrorBatteryLevelTooLow =>
      'Järjestelmän akun varaus on liian alhainen';

  @override
  String get fwupdErrorNeedsUserAction =>
      'Käyttäjän tulee tehdä toimia ennen päivitystä';

  @override
  String get fwupdErrorAuthExpired =>
      'Tunnistauminen ei onnistunut koska kirjautumistiedot ovat vanhentuneet';

  @override
  String get fwupdErrorUnknown => 'Tuntematon virhe';

  @override
  String get fwupdStatusUnknown => 'Tuntematon tila';

  @override
  String get fwupdStatusIdle => 'Jouten';

  @override
  String get fwupdStatusLoading => 'Ladataan resurssia';

  @override
  String get fwupdStatusDecompressing => 'Puretaan laiteohjelmistoa';

  @override
  String get fwupdStatusDeviceRestart => 'Käynnistetään laitetta uudelleen';

  @override
  String get fwupdStatusDeviceWrite => 'Kirjoitetaan laitteelle';

  @override
  String get fwupdStatusDeviceVerify => 'Tarkistetaan (luetaan) laitetta';

  @override
  String get fwupdStatusScheduling => 'Ajastetaan päivitys kun poiskytketty';

  @override
  String get fwupdStatusDownloading => 'Ladatan tiedostoa';

  @override
  String get fwupdStatusDeviceRead => 'Luetaan laitteelta';

  @override
  String get fwupdStatusDeviceErase => 'Tyhjennetään laitetta';

  @override
  String get fwupdStatusWaitingForAuth => 'Odotetaan tunnistautumista';

  @override
  String get fwupdStatusDeviceBusy => 'Laite on varattu';

  @override
  String get fwupdStatusShutdown => 'Taustaohjelmaa sammutetaan';

  @override
  String get guid => 'GUID-tunnisteet';

  @override
  String get installError => 'Laiteohjelmiston asennus epäonnistui!';

  @override
  String get noDevicesFound => 'Laitteita ei löydy';

  @override
  String get ok => 'OK';

  @override
  String get olderVersions => 'Vanhemmat versiot';

  @override
  String get rebootLater => 'Käynnistä uudelleen myöhemmin';

  @override
  String get rebootNow => 'Käynnistä uudelleen nyt';

  @override
  String get rebootConfirmMessage =>
      'Laite tulee käynnistää uudelelleen päivityksen viimeistelemiseksi. Varmista, että laite on kytketty verkkovirtaan tai täyteen ladattu. Tallenna tiedostosi ennen uudelleen käynnistystä.';

  @override
  String get rebootConfirmTitle =>
      'Käynnistä uudelleen viimeistelläksesi tämän päivityksen';

  @override
  String get reinstall => 'Asenna uudelleen';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Asennetaanko <b>$name</b> versio <b>$current</b> uudelleen?';
  }

  @override
  String get showReleases => 'Näytä julkaisut';

  @override
  String get showUpdates => 'Näytä päivitykset';

  @override
  String get update => 'Päivitä';

  @override
  String get updateAvailable => 'Päivitys saatavilla';

  @override
  String get updateChecksums => 'Päivitä tarkistussummat';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Päivitetäänkö laitteen <b>$name</b> tarkistussummat?';
  }

  @override
  String get updateChecksumsInfo =>
      'Tämä tallentaa nykyiset salaustiivisteet tarkistetuiksi.';

  @override
  String get updateToLatest => 'Päivitä uusimpaan';

  @override
  String updateConfirm(String name, String version) {
    return 'Päivitetäänkö <b>$name</b> versioon <b>$version</b>?';
  }

  @override
  String get vendor => 'Valmistaja';

  @override
  String get verifyFirmware => 'Tarkista laiteohjelmisto';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Tarkistetaanko laitteen $name laiteohjelmiston tarkistussummat?';
  }

  @override
  String get currentVersion => 'Nykyinen versio';

  @override
  String get minVersion => 'Vanhin versio';

  @override
  String get latestVersion => 'Uusin versio';
}
