import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qumra_app/modules_package/success_stories_screen.dart';
import '../shared_package/components/components.dart';

class OnlineCoursesScreen extends StatefulWidget {
  const OnlineCoursesScreen({super.key});

  @override
  State<OnlineCoursesScreen> createState() => _OnlineCoursesScreenState();
}

class _OnlineCoursesScreenState extends State<OnlineCoursesScreen> {
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
          child: Padding(
            padding:  EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(1),
              vertical: ScreenUtil().setHeight(10),
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textCompnent(
                    text: 'دروس عن بعد',
                    textSize: 30.sp,
                    textBold: FontWeight.bold,
                    textMaxLines: 1
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(25),
                ),
                pictureComponent(
                  picturePath: 'assets/images/online_courses.png',
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
                      'تعد الدورات العبر الإنترنت ذات أهمية كبيرة في حياة الأفراد.'
                          ' فهي تمنح الفرصة للتعلم واكتساب المعرفة في أي وقت وأي مكان يناسبهم.'
                          ' توفر الدورات العبر الإنترنت مرونة وملاءمة للأفراد، حيث يمكنهم تنظيم وقتهم وفقًا لظروفهم الشخصية ومتطلباتهم اليومية.'
                          ' كما تتيح لهم فرصة التعلم من خلال المواد المتاحة على الإنترنت،'
                          ' والتفاعل مع المحتوى والمشاركة في المناقشات والتواصل مع المدرسين والطلاب من جميع أنحاء العالم.'
                          ' تساعد الدورات العبر الإنترنت الأفراد على تطوير المهارات الجديدة وتحسين قدراتهم الشخصية والمهنية، '
                          'مما يزيد فرصهم في الحصول على فرص عمل جديدة وتحقيق التقدم في مجالاتهم المختلفة.'
                          ' بالإضافة إلى ذلك، تعزز الدورات العبر الإنترنت الاستمرارية في التعلم طوال الحياة، حيث يمكن للأفراد البقاء '
                          'على اطلاع على التطورات والابتكارات في مجالاتهم المهنية والأكاديمية. '
                          'بفضل الدورات العبر الإنترنت، أصبح التعليم متاحًا للجميع بغض النظر عن المسافات الجغرافية أو الظروف الاقتصادية، '
                          'مما يعزز التكافؤ والفرص المتساوية في التعليم.'
                          ' لذا، يجب على الأفراد الاستفادة من فرص الدورات العبر الإنترنت والاستثمار في تطوير أنفسهم وتحقيق النجاح في حياتهم.'
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
                        MaterialPageRoute(builder: (context) => SuccessStoriesScreen()),
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
                      width:  ScreenUtil().setWidth(20),
                    ),
                    smallButton(
                      smallButtonWidth: ScreenUtil().setWidth(15),
                      smallButtonHeight: ScreenUtil().setHeight(15),
                      smallButtonColorBorder: 0xffd50000,
                      smallButtonColor: 0xffffffff,
                    ),
                    SizedBox(
                      width:  ScreenUtil().setWidth(20),
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
