import 'package:flutter/material.dart';


class AuthFiled extends StatelessWidget {
  final String hintText;
  final Icon prefix;
  final bool isObscureText;
  const AuthFiled({
    super.key,
    required this.hintText,
    required this.prefix,
    this.isObscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefix,
      ),
      obscureText: isObscureText,
    );
  }
}
