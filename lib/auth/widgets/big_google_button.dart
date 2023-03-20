import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  final String nameButton;
  final String nameImage;
  Function onTap;
  GoogleButton(
      {super.key,
      required this.nameButton,
      required this.nameImage,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap;
      },
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
}
