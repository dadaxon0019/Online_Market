import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_market/auth/helpers/itemsWidget.dart';
import 'package:online_market/auth/helpers/utils.dart';
import 'package:online_market/data/items_data.dart';
import '../auth/helpers/colors.dart';
import '../auth/screens/account_screen.dart';
import '../model/categories_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categoriesName = [
    'Shoes',
    'Clothes',
    'Fashion',
    'Beauty',
    'Phone',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/image/user.png'),
                    ),
                    const SizedBox(
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
                          'Dadaxon',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    iconWidget(FontAwesomeIcons.bagShopping, true),
                  ],
                ),
                const SizedBox(
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
                        image: const DecorationImage(
                          image: AssetImage('assets/image/dscounts_img.png'),
                        ),
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
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xff7A9096),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Text(
                              'See more',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.8,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    padding: const EdgeInsets.only(top: 10.0),
                    itemBuilder: (context, index) {
                      // for internal padding of text
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          data[index].name,
                          style: TextStyle(
                            fontSize: 16,
                            color: index == 0 ? kPrimaryColor : Colors.black45,
                            fontWeight:
                                index == 0 ? FontWeight.bold : FontWeight.w400,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                ItemsWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
