import 'package:flutter/material.dart';
import 'package:tanda/core/utils/app_colors.dart';

class AuthButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color color;
  final Color bgColor;
  const AuthButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.color = AppColors.accentColor,
    this.bgColor = AppColors.secondaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: bgColor,
          shadowColor: bgColor,
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: color,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
