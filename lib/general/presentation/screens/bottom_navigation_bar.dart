
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:tanda/core/utils/app_colors.dart';
import 'package:tanda/resources/resources.dart';

class AppBottomNavigationBar extends StatefulWidget {
  final Widget child;
  const AppBottomNavigationBar({super.key, required this.child});

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        selectedIconTheme: const IconThemeData(color: AppColors.secondaryColor),
        iconSize: 18.w,
        selectedFontSize: 18.w,
        selectedItemColor: AppColors.accentColor,
        // selectedLabelStyle: AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
        unselectedItemColor: AppColors.secondaryColor,
        unselectedFontSize: 16.sp,
        // unselectedLabelStyle: AppFonts.w400s16.copyWith(color: AppColors.regularGreyColor),
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            changeTab(value);
          },
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

  void changeTab(int index) {
    switch (index) {
      case 0:
        context.go('/main');
        break;
      case 1:
        context.go('/add');
        break;
      case 2:
        context.go("/profile");
        break;
      default:
        context.go("/main");
        break;
    }
    setState(() {
      currentIndex = index;
    });
  }
}
