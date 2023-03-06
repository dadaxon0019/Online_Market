import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator validator;
  final Icon icon;
  final bool obscureText;
  const MyTextFormField({
    super.key,
    required this.controller,
    required this.validator,
    required this.icon,
    this.obscureText = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.grey,
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: 'Email',
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
