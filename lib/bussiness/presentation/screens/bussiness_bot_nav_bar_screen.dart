import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanda/core/utils/app_colors.dart';
import 'package:tanda/resources/resources.dart';

class BussinessBotNavBarScreen extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const BussinessBotNavBarScreen(),
      );

  const BussinessBotNavBarScreen({super.key});

  @override
  State<BussinessBotNavBarScreen> createState() =>
      _BussinessBotNavBarScreenState();
}

class _BussinessBotNavBarScreenState extends State<BussinessBotNavBarScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'hello',
          style: TextStyle(color: Colors.black),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          showSelectedLabels: false,
          
          selectedIconTheme:
              const IconThemeData(color: AppColors.secondaryColor),
          iconSize: 18.w,
          selectedFontSize: 18.w,
          selectedItemColor: AppColors.accentColor,
          // selectedLabelStyle: AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
          unselectedItemColor: AppColors.secondaryColor,
          unselectedFontSize: 16.sp,
          // unselectedLabelStyle: AppFonts.w400s16.copyWith(color: AppColors.regularGreyColor),
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          onTap: (value) {},
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                SvgImages.home,

                // ignore: deprecated_member_use
                color: currentIndex == 0
                    ? AppColors.accentColor
                    : AppColors.secondaryColor, // Control the color
              ),
              label: "Главная",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                SvgImages.add,
                // ignore: deprecated_member_use
                color: currentIndex == 1
                    ? AppColors.accentColor
                    : AppColors.secondaryColor,
              ),
              label: "Аукцион",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                SvgImages.profile,
                // ignore: deprecated_member_use
                color: currentIndex == 2
                    ? AppColors.accentColor
                    : AppColors.secondaryColor,
              ),
              label: "Чат",
            ),
          ]),
    );
  }
}
