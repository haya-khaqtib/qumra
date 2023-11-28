import 'package:flutter/material.dart';
import 'package:qumra_app/modules_package/online_courses_screen.dart';
import '../shared_package/components/components.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dbtest.dart';


class PersonalEducationScreen extends StatefulWidget {
  const PersonalEducationScreen({super.key});

  @override
  State<PersonalEducationScreen> createState() => _PersonalEducationScreenState();
}




class _PersonalEducationScreenState extends State<PersonalEducationScreen> {


  void onPressed(Widget page()){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page()));
  }
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white24,
          elevation: 0,
        ),
        body: Padding(
          padding:  EdgeInsets.symmetric(
            vertical:ScreenUtil().setHeight(15) ,
            horizontal:ScreenUtil().setWidth(15) ,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              textCompnent(
                  text: 'التعليم الشخصي',
                  textSize: 30.sp,
                  textBold: FontWeight.bold,
                  textMaxLines: 1
              ),
              SizedBox(
                height: ScreenUtil().setHeight(25),
              ),
              pictureComponent(
                picturePath: 'assets/images/personal_education.png',
                pictureWidth:ScreenUtil().setWidth(180),
                pictureHeight:ScreenUtil().setHeight(180),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(5),
              ),
              Expanded(
                child: paragraphComponent(
                    pragraphHeight:ScreenUtil().setHeight(892),
                    pragraphWidth:ScreenUtil().setWidth(674),
                    pragraph:
                   ""
                    ,
                    pragraphFontSize: 18.sp
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(30),
              ),
              buttonCompenent(
                  buttonWidth:ScreenUtil().setWidth(220),
                  buttonHeight:ScreenUtil().setHeight(50),
                  buttonColor: 0xffD50000,
                  buttonRadius: 30,
                  buttonChild: Icon(
                    Icons.arrow_forward_outlined,
                    size: 45,
                    color: Color(0xffffffff),
                ),
                  onPressedButton:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OnlineCoursesScreen()),
                    );
                  }
              ),
              SizedBox(
                height: ScreenUtil().setHeight(8),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  smallButton(
                    smallButtonWidth: ScreenUtil().setWidth(15),
                    smallButtonHeight: ScreenUtil().setHeight(15),
                    smallButtonColorBorder: 0xffd50000,
                    smallButtonColor: 0xffd50000,
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(20),
                  ),
                  smallButton(
                    smallButtonWidth: ScreenUtil().setWidth(15),
                    smallButtonHeight: ScreenUtil().setHeight(15),
                    smallButtonColorBorder: 0xffd50000,
                    smallButtonColor: 0xffffffff,
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(20),
                  ),
                  smallButton(
                    smallButtonWidth: ScreenUtil().setWidth(15),
                    smallButtonHeight: ScreenUtil().setHeight(15),
                    smallButtonColorBorder: 0xffd50000,
                    smallButtonColor: 0xffffffff,
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(20),
                  ),
                  smallButton(
                    smallButtonWidth: ScreenUtil().setWidth(15),
                    smallButtonHeight: ScreenUtil().setHeight(15),
                    smallButtonRadius: 50,
                    smallButtonColorBorder: 0xffd50000,
                    smallButtonColor: 0xffffff,
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}
