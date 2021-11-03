import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:path/path.dart' as p;

class FwupdService {
  Future<File> download(String url) {
    return http.get(Uri.parse(url)).then((response) {
      final path = p.join(Directory.systemTemp.path, p.basename(url));
      return File(path).writeAsBytes(response.bodyBytes);
    });
  }
}
