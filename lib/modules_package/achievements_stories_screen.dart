import 'package:flutter/material.dart';
import 'package:qumra_app/modules_package/login.dart';
import 'package:qumra_app/modules_package/subjects_screen.dart';
import 'package:qumra_app/shared_package/components/components.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_size_text/auto_size_text.dart';

class AchievementsStoriesScreen extends StatefulWidget {
  const AchievementsStoriesScreen({super.key});

  @override
  State<AchievementsStoriesScreen> createState() => _AchievementsStoriesScreenState();
}

class _AchievementsStoriesScreenState extends State<AchievementsStoriesScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0,
        leading:Align(
          alignment: Alignment.topLeft,
          child:iconButtonComponent(
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
          child: Padding(
            padding:  EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(1),
              vertical: ScreenUtil().setHeight(10),
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textCompnent(
                    text: 'الإنجازات',
                    textSize: 30.sp,
                    textBold: FontWeight.bold,
                  textMaxLines: 1
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(25),
                ),
                pictureComponent(
                  picturePath: 'assets/images/achievements.png',
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
                      'الإنجازات تمنح الحياة قيمة وأهمية.'
                          ' إنها تعزز النمو الشخصي والاحترام الذاتي، '
                          'وتعطينا القوة والثقة لمواجهة التحديات. بفضل الإنجازات، '
                          'نحقق الرضا والتحقق من أهدافنا ونعيش حياة مليئة بالمعاني والإلهام'
                          'الإنجازات تمنح الحياة قيمة وأهمية.'
                          ' إنها تعزز النمو الشخصي والاحترام الذاتي، '
                          'وتعطينا القوة والثقة لمواجهة التحديات. بفضل الإنجازات، '
                          ' نحقق الرضا والتحقق من أهدافنا ونعيش حياة مليئة بالمعاني والإلهام',
                    pragraphFontSize: 18.sp
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buttonCompenent(
                        buttonWidth:ScreenUtil().setWidth(110),
                        buttonHeight:ScreenUtil().setHeight(40),
                        buttonColor: 0xffD50000,
                        buttonRadius: 30,
                        buttonChild:textCompnent(
                            text: 'التاسع',
                            textColor: 0xffffffff,
                            textSize: 14.sp,
                            textAlign: TextAlign.center,
                            textMaxLines: 1
                          ),
                        onPressedButton:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        }
                    ),
                    SizedBox(
                      width:ScreenUtil().setWidth(2),
                    ),
                    buttonCompenent(
                        buttonWidth:ScreenUtil().setWidth(110),
                        buttonHeight:ScreenUtil().setHeight(40),
                        buttonColor: 0xffD50000,
                        buttonRadius: 30,
                         buttonChild: textCompnent(
                            text: ' البكالوريا الأدبي',
                            textColor: 0xffffffff,
                            textSize: 14.sp,
                            textAlign: TextAlign.center,
                            textMaxLines: 1
                          ),
                        onPressedButton:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        }
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(2),
                    ),
                    buttonCompenent(
                        buttonWidth:ScreenUtil().setWidth(110),
                        buttonHeight:ScreenUtil().setHeight(40),
                        buttonColor: 0xffD50000,
                        buttonRadius: 30,
                        buttonChild: textCompnent(
                            text: ' البكالوريا العلمي',
                            textColor: 0xffffffff,
                            textSize: 14.sp,
                            textAlign: TextAlign.center,
                            textMaxLines: 1
                        ),
                        onPressedButton:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        }
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
