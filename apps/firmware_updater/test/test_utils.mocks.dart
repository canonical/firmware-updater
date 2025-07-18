// Mocks generated by Mockito 5.4.6 from annotations
// in firmware_updater/test/test_utils.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:collection' as _i3;
import 'dart:io' as _i10;
import 'dart:ui' as _i6;

import 'package:firmware_updater/app/fwupd_notifier.dart' as _i7;
import 'package:firmware_updater/pages/device_model.dart' as _i4;
import 'package:firmware_updater/pages/device_store.dart' as _i11;
import 'package:firmware_updater/services.dart' as _i9;
import 'package:firmware_updater/widgets/recovery_key_model.dart' as _i12;
import 'package:fwupd/fwupd.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i8;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeFwupdDevice_0 extends _i1.SmartFake implements _i2.FwupdDevice {
  _FakeFwupdDevice_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUnmodifiableMapView_1<K, V> extends _i1.SmartFake
    implements _i3.UnmodifiableMapView<K, V> {
  _FakeUnmodifiableMapView_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [DeviceModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeviceModel extends _i1.Mock implements _i4.DeviceModel {
  MockDeviceModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get testDeviceAffectsFde => (super.noSuchMethod(
        Invocation.getter(#testDeviceAffectsFde),
        returnValue: false,
      ) as bool);

  @override
  _i2.FwupdDevice get device => (super.noSuchMethod(
        Invocation.getter(#device),
        returnValue: _FakeFwupdDevice_0(
          this,
          Invocation.getter(#device),
        ),
      ) as _i2.FwupdDevice);

  @override
  bool get hasUpgrade => (super.noSuchMethod(
        Invocation.getter(#hasUpgrade),
        returnValue: false,
      ) as bool);

  @override
  bool get onBattery => (super.noSuchMethod(
        Invocation.getter(#onBattery),
        returnValue: false,
      ) as bool);

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);

  @override
  bool get isDisposed => (super.noSuchMethod(
        Invocation.getter(#isDisposed),
        returnValue: false,
      ) as bool);

  @override
  _i5.Future<void> dispose() => (super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> init() => (super.noSuchMethod(
        Invocation.method(
          #init,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> install(_i2.FwupdRelease? release) => (super.noSuchMethod(
        Invocation.method(
          #install,
          [release],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> update(_i2.FwupdDevice? device) => (super.noSuchMethod(
        Invocation.method(
          #update,
          [device],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> verify() => (super.noSuchMethod(
        Invocation.method(
          #verify,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> verifyUpdate() => (super.noSuchMethod(
        Invocation.method(
          #verifyUpdate,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  void addListener(_i6.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i6.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [FwupdNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockFwupdNotifier extends _i1.Mock implements _i7.FwupdNotifier {
  MockFwupdNotifier() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FwupdStatus get status => (super.noSuchMethod(
        Invocation.getter(#status),
        returnValue: _i2.FwupdStatus.unknown,
      ) as _i2.FwupdStatus);

  @override
  int get percentage => (super.noSuchMethod(
        Invocation.getter(#percentage),
        returnValue: 0,
      ) as int);

  @override
  String get version => (super.noSuchMethod(
        Invocation.getter(#version),
        returnValue: _i8.dummyValue<String>(
          this,
          Invocation.getter(#version),
        ),
      ) as String);

  @override
  bool get onBattery => (super.noSuchMethod(
        Invocation.getter(#onBattery),
        returnValue: false,
      ) as bool);

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);

  @override
  bool get isDisposed => (super.noSuchMethod(
        Invocation.getter(#isDisposed),
        returnValue: false,
      ) as bool);

  @override
  _i5.Future<void> init() => (super.noSuchMethod(
        Invocation.method(
          #init,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  void registerErrorListener(dynamic Function(Exception)? errorListener) =>
      super.noSuchMethod(
        Invocation.method(
          #registerErrorListener,
          [errorListener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void registerConfirmationListener(
          _i5.Future<bool> Function()? confirmationListener) =>
      super.noSuchMethod(
        Invocation.method(
          #registerConfirmationListener,
          [confirmationListener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void registerDeviceRequestListener(
          dynamic Function(_i2.FwupdDevice)? deviceRequestListener) =>
      super.noSuchMethod(
        Invocation.method(
          #registerDeviceRequestListener,
          [deviceRequestListener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<void> refresh() => (super.noSuchMethod(
        Invocation.method(
          #refresh,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> dispose() => (super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  void addListener(_i6.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i6.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [FwupdDbusService].
///
/// See the documentation for Mockito's code generation for more information.
class MockFwupdDbusService extends _i1.Mock implements _i9.FwupdDbusService {
  MockFwupdDbusService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get daemonVersion => (super.noSuchMethod(
        Invocation.getter(#daemonVersion),
        returnValue: _i8.dummyValue<String>(
          this,
          Invocation.getter(#daemonVersion),
        ),
      ) as String);

  @override
  _i5.Stream<_i2.FwupdDevice> get deviceAdded => (super.noSuchMethod(
        Invocation.getter(#deviceAdded),
        returnValue: _i5.Stream<_i2.FwupdDevice>.empty(),
      ) as _i5.Stream<_i2.FwupdDevice>);

  @override
  _i5.Stream<_i2.FwupdDevice> get deviceChanged => (super.noSuchMethod(
        Invocation.getter(#deviceChanged),
        returnValue: _i5.Stream<_i2.FwupdDevice>.empty(),
      ) as _i5.Stream<_i2.FwupdDevice>);

  @override
  _i5.Stream<_i2.FwupdDevice> get deviceRemoved => (super.noSuchMethod(
        Invocation.getter(#deviceRemoved),
        returnValue: _i5.Stream<_i2.FwupdDevice>.empty(),
      ) as _i5.Stream<_i2.FwupdDevice>);

  @override
  _i5.Stream<_i2.FwupdDevice> get deviceRequest => (super.noSuchMethod(
        Invocation.getter(#deviceRequest),
        returnValue: _i5.Stream<_i2.FwupdDevice>.empty(),
      ) as _i5.Stream<_i2.FwupdDevice>);

  @override
  bool get onBattery => (super.noSuchMethod(
        Invocation.getter(#onBattery),
        returnValue: false,
      ) as bool);

  @override
  int get percentage => (super.noSuchMethod(
        Invocation.getter(#percentage),
        returnValue: 0,
      ) as int);

  @override
  _i5.Stream<List<String>> get propertiesChanged => (super.noSuchMethod(
        Invocation.getter(#propertiesChanged),
        returnValue: _i5.Stream<List<String>>.empty(),
      ) as _i5.Stream<List<String>>);

  @override
  _i2.FwupdStatus get status => (super.noSuchMethod(
        Invocation.getter(#status),
        returnValue: _i2.FwupdStatus.unknown,
      ) as _i2.FwupdStatus);

  @override
  String get userAgent => (super.noSuchMethod(
        Invocation.getter(#userAgent),
        returnValue: _i8.dummyValue<String>(
          this,
          Invocation.getter(#userAgent),
        ),
      ) as String);

  @override
  _i5.Future<void> activate(_i2.FwupdDevice? device) => (super.noSuchMethod(
        Invocation.method(
          #activate,
          [device],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> clearResults(_i2.FwupdDevice? device) => (super.noSuchMethod(
        Invocation.method(
          #clearResults,
          [device],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> dispose() => (super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<List<_i2.FwupdDevice>> getDevices() => (super.noSuchMethod(
        Invocation.method(
          #getDevices,
          [],
        ),
        returnValue:
            _i5.Future<List<_i2.FwupdDevice>>.value(<_i2.FwupdDevice>[]),
      ) as _i5.Future<List<_i2.FwupdDevice>>);

  @override
  _i5.Future<List<_i2.FwupdRelease>> getDowngrades(_i2.FwupdDevice? device) =>
      (super.noSuchMethod(
        Invocation.method(
          #getDowngrades,
          [device],
        ),
        returnValue:
            _i5.Future<List<_i2.FwupdRelease>>.value(<_i2.FwupdRelease>[]),
      ) as _i5.Future<List<_i2.FwupdRelease>>);

  @override
  _i5.Future<List<_i2.FwupdPlugin>> getPlugins() => (super.noSuchMethod(
        Invocation.method(
          #getPlugins,
          [],
        ),
        returnValue:
            _i5.Future<List<_i2.FwupdPlugin>>.value(<_i2.FwupdPlugin>[]),
      ) as _i5.Future<List<_i2.FwupdPlugin>>);

  @override
  _i5.Future<List<_i2.FwupdRelease>> getReleases(_i2.FwupdDevice? device) =>
      (super.noSuchMethod(
        Invocation.method(
          #getReleases,
          [device],
        ),
        returnValue:
            _i5.Future<List<_i2.FwupdRelease>>.value(<_i2.FwupdRelease>[]),
      ) as _i5.Future<List<_i2.FwupdRelease>>);

  @override
  _i5.Future<List<_i2.FwupdRemote>> getRemotes() => (super.noSuchMethod(
        Invocation.method(
          #getRemotes,
          [],
        ),
        returnValue:
            _i5.Future<List<_i2.FwupdRemote>>.value(<_i2.FwupdRemote>[]),
      ) as _i5.Future<List<_i2.FwupdRemote>>);

  @override
  _i5.Future<List<_i2.FwupdRelease>> getUpgrades(_i2.FwupdDevice? device) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUpgrades,
          [device],
        ),
        returnValue:
            _i5.Future<List<_i2.FwupdRelease>>.value(<_i2.FwupdRelease>[]),
      ) as _i5.Future<List<_i2.FwupdRelease>>);

  @override
  _i5.Future<void> init() => (super.noSuchMethod(
        Invocation.method(
          #init,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> install(
    _i2.FwupdDevice? device,
    _i2.FwupdRelease? release, [
    _i10.ResourceHandle Function(_i10.RandomAccessFile)? resourceHandleFromFile,
  ]) =>
      (super.noSuchMethod(
        Invocation.method(
          #install,
          [
            device,
            release,
            resourceHandleFromFile,
          ],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> reboot() => (super.noSuchMethod(
        Invocation.method(
          #reboot,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> refreshProperties() => (super.noSuchMethod(
        Invocation.method(
          #refreshProperties,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  void registerConfirmationListener(
          _i5.Future<bool> Function()? confirmationListener) =>
      super.noSuchMethod(
        Invocation.method(
          #registerConfirmationListener,
          [confirmationListener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void registerErrorListener(dynamic Function(Exception)? errorListener) =>
      super.noSuchMethod(
        Invocation.method(
          #registerErrorListener,
          [errorListener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<void> unlock(_i2.FwupdDevice? device) => (super.noSuchMethod(
        Invocation.method(
          #unlock,
          [device],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> verify(_i2.FwupdDevice? device) => (super.noSuchMethod(
        Invocation.method(
          #verify,
          [device],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> verifyUpdate(_i2.FwupdDevice? device) => (super.noSuchMethod(
        Invocation.method(
          #verifyUpdate,
          [device],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [DeviceStore].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeviceStore extends _i1.Mock implements _i11.DeviceStore {
  MockDeviceStore() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<_i2.FwupdDevice> get devices => (super.noSuchMethod(
        Invocation.getter(#devices),
        returnValue: <_i2.FwupdDevice>[],
      ) as List<_i2.FwupdDevice>);

  @override
  bool get showReleases => (super.noSuchMethod(
        Invocation.getter(#showReleases),
        returnValue: false,
      ) as bool);

  @override
  set showReleases(bool? value) => super.noSuchMethod(
        Invocation.setter(
          #showReleases,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);

  @override
  bool get isDisposed => (super.noSuchMethod(
        Invocation.getter(#isDisposed),
        returnValue: false,
      ) as bool);

  @override
  _i5.Future<void> dispose() => (super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  int indexOf(String? deviceId) => (super.noSuchMethod(
        Invocation.method(
          #indexOf,
          [deviceId],
        ),
        returnValue: 0,
      ) as int);

  @override
  _i5.Future<void> init() => (super.noSuchMethod(
        Invocation.method(
          #init,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> refresh() => (super.noSuchMethod(
        Invocation.method(
          #refresh,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  void addListener(_i6.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i6.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [RecoveryKeyModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockRecoveryKeyModel extends _i1.Mock implements _i12.RecoveryKeyModel {
  MockRecoveryKeyModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<bool> checkRecoveryKey(String? recoveryKey) => (super.noSuchMethod(
        Invocation.method(
          #checkRecoveryKey,
          [recoveryKey],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
}

/// A class which mocks [ConfigService].
///
/// See the documentation for Mockito's code generation for more information.
class MockConfigService extends _i1.Mock implements _i9.ConfigService {
  MockConfigService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get path => (super.noSuchMethod(
        Invocation.getter(#path),
        returnValue: _i8.dummyValue<String>(
          this,
          Invocation.getter(#path),
        ),
      ) as String);

  @override
  _i3.UnmodifiableMapView<String, dynamic> get config => (super.noSuchMethod(
        Invocation.getter(#config),
        returnValue: _FakeUnmodifiableMapView_1<String, dynamic>(
          this,
          Invocation.getter(#config),
        ),
      ) as _i3.UnmodifiableMapView<String, dynamic>);
}
