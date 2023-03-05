import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:online_market/auth/screens/main_auth_page.dart';
import 'package:online_market/auth/screens/sign_up_page.dart';
import 'package:online_market/screens/home_page.dart';

class FirebaseStream extends StatelessWidget {
  const FirebaseStream({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Scaffold(
            body: Center(
              child: Text('Ошибка'),
            ),
          );
        } else if (snapshot.hasData) {
          if (!snapshot.data!.emailVerified) {
            return MainAuthPage();
          }
          return const HomeScreen();
        } else {
          return const MainAuthPage();
        }
      },
    );
  }
}
