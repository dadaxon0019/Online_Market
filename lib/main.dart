import 'package:flutter/material.dart';
import 'package:online_market/screens/home_page.dart';

import 'auth/screens/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SignUp(),
    );
  }
}
