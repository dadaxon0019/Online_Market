import 'package:flutter/material.dart';
import 'package:online_market/auth/screens/main_auth_page.dart';

class SignButton extends StatelessWidget {
  final String text;
  final Widget wid;

  SignButton({
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
        ),
        child: Text(
          this.text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
