import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:tanda/core/utils/app_colors.dart';
import 'package:tanda/general/presentation/screens/registration_screen.dart';
import 'package:tanda/resources/resources.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: FlutterSplashScreen.fadeIn(
        backgroundColor: Colors.white,
        onInit: () {
          debugPrint("On Init");
        },
        onEnd: () {
          GoRouter.of(context).goNamed("onBoarding");
        },
        childWidget: SizedBox(
            height: 200.h,
            width: 200.w,
            child: Image.asset(
              Images.log,
            )),
        onAnimationEnd: () => debugPrint("On Fade In End"),
        nextScreen: const RegistrationScreen(),
      ),
    );
  }
}
