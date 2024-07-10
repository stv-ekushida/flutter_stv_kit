// Project imports:
import 'package:flutter_stv_kit/data/result.dart';

abstract class DeviceInfoRepository {
  Future<Result<String>> readAppVersion();
}
