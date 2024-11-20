import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanda/bussiness/presentation/screens/bussiness_bot_nav_bar_screen.dart';
import 'package:tanda/bussiness/presentation/screens/bussiness_home_screen.dart';
import 'package:tanda/core/utils/app_colors.dart';
import 'package:tanda/core/utils/app_fonts.dart';
import 'package:tanda/general/auth/presentation/screens/authorization_screen.dart';
import 'package:tanda/general/auth/presentation/widgets/auth_button.dart';
import 'package:tanda/general/auth/presentation/widgets/auth_filed.dart';
import 'package:tanda/resources/resources.dart';

class RegistrationScreen extends StatelessWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const RegistrationScreen(),
      );
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: SvgPicture.asset(
                    SvgImages.log,
                  ),
                ),
              ),
              const Text(
                'Добро пожаловать!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              RichText(
                textAlign: TextAlign.start, // Align text to center
                text: TextSpan(
                  text: "C ",
                  style: AppFonts.s18w400
                      .copyWith(color: AppColors.secondaryColor),
                  children: [
                    TextSpan(
                      text: "Tanda", // Add space or punctuation if needed
                      style: AppFonts.s18w400
                          .copyWith(color: AppColors.accentColor),
                    ),
                    TextSpan(
                      text:
                          " вы всегда на шаг впереди!", // Add space or punctuation if needed
                      style: AppFonts.s18w400
                          .copyWith(color: AppColors.secondaryColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                '  Имя пользователя',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              const AuthFiled(
                hintText: 'Введите имя пользователя адрес',
                prefix: Icon(
                  Icons.account_circle,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                '  Адрес',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              const AuthFiled(
                hintText: 'Введите адрес',
                prefix: Icon(Icons.email),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                '  Пароль',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              const AuthFiled(
                hintText: 'Введите пароль',
                prefix: Icon(Icons.lock),
                isObscureText: true,
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                '  Подтвердите пароль',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              const AuthFiled(
                hintText: 'Введите пароль',
                prefix: Icon(Icons.lock),
                isObscureText: true,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Забыли пароль?',
                    style: TextStyle(color: AppColors.secondaryColor),
                  ),
                ),
              ),
              AuthButton(
                  buttonText: 'Войти',
                  onPressed: () {
                    Navigator.push(context, BussinessHomeScreen.route());
                  }),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        AuthorizationScreen.route(),
                      );
                    },
                    child: const Column(
                      children: [
                        Text('У вас уже есть учетная запись?'),
                        Text(
                          'Войти',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
