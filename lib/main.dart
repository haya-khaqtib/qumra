import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'layout_package/home_layout_screen.dart';
import 'modules_package/achievements_stories_screen.dart';
import 'modules_package/lessons_screen.dart';
import 'modules_package/login.dart';
import 'modules_package/online_courses_screen.dart';
import 'modules_package/personal_education_screen.dart';
import 'modules_package/splash_screen.dart';
import 'modules_package/subjects_screen.dart';
import 'modules_package/success_stories_screen.dart';
import 'modules_package/test.dart';
import 'package:responsive_builder/responsive_builder.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  //  Initialize ScreenUtil with the context
    ScreenUtil.init(context,
        designSize: Size( MediaQuery.of(context).size.width, MediaQuery.of(context).size.height), );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home:SplashScreen(),
    );
  }
}

