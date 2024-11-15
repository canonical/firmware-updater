// Mocks generated by Mockito 5.4.4 from annotations
// in firmware_updater/test/firmware_app_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;
import 'dart:ui' as _i5;

import 'package:firmware_updater/device_store.dart' as _i2;
import 'package:fwupd/fwupd.dart' as _i3;
import 'package:gtk/src/gtk_application_notifier.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [DeviceStore].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeviceStore extends _i1.Mock implements _i2.DeviceStore {
  MockDeviceStore() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<_i3.FwupdDevice> get devices => (super.noSuchMethod(
        Invocation.getter(#devices),
        returnValue: <_i3.FwupdDevice>[],
      ) as List<_i3.FwupdDevice>);

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
  _i4.Future<void> dispose() => (super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);

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

/// A class which mocks [GtkApplicationNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockGtkApplicationNotifier extends _i1.Mock
    implements _i6.GtkApplicationNotifier {
  MockGtkApplicationNotifier() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void addCommandLineListener(_i6.GtkCommandLineListener? listener) =>
      super.noSuchMethod(
        Invocation.method(
          #addCommandLineListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeCommandLineListener(_i6.GtkCommandLineListener? listener) =>
      super.noSuchMethod(
        Invocation.method(
          #removeCommandLineListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addOpenListener(_i6.GtkOpenListener? listener) => super.noSuchMethod(
        Invocation.method(
          #addOpenListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeOpenListener(_i6.GtkOpenListener? listener) => super.noSuchMethod(
        Invocation.method(
          #removeOpenListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyCommandLine(List<String>? args) => super.noSuchMethod(
        Invocation.method(
          #notifyCommandLine,
          [args],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyOpen({
    required List<String>? files,
    required String? hint,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #notifyOpen,
          [],
          {
            #files: files,
            #hint: hint,
          },
        ),
        returnValueForMissingStub: null,
      );
}
