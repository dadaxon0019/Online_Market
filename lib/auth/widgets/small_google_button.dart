import 'package:flutter/material.dart';

class SmallGoogleButton extends StatelessWidget {
  const SmallGoogleButton({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 90,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: const Color.fromARGB(84, 158, 158, 158),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image(
        image: AssetImage(image),
      ),
    );
  }
}
