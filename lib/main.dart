import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:online_market/auth/screens/sign_in_page.dart';
import 'package:online_market/auth/screens/sign_up_page.dart';
import 'package:online_market/screens/home_page.dart';
import 'auth/screens/account_screen.dart';
import 'auth/screens/reset_password.dart';
import 'auth/screens/verify_email_screen.dart';
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
        '/verify_email': (context) => const VerifyEmailScreen(),
      },
      initialRoute: '/',
    );
  }
}
