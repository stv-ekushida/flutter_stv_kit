// Project imports:
import 'package:flutter_stv_kit/data/model/auth/auth.dart';
import 'package:flutter_stv_kit/data/result.dart';

abstract class AuthRepository {
  Future<Result<Auth>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Result<Auth>> authCodeInput({required String code});

  Future<Result<Auth>> signUpWithSns({required String idToken});

  Future<Result<Auth>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Result<void>> signOut();

  Future<Result<bool>> resetPassword({required String email});
}
