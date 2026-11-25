import 'dart:ffi';
import 'dart:io' as io;

import 'package:ffi/ffi.dart';
import 'package:file/file.dart';

// fwupd rejects unsealed file descriptors (e.g. from tmpfs), so pass the
// firmware as a sealed memfd.
const _mfdAllowSealing = 0x0002;
const _mfdCloexec = 0x0001;
const _fAddSeals = 1033;
const _requiredSeals = 0x0001 | 0x0002 | 0x0004 | 0x0008;

final _libc = DynamicLibrary.process();
final _memfdCreate = _libc
    .lookupFunction<
      Int32 Function(Pointer<Utf8>, Uint32),
      int Function(Pointer<Utf8>, int)
    >('memfd_create');
final _fcntl = _libc
    .lookupFunction<
      Int32 Function(Int32, Int32, VarArgs<(Int32,)>),
      int Function(int, int, int)
    >('fcntl');
final _close = _libc.lookupFunction<Int32 Function(Int32), int Function(int)>(
  'close',
);

/// A sealed, anonymous copy of a firmware file for passing to fwupd over D-Bus.
class SealedFirmwareFile {
  SealedFirmwareFile._(this.file);

  final io.RandomAccessFile file;

  static Future<SealedFirmwareFile> create(File source) async {
    var fd = -1;
    try {
      fd = using(
        (arena) => _memfdCreate(
          'firmware-updater'.toNativeUtf8(allocator: arena),
          _mfdAllowSealing | _mfdCloexec,
        ),
      );
      if (fd < 0) {
        throw io.FileSystemException('Could not create firmware memfd');
      }
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
        throw io.FileSystemException('Could not seal firmware memfd');
      }
      final input = await io.File(path).open();
      return SealedFirmwareFile._(input);
    } finally {
      if (fd >= 0) _close(fd);
    }
  }

  Future<void> close() => file.close();
}
