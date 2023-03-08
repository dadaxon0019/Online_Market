import 'package:flutter/material.dart';

class CategoriesModel extends StatelessWidget {
  String text;
  CategoriesModel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 16),
      width: 75,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
      ),
      child: Text(text),
    );
  }
}
