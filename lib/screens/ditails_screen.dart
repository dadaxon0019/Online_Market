import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../auth/helpers/colors.dart';
import '../auth/helpers/utils.dart';
import '../data/items_data.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;

  const DetailsScreen({
    super.key,
    required this.product,
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  // for quanity count
  int itemCount = 1;
  bool onTapIcon = false;

  onTappIcon() {
    print(onTapIcon);
    setState(() {
      onTapIcon != onTapIcon;
      print(onTapIcon);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // product image
          Container(
            width: MediaQuery.of(context).size.width,
            color: widget.product.color,
            child: Image(
              image: AssetImage(
                widget.product.image,
              ),
              fit: BoxFit.cover,
            ),
          ),

          // top buttons
          Positioned(
            top: 60,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: iconWidget(FontAwesomeIcons.arrowLeft, false),
                ),
                const Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: iconWidget(FontAwesomeIcons.bagShopping, true),
                ),
              ],
            ),
          ),

          // product details
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              top: size.height * 0.50,
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: size.height * 0.80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // product details
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.product.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 30,
                              ),
                            ),
                            Row(
                              children: [
                                priceWidget(widget.product.price),
                                Icon(Icons.star),
                                Text('asdasd'),
                              ],
                            )
                          ],
                        ),
                        GestureDetector(
                          onTap: onTappIcon,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Icon(
                              onTapIcon
                                  ? FontAwesomeIcons.heartCircleCheck
                                  : FontAwesomeIcons.heart,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // product description
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Details",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          ),
                          Container(
                            width: 130,
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.0),
                              boxShadow: boxShadow,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // decrease quantity
                                quantityIcon(
                                  onTap: () {
                                    if (itemCount > 1) {
                                      setState(() => itemCount--);
                                    }
                                  },
                                  color: kSecondaryColor,
                                  icon: FontAwesomeIcons.minus,
                                ),

                                // quantity count
                                Text(
                                  itemCount.toString(),
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                // increase quantity
                                quantityIcon(
                                  onTap: () {
                                    setState(() => itemCount++);
                                  },
                                  color: kPrimaryColor,
                                  icon: FontAwesomeIcons.plus,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget quantityIcon({
    required VoidCallback onTap,
    required Color color,
    required IconData icon,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: Icon(
          icon,
          color: color == kPrimaryColor ? Colors.white : kPrimaryColor,
          size: 20,
        ),
      ),
    );
  }
}
