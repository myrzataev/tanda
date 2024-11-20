import 'package:flutter/material.dart';

class BussinessItemEditor extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool num;
  const BussinessItemEditor({
    super.key,
    required this.controller,
    required this.hintText,
    this.num = false
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: num ? TextInputType.number: TextInputType.none,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      maxLines: null,
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText is missing!';
        }
        return null;
      },
    );
  }
}
