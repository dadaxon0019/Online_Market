import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:online_market/auth/screens/sign_in_page.dart';
import 'package:online_market/auth/screens/sign_up_page.dart';
import 'package:online_market/auth/widgets/big_google_button.dart';
import 'package:online_market/auth/widgets/sign_button.dart';

class MainAuthPage extends StatefulWidget {
  const MainAuthPage({super.key});

  @override
  State<MainAuthPage> createState() => _MainAuthPageState();
}

class _MainAuthPageState extends State<MainAuthPage> {
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
    navigator.pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
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
                  image: NetworkImage(
                      'https://img.freepik.com/free-vector/iso-certification-concept-illustration_114360-6427.jpg?w=2000'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // BigMainText("Let's you in"),
            const SizedBox(
              height: 25,
            ),
            const GoogleButton(
                nameButton: 'Continue with Facebook',
                nameImage: 'assets/image/facebook.png'),
            GestureDetector(
              onTap: signInWithGoogle,
              child: const GoogleButton(
                  nameButton: 'Continue with Google',
                  nameImage: 'assets/image/google.png'),
            ),
            GestureDetector(
              onTap: signInWithGoogle,
              child: const GoogleButton(
                  nameButton: 'Continue with Apple',
                  nameImage: 'assets/image/apple-logo.png'),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text('or'),
            const SizedBox(
              height: 30,
            ),
            const SignButton(
              wid: SignInPage(),
              text: 'Sign in with password',
            ),
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
                    Route route = MaterialPageRoute(
                        builder: (context) => const SignUpPage());
                    Navigator.push(context, route);
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
