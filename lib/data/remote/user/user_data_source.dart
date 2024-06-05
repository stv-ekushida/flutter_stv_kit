// Project imports:
import 'package:flutter_stv_kit/data/model/user/user.dart';

abstract class UserDataSource {
  Future<User> fetch();
}
