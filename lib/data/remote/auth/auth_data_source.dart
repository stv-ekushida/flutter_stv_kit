// Project imports:
import 'package:flutter_stv_kit/data/model/auth/auth.dart';

abstract class AuthDataSource {
  Future<Auth> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Auth> authCodeInput({required String code});

  Future<Auth> signUpWithSns({required String idToken});

  Future<Auth> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signOut();

  Future<bool> resetPassword({required String email});
}
