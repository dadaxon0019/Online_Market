import 'package:flutter/material.dart';

class TextFieldAuth extends StatefulWidget {
  final String hintText;
  final Icon icon;
  dynamic controller;
  bool obscureText;
  TextFieldAuth(
      {super.key,
      required this.hintText,
      required this.icon,
      this.obscureText = true,
      required this.controller});

  @override
  State<TextFieldAuth> createState() => _TextFieldAuthState();
}

class _TextFieldAuthState extends State<TextFieldAuth> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: false,
      obscureText: widget.obscureText,
      controller: widget.controller,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        prefixIcon: widget.icon,
        hintText: widget.hintText,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
