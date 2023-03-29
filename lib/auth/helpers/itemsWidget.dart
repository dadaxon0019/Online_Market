import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_market/auth/helpers/colors.dart';
import 'package:online_market/auth/helpers/productWidget.dart';
import 'package:online_market/auth/helpers/utils.dart';
import 'package:online_market/data/items_data.dart';

import '../../screens/ditails_screen.dart';

class ItemsWidget extends StatelessWidget {
  ItemsWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
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
}
