import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanda/core/utils/app_colors.dart';
import 'package:tanda/core/utils/app_fonts.dart';
import 'package:tanda/general/auth/presentation/screens/authorization_screen.dart';
import 'package:tanda/general/auth/presentation/widgets/auth_button.dart';
import 'package:tanda/resources/resources.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(
                  height: 300.h, width: 300.w, child: Image.asset(Images.logo)),
              RichText(
                textAlign: TextAlign.center, // Align text to center
                text: TextSpan(
                  text: "Приветствуем вас в ",
                  style: AppFonts.s20w700
                      .copyWith(color: AppColors.secondaryColor),
                  children: [
                    TextSpan(
                      text: "Tanda! ", // Add space or punctuation if needed
                      style: AppFonts.s20w700
                          .copyWith(color: AppColors.accentColor),
                    ),
                    TextSpan(
                      text:
                          "Найдите идеальное место для каждого момента. Ваше бронирование — наша забота.",
                      style: AppFonts.s20w700.copyWith(
                          color: AppColors
                              .secondaryColor), // Slightly smaller font for better readability
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              AuthButton(
                buttonText: 'Customer',
                onPressed: () {
                  Navigator.push(context, AuthorizationScreen.route());
                },
                bgColor: AppColors.accentColor,
                color: AppColors.secondaryColor,
              ),
              const SizedBox(
                height: 20,
              ),
              AuthButton(
                buttonText: 'Bussiness',
                onPressed: () {
                  Navigator.push(context, AuthorizationScreen.route());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
