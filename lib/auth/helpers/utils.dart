import 'package:flutter/material.dart';
import 'package:online_market/auth/helpers/colors.dart';
import 'package:online_market/auth/widgets/productWidget.dart';
import 'package:online_market/data/items_data.dart';

import '../../screens/ditails_screen.dart';

final boxShadow = [
  BoxShadow(
    color: Colors.black.withOpacity(0.05),
    blurRadius: 1,
    spreadRadius: 1,
    offset: Offset(1, 1),
  )
];

Widget priceWidget(String price) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: "\$$price",
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

Widget iconWidget(IconData icon, bool dotExists) {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: boxShadow,
      shape: BoxShape.circle,
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Icon(icon),
        if (dotExists)
          Positioned(
            right: 12,
            top: 15,
            child: Container(
              width: 8,
              height: 8,
              decoration:
                  BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
            ),
          ),
      ],
    ),
  );
}

Widget itemsWidget() {
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisSpacing: 12,
      mainAxisSpacing: 20,
      crossAxisCount: 2,
    ),
    primary: false,
    shrinkWrap: true,
    itemCount: data[0].products!.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              product: data[0].products![index],
            ),
          ),
        ),
        child: ProductWidget(
          product: data[0].products![index],
        ),
      );
    },
  );
}

Widget googleButton(onTap, String nameImage, String nameButton) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(82, 117, 115, 115),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 23,
            height: 23,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(nameImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            nameButton,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget signInButton(onTap, String text) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      alignment: Alignment.center,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(35),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(250, 117, 117, 117),
                spreadRadius: 0.8,
                blurRadius: 10)
          ]),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}

class SnackBarService {
  static const errorColor = Colors.red;
  static const succsesColor = Colors.green;

  static Future<void> showSnackBar(
      BuildContext context, String message, bool error) async {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();

    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: error ? errorColor : succsesColor,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
