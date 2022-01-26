import 'package:firebase_auth/firebase_auth.dart';

class AuthHelper {
  AuthHelper._();
  static AuthHelper authHelper = AuthHelper._();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  creatNewAccunt(String email, String password) async {
    UserCredential userCredential = await firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password);
  }

  singIn(String email, String password) async {
    firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
  }

  logout() async {}
  forgetPassword(String email) async {}
  verifyEmail(String email) async {}
}
