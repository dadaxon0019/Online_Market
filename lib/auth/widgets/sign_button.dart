import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  final String text;
  final Widget wid;

  const SignButton({
    super.key,
    required this.text,
    required this.wid,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Route route = MaterialPageRoute(builder: (context) => wid);
        Navigator.push(context, route);
      },
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
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
}
