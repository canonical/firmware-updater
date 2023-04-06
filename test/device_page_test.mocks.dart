// Mocks generated by Mockito 5.4.0 from annotations
// in firmware_updater/test/device_page_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;
import 'dart:ui' as _i5;

import 'package:firmware_updater/device_model.dart' as _i3;
import 'package:firmware_updater/device_store.dart' as _i6;
import 'package:fwupd/fwupd.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
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

/// A class which mocks [DeviceModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeviceModel extends _i1.Mock implements _i3.DeviceModel {
  MockDeviceModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FwupdDevice get device => (super.noSuchMethod(
        Invocation.getter(#device),
        returnValue: _FakeFwupdDevice_0(
          this,
          Invocation.getter(#device),
        ),
      ) as _i2.FwupdDevice);
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
  _i4.Future<void> init() => (super.noSuchMethod(
        Invocation.method(
          #init,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> dispose() => (super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> update(_i2.FwupdDevice? device) => (super.noSuchMethod(
        Invocation.method(
          #update,
          [device],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> verify() => (super.noSuchMethod(
        Invocation.method(
          #verify,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> verifyUpdate() => (super.noSuchMethod(
        Invocation.method(
          #verifyUpdate,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> install(_i2.FwupdRelease? release) => (super.noSuchMethod(
        Invocation.method(
          #install,
          [release],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  bool hasUpgrade() => (super.noSuchMethod(
        Invocation.method(
          #hasUpgrade,
          [],
        ),
        returnValue: false,
      ) as bool);
  @override
  void addListener(_i5.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i5.VoidCallback? listener) => super.noSuchMethod(
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

/// A class which mocks [DeviceStore].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeviceStore extends _i1.Mock implements _i6.DeviceStore {
  MockDeviceStore() {
    _i1.throwOnMissingStub(this);
  }

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
  List<_i2.FwupdDevice> get devices => (super.noSuchMethod(
        Invocation.getter(#devices),
        returnValue: <_i2.FwupdDevice>[],
      ) as List<_i2.FwupdDevice>);
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
  int indexOf(String? deviceId) => (super.noSuchMethod(
        Invocation.method(
          #indexOf,
          [deviceId],
        ),
        returnValue: 0,
      ) as int);
  @override
  _i4.Future<void> init() => (super.noSuchMethod(
        Invocation.method(
          #init,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> refresh() => (super.noSuchMethod(
        Invocation.method(
          #refresh,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> dispose() => (super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  void addListener(_i5.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i5.VoidCallback? listener) => super.noSuchMethod(
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
