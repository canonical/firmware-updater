import 'package:firmware_updater/services.dart';
import 'package:flutter/foundation.dart';
import 'package:snapd/snapd.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:udisks/udisks.dart';

final _log = Logger('recovery_key_service');

abstract class RecoveryKeyService {
  Future<void> init() async {}
  Future<void> dispose() async {}
  Future<bool> checkRecoveryKey(String recoveryKey);
  bool get hasBitlocker;
  bool get hasUbuntuFde;
}

class RecoveryKeyMockService extends RecoveryKeyService {
  @override
  final bool hasBitlocker = false;

  @override
  final bool hasUbuntuFde = false;

  @override
  Future<bool> checkRecoveryKey(String recoveryKey) async {
    return recoveryKey == 'valid key';
  }
}

class RecoveryKeySnapdService implements RecoveryKeyService {
  RecoveryKeySnapdService({
    @visibleForTesting SnapdClient? snapdClient,
    @visibleForTesting UDisksClient? udisksClient,
  })  : _snapdClient = snapdClient ?? getService<SnapdClient>(),
        _uDisksClient = udisksClient ?? getService<UDisksClient>();
  final SnapdClient _snapdClient;
  final UDisksClient _uDisksClient;
  SnapdStorageEncryptionStatus? _storageEncryptionStatus;

  @override
  Future<void> init() async {
    await _uDisksClient.connect().onError((e, _) {
      _log.error('Could not connect to UDisks: $e');
    });

    try {
      final response = await _snapdClient.getStorageEncrypted();
      _storageEncryptionStatus = response.status;
    } on Exception catch (e) {
      _log.error('Could not get storage encryption status: $e');
    }
  }

  @override
  Future<void> dispose() => _uDisksClient.close();

  @override
  bool get hasUbuntuFde {
    return _storageEncryptionStatus != null &&
        _storageEncryptionStatus != SnapdStorageEncryptionStatus.inactive;
  }

  @override
  bool get hasBitlocker {
    if (_uDisksClient.blockDevices.isEmpty) {
      _log.error('could not fetch block devices from UDisks');
      return false;
    }
    return _uDisksClient.blockDevices
        .any((blockDevice) => blockDevice.idType.toLowerCase() == 'bitlocker');
  }

  @override
  Future<bool> checkRecoveryKey(String recoveryKey) async {
    try {
      await _snapdClient.checkRecoveryKey(recoveryKey);
      return true;
    } on SnapdException catch (e) {
      if (e.kind == 'auth-cancelled') {
        rethrow;
      }
      _log.info('caught snapd exception $e');
      _log.info('assuming recovery key is invalid');
      return false;
    } on Exception catch (e) {
      _log.error(e);
      rethrow;
    }
  }
}
