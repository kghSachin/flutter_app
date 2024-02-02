import 'package:firebase_auth/firebase_auth.dart';
import 'package:frontend_flutter/backend/enum/auth_result.dart';

class Authenticator {
  Future<AuthResult> register(String email, String password) async {
    try {
      final userCredentials = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      if (userCredentials.user != null) {
        return AuthResult.success;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return AuthResult.weakPassword;
      } else if (e.code == 'email-already-in-use') {
        return AuthResult.emailAlreadyInUse;
      }
    } catch (e) {
      return AuthResult.failure;
    }
    return AuthResult.failure;
  }

  Future<AuthResult> login(String email, String password) async {
    try {
      final userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      if (userCredential.user != null) {
        return AuthResult.success;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return AuthResult.userNotFound;
      } else if (e.code == 'wrong-password') {
        return AuthResult.invalidPassword;
      }
    } catch (error) {
      return AuthResult.failure;
    }
    return AuthResult.failure;
  }
}
