// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get affectsFdeWarningTitle => 'Vous risquez de perdre toutes vos données sans clés de récupération';

  @override
  String get affectsFdeWarningBody1 => 'Assurez-vous d’avoir les clés de récupération pour tous vos disques chiffrés. Vous devrez les entrer au démarrage après la mise à jour du micrologiciel.';

  @override
  String get affectsFdeWarningBody2 => 'Vous avez besoin de clés de récupération parce que vous avez activé le chiffrement sur le matériel dans Ubuntu ou d’autres systèmes d’exploitation sur cet ordinateur.';

  @override
  String get affectsFdeCheckbox => 'J’ai les clés de récupération pour tous mes disques cryptés';

  @override
  String get allVersions => 'Toutes les versions';

  @override
  String get appTitle => 'Actualiseur de micrologiciel';

  @override
  String get batteryWarning => 'Attention : certaines mises à jour d\'appareils peuvent être disponibles uniquement sur alimentation externe !';

  @override
  String get checksum => 'Somme de contrôle';

  @override
  String get close => 'Fermer';

  @override
  String get cancel => 'Annuler';

  @override
  String get current => 'Actuel';

  @override
  String get deviceUnavailable => 'Cet appareil sera indisponible pendant cette action.';

  @override
  String get deviceRequest => 'Demande d\'appareil';

  @override
  String get downgrade => 'Rétrograder';

  @override
  String downgradeConfirm(String name, String version) {
    return 'Rétrograder <b>$name</b> vers version<b>$version</b> ?';
  }

  @override
  String get flags => 'Attributs';

  @override
  String get fwupdDeviceFlagInternal => 'Périphérique interne';

  @override
  String get fwupdDeviceFlagUpdatable => 'Peut être mis à jour';

  @override
  String get fwupdDeviceFlagOnlyOffline => 'La mise à jour requiert un redémarrage';

  @override
  String get fwupdDeviceFlagRequireAc => 'Le système nécessite une source d’alimentation externe';

  @override
  String get fwupdDeviceFlagLocked => 'L’appareil est verrouillé';

  @override
  String get fwupdDeviceFlagSupported => 'Pris en charge sur le serveur distant';

  @override
  String get fwupdDeviceFlagNeedsBootloader => 'Nécessite un chargeur de démarrage';

  @override
  String get fwupdDeviceFlagRegistered => 'Enregistré';

  @override
  String get fwupdDeviceFlagNeedsReboot => 'Nécessite un redémarrage après installation';

  @override
  String get fwupdDeviceFlagNeedsShutdown => 'Nécessite une extinction après installation';

  @override
  String get fwupdDeviceFlagReported => 'Signalé au serveur distant';

  @override
  String get fwupdDeviceFlagNotified => 'Utilisateur notifié';

  @override
  String get fwupdDeviceFlagInstallParentFirst => 'Installer sur l’appareil parent en premier';

  @override
  String get fwupdDeviceFlagIsBootloader => 'Est en mode chargeur de démarrage';

  @override
  String get fwupdDeviceFlagWaitForReplug => 'Le matériel attend d’être rebranché';

  @override
  String get fwupdDeviceFlagIgnoreValidation => 'Ignorer les contrôles de sécurité de la validation';

  @override
  String get fwupdDeviceFlagTrusted => 'De confiance';

  @override
  String get fwupdDeviceFlagNeedsActivation => 'La mise à jour de l’appareil nécessite une activation';

  @override
  String get fwupdDeviceFlagWillDisappear => 'L’appareil ne ré-apparaîtra pas après la mise à jour';

  @override
  String get fwupdDeviceFlagCanVerify => 'La vérification par hachage cryptographique est disponible';

  @override
  String get fwupdDeviceFlagDualImage => 'Mises à jour des étapes de l\'appareil';

  @override
  String get fwupdDeviceFlagSelfRecovery => 'L\'appareil peut se récupérer si panne de flashage';

  @override
  String get fwupdDeviceFlagUsableDuringUpdate => 'L’appareil est utilisable durant la mise à jour';

  @override
  String get fwupdDeviceFlagVersionCheckRequired => 'Le micrologiciel de l\'appareil doit faire l\'objet d\'une vérification de version';

  @override
  String get fwupdDeviceFlagInstallAllReleases => 'L\'appareil est requis pour installer toutes les versions fournies';

  @override
  String get fwupdDeviceFlagHasMultipleBranches => 'L\'appareil prend en charge le passage à une autre branche de micrologiciel';

  @override
  String get fwupdDeviceFlagBackupBeforeInstall => 'L\'appareil sauvegardera le micrologiciel avant l\'installation';

  @override
  String get fwupdDeviceFlagWildcardInstall => 'Tous les appareils du même type seront mis à jour en même temps';

  @override
  String get fwupdDeviceFlagOnlyVersionUpgrade => 'Seules les versions plus récentes sont autorisées';

  @override
  String get fwupdDeviceFlagUnreachable => 'L’appareil est inaccessible';

  @override
  String get fwupdDeviceFlagAffectsFde => 'Les secrets de chiffrement complet du disque risquent d\'être invalidés lors de la mise à jour';

  @override
  String get fwupdDeviceFlagEndOfLife => 'Fin de vie';

  @override
  String get fwupdDeviceFlagSignedPayload => 'Charge utile signée';

  @override
  String get fwupdDeviceFlagUnsignedPayload => 'Charge utile non signée';

  @override
  String get fwupdErrorInternal => 'Erreur interne';

  @override
  String get fwupdErrorVersionNewer => 'Version du micrologiciel plus récente installée';

  @override
  String get fwupdErrorVersionSame => 'Installé la même version du micrologiciel';

  @override
  String get fwupdErrorAlreadyPending => 'Déjà configuré pour être installé hors ligne';

  @override
  String get fwupdErrorAuthFailed => 'Échec de l\'obtention de l\'authentification';

  @override
  String get fwupdErrorRead => 'Échec de lecture depuis l\'appareil';

  @override
  String get fwupdErrorWrite => 'Échec d\'écriture sur l\'appareil';

  @override
  String get fwupdErrorInvalidFile => 'Format de fichier invalide';

  @override
  String get fwupdErrorNotFound => 'Aucun appareil correspondant n\'existe';

  @override
  String get fwupdErrorNothingToDo => 'Rien à faire';

  @override
  String get fwupdErrorNotSupported => 'L\'action n\'était pas possible';

  @override
  String get fwupdErrorSignatureInvalid => 'Signature était invalide';

  @override
  String get fwupdErrorAcPowerRequired => 'Alimentation secteur était requise';

  @override
  String get fwupdErrorPermissionDenied => 'Autorisation a été refusée';

  @override
  String get fwupdErrorBrokenSystem => 'Utilisateur a configuré son système de manière incorrecte';

  @override
  String get fwupdErrorBatteryLevelTooLow => 'Niveau batterie système trop faible';

  @override
  String get fwupdErrorNeedsUserAction => 'Utilisateur doit effectuer action pour terminer mise à jour';

  @override
  String get fwupdErrorAuthExpired => 'Échec d\'obtention d\'authentification car informations d\'identification expirées';

  @override
  String get fwupdErrorUnknown => 'Erreur inconnue';

  @override
  String get fwupdStatusUnknown => 'État inconnu';

  @override
  String get fwupdStatusIdle => 'En attente';

  @override
  String get fwupdStatusLoading => 'Charge une ressource';

  @override
  String get fwupdStatusDecompressing => 'Décompression micrologiciel';

  @override
  String get fwupdStatusDeviceRestart => 'Redémarrage de l’appareil';

  @override
  String get fwupdStatusDeviceWrite => 'Écrire sur un appareil';

  @override
  String get fwupdStatusDeviceVerify => 'Vérifie (lit) un appareil';

  @override
  String get fwupdStatusScheduling => 'Planification de mise à jour hors ligne';

  @override
  String get fwupdStatusDownloading => 'Un fichier est en cours de téléchargement';

  @override
  String get fwupdStatusDeviceRead => 'Lecture depuis un appareil';

  @override
  String get fwupdStatusDeviceErase => 'Efface un appareil';

  @override
  String get fwupdStatusWaitingForAuth => 'En attente d\'authentification';

  @override
  String get fwupdStatusDeviceBusy => 'L\'appareil est occupé';

  @override
  String get fwupdStatusShutdown => 'Le démon s\'arrête';

  @override
  String get guid => 'GUIDs';

  @override
  String get installError => 'Échec de l’installation du micrologiciel !';

  @override
  String get noDevicesFound => 'Aucun périphérique détecté';

  @override
  String get ok => 'OK';

  @override
  String get olderVersions => 'Anciennes versions';

  @override
  String get rebootLater => 'Redémarrer plus tard';

  @override
  String get rebootNow => 'Redémarrer maintenant';

  @override
  String get rebootConfirmMessage => 'Vous devez redémarrer votre appareil pour terminer la mise à jour. Assurez-vous que votre appareil est branché ou complètement chargé. Enregistrez vos fichiers avant de redémarrer pour éviter de perdre des données.';

  @override
  String get rebootConfirmTitle => 'Redémarrez pour finir cette mise à jour';

  @override
  String get reinstall => 'Réinstaller';

  @override
  String reinstallConfirm(String name, String current) {
    return 'Réinstaller <b>$name</b> version <b>$current</b> ?';
  }

  @override
  String get showReleases => 'Afficher les versions';

  @override
  String get showUpdates => 'Afficher les mises à jour';

  @override
  String get update => 'Mise à jour';

  @override
  String get updateAvailable => 'Mise à jour disponible';

  @override
  String get updateChecksums => 'Mise à jour sommes de contrôle';

  @override
  String updateChecksumsConfirm(String name) {
    return 'Mettre à jour les sommes de contrôle de l\'appareil <b>$name</b> ?';
  }

  @override
  String get updateChecksumsInfo => 'Cela enregistrera les hachages cryptographiques actuels tels que vérifiés.';

  @override
  String get updateToLatest => 'Mettre à jour vers la version la plus récente';

  @override
  String updateConfirm(String name, String version) {
    return 'Mettre à jour <b>$name</b> vers version<b>$version</b> ?';
  }

  @override
  String get vendor => 'Vendeur';

  @override
  String get verifyFirmware => 'Vérifier le micrologiciel';

  @override
  String verifyFirmwareConfirm(String name) {
    return 'Vérifier la somme de contrôle du micrologiciel nommé $name ?';
  }

  @override
  String get currentVersion => 'Version actuelle';

  @override
  String get minVersion => 'Version minimale';

  @override
  String get latestVersion => 'Dernière version';
}
