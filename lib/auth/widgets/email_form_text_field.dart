import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EmailFormTextField extends StatelessWidget {
  const EmailFormTextField({super.key, required this.controller});
  final TextEditingController controller;
  //test
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      controller: controller,
      validator: (email) => email != null && !EmailValidator.validate(email)
          ? 'Введите правильный Email'
          : null,
      decoration: const InputDecoration(
        prefixIcon: Icon(
          Icons.email,
          color: Colors.grey,
        ),
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
