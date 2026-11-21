import 'dart:convert';
import 'dart:ffi';
import 'dart:io' as io;

import 'package:file/file.dart';

// Linux file seals prevent the contents from changing after validation.
const _mfdAllowSealing = 0x0002;
const _mfdCloexec = 0x0001;
const _fAddSeals = 1033;
const _requiredSeals = 0x0001 | 0x0002 | 0x0004 | 0x0008;

final _libc = DynamicLibrary.process();
final _malloc = _libc
    .lookupFunction<
      Pointer<Void> Function(IntPtr),
      Pointer<Void> Function(int)
    >('malloc');
final _free = _libc
    .lookupFunction<Void Function(Pointer<Void>), void Function(Pointer<Void>)>(
      'free',
    );
final _memfdCreate = _libc
    .lookupFunction<
      Int32 Function(Pointer<Uint8>, Uint32),
      int Function(Pointer<Uint8>, int)
    >('memfd_create');
final _fcntl = _libc
    .lookupFunction<
      Int32 Function(Int32, Int32, Int32),
      int Function(int, int, int)
    >('fcntl');
final _close = _libc.lookupFunction<Int32 Function(Int32), int Function(int)>(
  'close',
);

/// A sealed, anonymous copy of a firmware file for passing to fwupd over D-Bus.
class SealedFirmwareFile {
  SealedFirmwareFile._(this.descriptor, this.file);

  final int descriptor;
  final io.RandomAccessFile file;

  static Future<SealedFirmwareFile> create(File source) async {
    final name = utf8.encode('firmware-updater\u0000');
    final namePtr = _malloc(name.length).cast<Uint8>();
    if (namePtr == nullptr) throw StateError('Could not allocate memfd name');
    late final int fd;
    try {
      namePtr.asTypedList(name.length).setAll(0, name);
      fd = _memfdCreate(namePtr, _mfdAllowSealing | _mfdCloexec);
    } finally {
      _free(namePtr.cast<Void>());
    }
    if (fd < 0) throw StateError('Could not create firmware memfd');

    try {
      final path = '/proc/self/fd/$fd';
      final output = await io.File(path).open(mode: io.FileMode.writeOnly);
      try {
        await for (final bytes in source.openRead()) {
          await output.writeFrom(bytes);
        }
      } finally {
        await output.close();
      }
      if (_fcntl(fd, _fAddSeals, _requiredSeals) != 0) {
        throw StateError('Could not seal firmware memfd');
      }
      final input = await io.File(path).open();
      return SealedFirmwareFile._(fd, input);
    } catch (_) {
      _close(fd);
      rethrow;
    }
  }

  Future<void> close() async {
    try {
      await file.close();
    } finally {
      _close(descriptor);
    }
  }
}
