import 'package:flutter/material.dart';
import 'package:online_market/auth/screens/sign_up_page.dart';
import 'package:online_market/screens/home_page.dart';

import 'auth/screens/main_auth_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MainAuthPage(),
    );
  }
}
