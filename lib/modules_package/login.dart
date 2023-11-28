import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:postgres/postgres.dart';
import 'package:qumra_app/modules_package/subjects_screen.dart';

import '../shared_package/components/components.dart';
import 'dbtest.dart';

class Login extends StatefulWidget {

  const Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {



  // Future get() async{
  //   try {
  //     await c1.open();
  //     print("connected");
  //
  //     var result = await c1.query('select * from get_all_userss() ');
  //     //return result;
  //     print(result);
  //   } catch (e) {
  //     print("error");
  //     print(e.toString());
  //   }
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [//808080B3
                Container(
                  width:double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(128, 128, 128, 70),
                      borderRadius: BorderRadius.only(
                        bottomRight:Radius.circular(40.0) ,
                        bottomLeft:Radius.circular(40.0),
                      )
                  ),
                ),
                pictureComponent(
                      pictureWidth:ScreenUtil().setWidth(280),
                      pictureHeight:ScreenUtil().setHeight(280),
                      picturePath: 'assets/images/login.png',
                    ),

              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: ScreenUtil().setHeight(15),
                horizontal:  ScreenUtil().setWidth(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children:[
                  textCompnent(
                    text: 'تسجيل الدخول',
                    textSize: 22.sp,
                    textColor:(0xffd50000),
                    textBold: FontWeight.w500,
                    textMaxLines: 1
              ),
                  SizedBox(
                    height: ScreenUtil().setHeight(15),
                  ),
                  textCompnent(
                    text: ':اسم المستخدم',
                    textSize: 18.sp,
                    textColor:(0xff000000),textBold: FontWeight.w500,
                    textMaxLines: 1
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(5),
                  ),
                  textFormFieldComponent(
                    inputType: TextInputType.text,
                    fieldPrefixIcon: Icons.person_outline,
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(15),
                  ),
                  textCompnent(
                    text: ':كلمة المرور',
                    textSize: 18.0.sp,
                    textColor: 0xff000000,
                    textBold: FontWeight.w500,
                    textMaxLines: 1
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(5),
                  ),
                  textFormFieldComponent(
                    inputType: TextInputType.text,
                    fieldPrefixIcon:Icons.lock,
                    textObscure: true,
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(50),
                  ),
                  Center(
                    child: Container(
                      width: ScreenUtil().setWidth(200),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff808080B3).withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: Offset(
                              0,
                              5
                              ),
                            ),
                          ],
                          color: Color(0xffd50000),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child:buttonCompenent(
                          buttonWidth:ScreenUtil().setWidth(220),
                          buttonHeight:ScreenUtil().setHeight(50),
                          buttonColor: 0xffd50000,
                          buttonChild:textCompnent(
                            text: 'تسجيل الدخول',
                            textSize: 20.sp,
                            textColor: 0xffffffff,
                            textMaxLines: 1
                      ),
                           onPressedButton: () {
                             // Navigator.push(
                             //   context,
                             //   MaterialPageRoute(
                             //       builder: (context) => SubjectsScreen()),
                             // );
                             Get.to(SubjectsScreen());
                           }
                        // async{
                          //    final connection = DatabaseConnection();
                          //     await connection.connect();
                          //
                          //     try {
                          //       final result = await connection.executeQuery('SELECT * from select_pic_text()');
                          //
                          //       if (result.isNotEmpty) {
                          //         //final row = result.first;
                          //         //final value = row[0]; // Assuming the function returns a single column
                          //         print(result);
                          //       } else {
                          //         print('No result');
                          //       }
                          //     } catch (e) {
                          //       print('Error: $e');
                          //     } finally {
                          //       await connection.disconnect();
                          //     }
                          //   }





                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => SubjectsScreen()),
                            // );

                    ),
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}