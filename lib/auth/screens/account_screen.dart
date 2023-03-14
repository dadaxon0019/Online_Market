import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final user = FirebaseAuth.instance.currentUser;

  Future<void> signOut() async {
    final navigator = Navigator.of(context);

    await FirebaseAuth.instance.signOut();

    navigator.pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: ListView(
          children: [
            Text('Profile'),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Dadaxon Turgunboev'),
                  SizedBox(
                    height: 5,
                  ),
                  Text('${user?.email}'),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(),
                  Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Edit Profile'),
                      Expanded(child: Container()),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        signOut();
                      },
                      child: Text('Log out1'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
