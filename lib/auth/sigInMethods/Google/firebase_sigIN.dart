import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseSignIn {
  late var context;
  FirebaseSignIn({
    this.context,
  });

  Future<UserCredential> signInWithGoogle() async {
    final navigator = Navigator.of(context);
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    navigator.pushNamedAndRemoveUntil('/home', (route) => false);
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
