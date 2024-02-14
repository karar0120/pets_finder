import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pets_finder/core/routing/app_router.dart';
import 'package:pets_finder/core/routing/routes.dart';
import 'package:pets_finder/core/theming/color.dart';

class PetsApp extends StatelessWidget {
  const PetsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: "Pets Finder App",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white),
        initialRoute: Routes.loginScreen,
        onGenerateRoute: AppRoute.generateRoute,
      ),
    );
  }
}
