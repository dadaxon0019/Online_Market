import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  final String nameButton;
  final String nameImage;
  const GoogleButton(
      {super.key, required this.nameButton, required this.nameImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(83, 0, 0, 0),
          width: 0.2,
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
                image: AssetImage(this.nameImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            this.nameButton,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
