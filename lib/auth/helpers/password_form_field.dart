import 'package:flutter/material.dart';

class PasswordFormField extends StatelessWidget {
  final TextEditingController controller;
  const PasswordFormField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      cursorColor: Colors.grey,
      controller: controller,
      obscureText: true,
      validator: (value) =>
          value != null && value.length < 6 ? 'Минимум 6 символов' : null,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        prefixIcon: Icon(
          Icons.lock,
          color: Colors.grey,
        ),
        suffix: InkWell(
          child: Icon(
            Icons.visibility_off,
            color: Colors.black,
          ),
        ),
        hintText: 'Пароль',
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
