import 'package:flutter/material.dart';
import 'package:online_market/auth/helpers/utils.dart';
import 'package:online_market/auth/sigInMethods/Google/firebase_sigIN.dart';
import 'package:online_market/auth/widgets/sign_button.dart';

class MainAuthPage extends StatefulWidget {
  const MainAuthPage({super.key});

  @override
  State<MainAuthPage> createState() => _MainAuthPageState();
}

class _MainAuthPageState extends State<MainAuthPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final FirebaseSignIn signIn = FirebaseSignIn(context: context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/main-auth-img.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Text(
              "Let's you in",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            googleButton(
                () {}, 'assets/image/facebook.png', 'Continue with Facebook'),
            const SizedBox(
              height: 10,
            ),
            googleButton(() {
              signIn.signInWithGoogle();
            }, 'assets/image/google.png', 'Continue with Google'),
            const SizedBox(
              height: 10,
            ),
            googleButton(() {
              Navigator.pushNamed(context, '/phone');
            }, 'assets/image/apple-logo.png', 'Continue with phone number'),
            const SizedBox(
              height: 25,
            ),
            const Text('or'),
            const SizedBox(
              height: 30,
            ),
            SignButton(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                text: 'Sign in with password'),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an accaunt ?",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: const Text(
                    "Sign up",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
