import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:online_market/data/product_data.dart';
import '../auth/screens/account_screen.dart';
import '../model/categories_model.dart';
import '../model/main_card_product.dart';
import 'package:http/http.dart' as http;

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

  List<Products> products = [];

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    print(products);

    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Route route = MaterialPageRoute(
                            builder: (context) => AccountScreen());
                        Navigator.push(context, route);
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
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
                    const Icon(
                      Icons.notifications_outlined,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                    ),
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
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return CategoriesModel(
                        text: categoriesName[index],
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('Flash Sale'),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 190,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return const MainCardProducts();
                      }),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('Most Popular'),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 190,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return const MainCardProducts();
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
