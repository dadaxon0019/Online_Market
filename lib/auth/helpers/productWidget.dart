import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_market/auth/helpers/colors.dart';
import 'package:online_market/auth/helpers/utils.dart';

import '../../data/items_data.dart';

class ProductWidget extends StatelessWidget {
  final Product product;
  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Image(
            width: MediaQuery.of(context).size.width,
            image: AssetImage(
              product.image,
            ),
            fit: BoxFit.contain,
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              height: 30,
              width: 30,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: boxShadow,
              ),
              child: Icon(
                FontAwesomeIcons.solidHeart,
                color:
                    product.isSelected == true ? kPrimaryColor : Colors.black38,
                size: 15,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: product.color.withOpacity(0.5),
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: const Offset(0, 1),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 5),
                  priceWidget(product.price),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
