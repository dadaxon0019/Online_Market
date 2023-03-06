import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:online_market/auth/screens/sign_in_page.dart';

import '../auth/screens/account_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image/user.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Dadaxon Turgunboev',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Expanded(child: Container()),
                      Icon(
                        Icons.notifications_outlined,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Text('Special Offers'),
                    Expanded(child: Container()),
                    Text('See All'),
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 105,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/image/dscounts_img.png'),
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 105,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(29, 113, 113, 113),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 105,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Discounts',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              Expanded(child: Container()),
                              Container(
                                width: 55,
                                height: 35,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xff8B634C),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Text(
                                  '-50%',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Container(
                            alignment: Alignment.center,
                            width: 108,
                            height: 44,
                            decoration: BoxDecoration(
                              color: Color(0xff7A9096),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              'See more',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.8,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
