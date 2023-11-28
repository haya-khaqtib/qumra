import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../shared_package/components/components.dart';
import 'achievements_stories_screen.dart';

class SuccessStoriesScreen extends StatefulWidget {
  const SuccessStoriesScreen({super.key});

  @override
  State<SuccessStoriesScreen> createState() => _SuccessStoriesScreenState();
}

class _SuccessStoriesScreenState extends State<SuccessStoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white24,
          elevation: 0,
          leading:Align(
            alignment: Alignment.topLeft,
            child: iconButtonComponent(
              iconButton: Icons.arrow_back_outlined,
              iconColor: 0xffd50000,
              iconSize: 40,
              onPressedIcon: (){
                Navigator.pop(context);
              },
            )
          ),
        ),
        body: SafeArea(
          child:Padding(
            padding:EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(1),
              vertical: ScreenUtil().setHeight(10),
            ),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textCompnent(
                    text: 'قصص النجاح',
                    textSize: 30.sp,
                    textBold: FontWeight.bold,
                    textMaxLines: 1
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(25),
                ),
                pictureComponent(
                  picturePath: 'assets/images/success_stories.png',
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
                              'النجاح هو عنصر أساسي في الحياة، حيث يمثل التحقيق وتحقيق الأهداف والتفوق في مختلف المجالات. '
                                  'يتعلق النجاح بتحقيق الرضا الشخصي والتقدم والازدهار. يمنح النجاح الفرد شعورًا بالإنجاز والثقة بالنفس،'
                                  ' ويعزز الرغبة في المضي قدمًا وتحقيق أهداف أكبر. يعتبر النجاح محفزًا قويًا للتطور الشخصي والمهني،'
                                  ' حيث يشجع الفرد على تعلم مهارات جديدة وتوسيع آفاقه وتحقيق تقدم ملحوظ في حياته. يؤثر النجاح أيضًا على العلاقات الاجتماعية، '
                                  'حيث يكون الفرد الناجح قدوة للآخرين ويلهمهم لتحقيق أهدافهم الخاصة.'
                                  ' من خلال النجاح، يتمكن الفرد من تحقيق السعادة والتحقق من إمكاناته الكاملة.'
                                  ' لذا، يجب على الأفراد السعي نحو النجاح والعمل بجد واجتهاد لتحقيق أهدافهم وتحقيق التفوق في حياتهم.'
                          ,pragraphFontSize: 18.sp
                      ),
                    ),
                SizedBox(
                  height:ScreenUtil().setHeight(30),
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
                        MaterialPageRoute(builder: (context) => AchievementsStoriesScreen()),
                      );
                    }
                    ),
                SizedBox(
                      height:ScreenUtil().setHeight(8),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                      smallButtonColorBorder: 0xffd50000,
                      smallButtonColor: 0xffd50000,
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(20),
                    ),
                    smallButton(
                      smallButtonWidth: ScreenUtil().setWidth(15),
                      smallButtonHeight: ScreenUtil().setHeight(15),
                      smallButtonRadius: 50,
                      smallButtonColorBorder: 0xffd50000,
                      smallButtonColor: 0xffffffff,
                    ),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}
