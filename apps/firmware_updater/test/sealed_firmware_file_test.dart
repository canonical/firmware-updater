import 'dart:ffi';
import 'dart:io';

import 'package:file/local.dart';
import 'package:firmware_updater/services/sealed_firmware_file.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'seals a copy of a file in the system temporary directory',
    () async {
      final directory = await Directory.systemTemp.createTemp(
        'fwupd-seal-test-',
      );
      addTearDown(() => directory.delete(recursive: true));
      final source = await File(
        '${directory.path}/firmware.cab',
      ).writeAsBytes([0, 1, 2, 3, 255]);
      final firmware = await SealedFirmwareFile.create(
        const LocalFileSystem().file(source.path),
      );
      final fd = firmware.descriptor;
      final fcntl = DynamicLibrary.process()
          .lookupFunction<
            Int32 Function(Int32, Int32, Int32),
            int Function(int, int, int)
          >('fcntl');
      try {
        expect(await firmware.file.read(5), [0, 1, 2, 3, 255]);
        expect(fcntl(fd, 1034, 0) & 0x0f, 0x0f); // F_GET_SEALS
        expect(
          () => File('/proc/self/fd/$fd').writeAsBytesSync([42]),
          throwsA(isA<FileSystemException>()),
        );
      } finally {
        await firmware.close();
      }
      expect(fcntl(fd, 1034, 0), -1);
    },
    skip: !Platform.isLinux,
  );

  test('fails when the source cannot be read', () async {
    final directory = await Directory.systemTemp.createTemp('fwupd-seal-test-');
    addTearDown(() => directory.delete(recursive: true));
    await expectLater(
      SealedFirmwareFile.create(
        const LocalFileSystem().file('${directory.path}/missing.cab'),
      ),
      throwsA(isA<FileSystemException>()),
    );
  }, skip: !Platform.isLinux);
}
