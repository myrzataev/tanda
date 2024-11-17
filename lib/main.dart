import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanda/config/routes/app_routes.dart';
import 'package:tanda/core/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
  debugPaintLayerBordersEnabled = true;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        color: AppColors.backgroundColor,
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
