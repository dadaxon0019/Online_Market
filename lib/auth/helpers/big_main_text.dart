import 'package:flutter/cupertino.dart';

class BigMainText {
  String text;

  BigMainText(this.text);

  Widget getView(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 35,
        fontFamily: 'Poppins',
      ),
    );
  }
}
