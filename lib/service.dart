import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path/path.dart' as p;

class FwupdService {
  FwupdService([Dio? dio]) : _dio = dio ?? Dio();

  final Dio _dio;

  Future<File> download(String url, {void Function(int)? onProgress}) async {
    final path = p.join(Directory.systemTemp.path, p.basename(url));
    return _dio.download(url, path, onReceiveProgress: (received, total) {
      onProgress?.call(100 * received ~/ total);
    }).then((response) => File(path));
  }

  void dispose() => _dio.close();
}
