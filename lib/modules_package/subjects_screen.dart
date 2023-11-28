
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qumra_app/layout_package/home_layout_screen.dart';
import 'package:qumra_app/shared_package/components/components.dart';

import 'lessons_screen.dart';

class SubjectsScreen extends StatefulWidget {
  const SubjectsScreen({super.key});

  @override
  State<SubjectsScreen> createState() => _SubjectsScreenState();
}

class _SubjectsScreenState extends State<SubjectsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            containerCompnent(
              containerWidth: ScreenUtil().setWidth(double.infinity),
              containerHeight: ScreenUtil().setHeight(75),
              containerColor: 0xffd50000,
              containerRaduisBottomLeft:40,
              containerRaduisBottomRight: 0,
              containerRaduisTopLeft: 0,
              containerRaduisTopRight: 0,
              containerChiled: Padding(
                padding:  EdgeInsets.symmetric(
                  vertical: ScreenUtil().setWidth(20),
                  horizontal: ScreenUtil().setHeight(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconButtonComponent(
                      iconButton: Icons.arrow_back_outlined,
                      iconColor:0xffffffff,
                      iconSize: 35,
                      onPressedIcon: (){
                        Navigator.pop(context);
                      },
                    ),
                    textCompnent(
                        text: 'اختر مادتك',
                        textSize: 24.sp,
                        textColor: 0xffffffff,
                        textBold: FontWeight.w600,
                        textMaxLines: 1
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: Padding(
                  padding:  EdgeInsets.symmetric(
                    vertical: ScreenUtil().setWidth(15),
                    horizontal: ScreenUtil().setHeight(10),
                  ),
                  child:ListView.separated(
                      itemBuilder: (context, index) => subjectComponent(
                        pictureContainerPath:'assets/images/online_courses.png',
                        textContainer: 'العربي',
                        textContainerMaxLines: 1,
                        onTapContainer: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeLayout()),
                          );
                        }
                      ),
                      separatorBuilder: (context, index) => SizedBox(height: ScreenUtil().setHeight(15),),
                      itemCount: 4)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/**/