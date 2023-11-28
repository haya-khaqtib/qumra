import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qumra_app/modules_package/personal_education_screen.dart';
import '../shared_package/components/components.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {


  @override
  void initState() {
    super.initState();
    navigateToHome();
  }
  void navigateToHome() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => PersonalEducationScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey, // Customize the background color
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.center,
              colors: [
                Color.fromRGBO(128, 128, 128, 1),
                Colors.white,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              pictureComponent(
                  pictureWidth:ScreenUtil().setWidth(300),
                  pictureHeight:ScreenUtil().setHeight(300),
                  picturePath:'assets/images/splash_screen.png',
              ),
              SizedBox(
                height: ScreenUtil().setHeight(15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  textCompnent(
                    text: 'الغد',
                    textSize: 30.sp,
                    textColor: (0xff000000),
                      textMaxLines: 1
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(5),
                  ),
                  textCompnent(
                    text: 'ثمرةُ',
                    textSize: 30.sp,
                    textColor: (0xffD50000),
                      textMaxLines: 1
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(12),
                  ),
                  textCompnent(
                    text:'اليوم',
                    textSize: 30.sp,
                    textColor: (0xff000000),
                      textMaxLines: 1
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(5),
                  ),
                  textCompnent(
                      text: 'قُمرة',
                    textSize: 30.sp,
                    textColor: (0xffD50000),
                      textMaxLines: 1
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}