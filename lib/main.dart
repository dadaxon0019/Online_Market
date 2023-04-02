import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:online_market/auth/sigInMethods/Phone%20Number/sign_in_with_phone.dart';
import 'package:online_market/auth/screens/log_in_page.dart';
import 'package:online_market/auth/screens/register_page.dart';
import 'package:online_market/screens/home_page.dart';
import 'screens/account_screen.dart';
import 'auth/services/reset_password.dart';
import 'auth/sigInMethods/Phone Number/verify_phone.dart';
import 'auth/services/firebase_stream.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      routes: {
        '/': (context) => const FirebaseStream(),
        '/home': (context) => const HomeScreen(),
        '/account': (context) => const AccountScreen(),
        '/login': (context) => const SignInPage(),
        '/signup': (context) => const SignUpPage(),
        '/reset_password': (context) => const ResetPasswordScreen(),
        '/phone': (context) => const MyPhone(),
        '/verify': (context) => const MyVerify(),
      },
      initialRoute: '/',
    );
  }
}
