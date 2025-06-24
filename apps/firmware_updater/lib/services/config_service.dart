import 'package:collection/collection.dart';
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:flutter/foundation.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:yaml/yaml.dart';

final _log = Logger('config_service');

class ConfigService {
  ConfigService({
    required this.path,
    @visibleForTesting FileSystem fs = const LocalFileSystem(),
  }) : _config = _readFile(path, fs);
  final String path;
  final Map<String, dynamic> _config;
  UnmodifiableMapView<String, dynamic> get config =>
      UnmodifiableMapView(_config);

  static Map<String, dynamic> _readFile(String path, FileSystem fs) {
    try {
      final data = loadYaml(fs.file(path).readAsStringSync()) as Map;
      return data.cast();
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      _log.error('Could not read config file $path: $e');
      return {};
    }
  }
}
