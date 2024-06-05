// Project imports:
import 'package:flutter_stv_kit/data/model/user/user.dart';
import 'package:flutter_stv_kit/data/result.dart';

abstract class UserRepository {
  Future<Result<User>> fetch();
}
