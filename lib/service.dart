import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path/path.dart' as p;

class FwupdService {
  FwupdService([Dio? dio]) : _dio = dio ?? Dio();

  final Dio _dio;

  Future<File> download(String url, {void Function(int)? onProgress}) async {
    final path = p.join(Directory.systemTemp.path, p.basename(url));
    try {
      return await _dio.download(url, path, onReceiveProgress: (recvd, total) {
        onProgress?.call(100 * recvd ~/ total);
      }).then((response) => File(path));
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  void dispose() => _dio.close();
}
