import 'package:firebase_auth/firebase_auth.dart';

class Authenticator {
  register(String email, String password) async {
    try {
      final credentials = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      print("credential is ${credentials.user?.uid}");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  login(String email, String password) async {
    try {
      print("yaha chai xu hai ma ");
      final userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      print("oho xiris ta vai ");
      print("user is $userCredential");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } catch (error) {
      print("error is $error");
    }
  }
}
