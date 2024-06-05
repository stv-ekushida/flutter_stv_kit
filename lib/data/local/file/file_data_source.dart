// Flutter imports:
import 'package:flutter/services.dart';

class FileDataSource {
  static Future<String> loadFile(String path) async {
    return await rootBundle.loadString(path);
  }
}
