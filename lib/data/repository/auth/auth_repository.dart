// Project imports:
import 'package:flutter_stv_kit/data/model/auth/auth.dart';
import 'package:flutter_stv_kit/data/result.dart';

abstract class AuthRepository {
  Future<Result<Auth>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Result<Auth>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<void> signOut();
}
