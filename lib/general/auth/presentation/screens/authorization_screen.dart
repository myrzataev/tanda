import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanda/bussiness/presentation/screens/bussiness_bot_nav_bar_screen.dart';
import 'package:tanda/core/utils/app_colors.dart';
import 'package:tanda/core/utils/app_fonts.dart';
import 'package:tanda/general/auth/presentation/screens/registration_screen.dart';
import 'package:tanda/general/auth/presentation/widgets/auth_button.dart';
import 'package:tanda/general/auth/presentation/widgets/auth_filed.dart';
import 'package:tanda/resources/resources.dart';

class AuthorizationScreen extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const AuthorizationScreen(),
      );
  const AuthorizationScreen({super.key});

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
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
                'Привет!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              RichText(
                textAlign: TextAlign.center, // Align text to center
                text: TextSpan(
                  text: "Рады видеть вас в ",
                  style: AppFonts.s20w400
                      .copyWith(color: AppColors.secondaryColor),
                  children: [
                    TextSpan(
                      text: "Tanda!", // Add space or punctuation if needed
                      style: AppFonts.s20w400
                          .copyWith(color: AppColors.accentColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                '  Адрес  ',
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
                    Navigator.push(context, BussinessBotNavBarScreen.route());
                  }),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        RegistrationScreen.route(),
                      );
                    },
                    child: const Column(
                      children: [
                        Text('У вас нет учетной записи?'),
                        Text(
                          'Зарегистрироваться',
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
