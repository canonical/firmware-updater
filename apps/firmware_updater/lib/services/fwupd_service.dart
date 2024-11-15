import 'dart:async';
import 'dart:io';

import 'package:fwupd/fwupd.dart';
import 'package:meta/meta.dart';

abstract class FwupdService {
  FwupdService();

  FwupdStatus get status;
  int get percentage;
  String get daemonVersion;

  Stream<FwupdDevice> get deviceAdded;
  Stream<FwupdDevice> get deviceChanged;
  Stream<FwupdDevice> get deviceRemoved;
  Stream<FwupdDevice> get deviceRequest;
  Stream<List<String>> get propertiesChanged;
  bool get onBattery;

  void registerErrorListener(Function(Exception e) errorListener);

  void registerConfirmationListener(
    Future<bool> Function() confirmationListener,
  );

  Future<void> init();

  Future<void> dispose();

  Future<void> refreshProperties();

  Future<void> activate(FwupdDevice device);

  Future<void> clearResults(FwupdDevice device);

  Future<List<FwupdDevice>> getDevices();

  Future<List<FwupdRelease>> getDowngrades(FwupdDevice device);

  Future<List<FwupdPlugin>> getPlugins();

  Future<List<FwupdRelease>> getReleases(FwupdDevice device);

  Future<List<FwupdRemote>> getRemotes();

  Future<List<FwupdRelease>> getUpgrades(FwupdDevice device);

  Future<void> install(
    FwupdDevice device,
    FwupdRelease release, [
    @visibleForTesting
    ResourceHandle Function(RandomAccessFile file)? resourceHandleFromFile,
  ]);

  Future<void> unlock(FwupdDevice device);

  Future<void> verify(FwupdDevice device);

  Future<void> verifyUpdate(FwupdDevice device);

  Future<void> reboot();
}
