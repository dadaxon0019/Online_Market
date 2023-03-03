import 'package:flutter/material.dart';
import 'package:online_market/auth/widgets/google_button.dart';
import 'package:online_market/auth/widgets/sign_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://img.freepik.com/free-vector/iso-certification-concept-illustration_114360-6427.jpg?w=2000'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              "Let's you in",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            GoogleButton(
                nameButton: 'Continue with Facebook',
                nameImage: 'assets/image/facebook.png'),
            SizedBox(
              height: 15,
            ),
            GoogleButton(
                nameButton: 'Continue with Google',
                nameImage: 'assets/image/google.png'),
            SizedBox(
              height: 15,
            ),
            GoogleButton(
                nameButton: 'Continue with Apple',
                nameImage: 'assets/image/apple-logo.png'),
            SizedBox(
              height: 40,
            ),
            Text('or'),
            SizedBox(
              height: 40,
            ),
            SignButton(text: 'Sign with password'),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an accaunt ?",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Sign up",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
