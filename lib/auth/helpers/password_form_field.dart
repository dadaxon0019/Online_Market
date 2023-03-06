import 'package:flutter/material.dart';

class PasswordFormField extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator validator;
  final bool obscureText;
  final Function onTap;
  const PasswordFormField(
      {super.key,
      required this.controller,
      required this.validator,
      required this.obscureText,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      cursorColor: Colors.grey,
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.lock,
          color: Colors.grey,
        ),
        suffix: InkWell(
          onTap: onTap(),
          child: Icon(
            obscureText ? Icons.visibility_off : Icons.visibility,
            color: Colors.black,
          ),
        ),
        hintText: 'Пароль',
        filled: true,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
