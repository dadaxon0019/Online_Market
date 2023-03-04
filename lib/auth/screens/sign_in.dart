import 'package:flutter/material.dart';

import '../widgets/text_field_auth.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create your \nAccount',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFieldAuth(
              hintText: 'Email',
              icon: Icon(Icons.message),
            ),
            SizedBox(
              height: 20,
            ),
            TextFieldAuth(
              hintText: 'Password',
              icon: Icon(Icons.lock),
            )
          ],
        ),
      ),
    );
  }
}
