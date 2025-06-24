import 'package:file/memory.dart';
import 'package:firmware_updater/services/config_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const path = '/foo/bar.yml';

  test('valid config file', () {
    final fs = MemoryFileSystem.test();
    fs.file(path)
      ..createSync(recursive: true)
      ..writeAsStringSync('foo: bar');

    final configService = ConfigService(path: path, fs: fs);

    expect(configService.config['foo'], equals('bar'));
  });

  test('non existent config file', () {
    final fs = MemoryFileSystem.test();

    final configService = ConfigService(path: path, fs: fs);

    expect(configService.config, isEmpty);
  });

  test('invalid config file', () {
    final fs = MemoryFileSystem.test();
    fs.file(path)
      ..createSync(recursive: true)
      ..writeAsStringSync('foo; bar');

    final configService = ConfigService(path: path, fs: fs);

    expect(configService.config, isEmpty);
  });
}
