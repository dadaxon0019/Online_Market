import 'package:flutter/material.dart';
import 'package:online_market/auth/screens/sign_up.dart';
import 'package:online_market/auth/widgets/sign_button.dart';

import '../widgets/small_google_button.dart';
import '../widgets/text_field_auth.dart';

class SignIn extends StatelessWidget {
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Create your \nAccount',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                TextFieldAuth(
                  controller: _controllerEmail,
                  hintText: 'Email',
                  icon: Icon(Icons.message, color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFieldAuth(
                  controller: _controllerPassword,
                  hintText: 'Password',
                  icon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    print(_controllerEmail.text);
                  },
                  child: SignButton(
                    text: 'Sign up',
                    // Route route = MaterialPageRoute(builder: (context) => SignIn());
                    // Navigator.push(context, route);
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('or continue with'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SmallGoogleButton(
                      image: 'assets/image/facebook.png',
                    ),
                    SmallGoogleButton(
                      image: 'assets/image/google.png',
                    ),
                    SmallGoogleButton(
                      image: 'assets/image/apple-logo.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Sign in',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
