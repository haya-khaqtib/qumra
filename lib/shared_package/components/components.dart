import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// splash Screen Text

//Text Component Start
Widget textCompnent({
  int textColor=0xffD50000,
  required String text,
  double textSize=35.0,
  FontWeight textBold=FontWeight.normal,
  TextAlign textAlign=TextAlign.right,
  required int textMaxLines,
}
    )
{
return AutoSizeText(
    text,
    style: TextStyle(
    color:Color(textColor),
    fontSize: textSize,
    fontWeight: textBold,
  ),
    textAlign: textAlign,
    maxLines: textMaxLines
);
}
//Text Component End
// *****************************************************

//Picture Component Start
Widget pictureComponent({
  double pictureWidth=double.infinity,
  double pictureHeight=200,
  required String picturePath,
}
    )
{
  return Container(
      width: pictureWidth,
      height: pictureHeight,
      child:
      Image(image:AssetImage(
          picturePath
      ),
      fit: BoxFit.cover,
      )
  );
}
//Picture Component End
// *****************************************************

//Paragraph Component Start
Widget paragraphComponent({
  double pragraphWidth=650,
  double pragraphHeight=400,
  required String pragraph,
  double pragraphFontSize=20,
  double pragraphHeightLine=1.5,
  int pragraphFontColor=0xff000000,}
    )
{
  return Container(
    padding: EdgeInsets.all(10),
    height: pragraphHeight,
    width:pragraphWidth,
    child: ListView(
      children: [Text(
          pragraph,
          style:
          TextStyle(
            fontSize: pragraphFontSize,
            color: Color(0xff000000),
            height: pragraphHeightLine,
          ),
          textAlign: TextAlign.right,
        overflow: TextOverflow.ellipsis,
        maxLines: 15,
      ),
    ],
    ),
  );
}
//Paragraph Component End
// *****************************************************

//Button Component Start
Widget buttonCompenent({
  double buttonWidth=180,
  double buttonHeight=50,
  required int buttonColor,
  double buttonRadius=50,
  required Widget buttonChild,
  required final VoidCallback onPressedButton,
}
    )
{
  return Container(
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
          color: Color(buttonColor),
          borderRadius: BorderRadius.circular(buttonRadius),
      ),
      child:
      MaterialButton(
          child: buttonChild,
          onPressed:onPressedButton,

      )
    );
}
//Button Component End
// *****************************************************

//Small Button Component Start
Widget smallButton({
  double smallButtonWidth=15,
  double smallButtonHeight=15,
  double smallButtonRadius=50,
  required int smallButtonColorBorder,
  required int smallButtonColor,
  double smallButtonWidthBorder=2,}
    )
{
  return Container(
      width: smallButtonWidth,
      height: smallButtonHeight,
      decoration: BoxDecoration(
          color:Color(smallButtonColor),
          border: Border.all(
              color: Color(smallButtonColorBorder),
              width: smallButtonWidthBorder,
          ),
          borderRadius: BorderRadius.circular(50),
  ),
      child:
      MaterialButton(onPressed: (){
        print('next');
      }
      )
  );
}
//Small Button Component End
//****************************************************

// TextFormField Start
Widget textFormFieldComponent({
 required TextInputType inputType,
 double fieldRadius=25.0,
 required IconData fieldPrefixIcon,
 int fieldPrefixIconColor=0xffd50000,
 double fieldPrefixIconSize=25,
  bool textObscure=false,
}) {
  return TextFormField(
    keyboardType: inputType,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(fieldRadius),
      ),
      prefixIcon: Icon(fieldPrefixIcon,
        color: Color(fieldPrefixIconColor),
        size: fieldPrefixIconSize,
      ),
    ),
    obscureText: textObscure,
  );
}
//TextFormField End
//****************************************************


//Title Component Start
Widget containerCompnent({
  required double containerWidth,
  required double containerHeight,
  required Widget containerChiled,
  required int containerColor,
  double containerRaduisBottomLeft=0,
  double containerRaduisBottomRight=0,
  double containerRaduisTopLeft=0,
  double containerRaduisTopRight=0,
})
{
  return Container(
    width: containerWidth,
    height: containerHeight,
    decoration: BoxDecoration(
      color: Color(containerColor),
      borderRadius: BorderRadius.only(
        bottomLeft:Radius.circular(containerRaduisBottomLeft),
        bottomRight: Radius.circular(containerRaduisBottomRight),
        topLeft: Radius.circular(containerRaduisTopLeft),
        topRight:Radius.circular(containerRaduisTopRight),

      ),
    ),
    child: containerChiled,
  );
}
//Title Component End

//Icon Component Start
Widget iconButtonComponent({
  required IconData iconButton,
  int iconColor=0xffd50000,
  double iconSize=30,
  required final VoidCallback onPressedIcon,
})
{
  return IconButton(
    icon: Icon(
      iconButton,
      size: iconSize,
      color: Color(iconColor),
    ) ,
    onPressed: onPressedIcon,
  );
}
//Icon Component End
//**************************************************

// Elemnt Component Start
Widget elementComponent(
{
  //0x66808080
  double elementContainerWidth=double.infinity,
  double elementContainerHeight=85,
  int elementContainerColor=0x80808080,
  double elementContainerRaduisBottomLeft=10,
  double elementContainerRaduisBottomRight=10,
  double elementContainerRaduisTopRight=10,
  double elementContainerRaduisTopLeft=10,
  required IconData elementContainerIcon,
  int elementContainerIconColor=0xffD50000,
  double elementContainerIconSize=40,
  required String elementContainerText,
  double elementContainerTextSize=20,
  int elementContainerTextColor=0xff000000,
  double elementContainerPictureWidth=100,
  double elementContainerPictureHeight=100,
  required String elementContainerPicturePath,
  required int elementTextMaxLines,

}){
  return Padding(
    padding:  EdgeInsets.symmetric(
        vertical: ScreenUtil().setHeight(10),
        horizontal: ScreenUtil().setWidth(15),
    ),
    child: Stack(
      children: [
        containerCompnent(
          containerWidth: ScreenUtil().setWidth(elementContainerWidth),
          containerHeight: ScreenUtil().setHeight(elementContainerHeight),
          containerColor: elementContainerColor,
          containerRaduisBottomLeft:elementContainerRaduisBottomLeft,
          containerRaduisBottomRight: elementContainerRaduisBottomRight,
          containerRaduisTopRight: elementContainerRaduisTopRight,
          containerRaduisTopLeft: elementContainerRaduisTopLeft,
          containerChiled:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              iconButtonComponent(
                iconButton: elementContainerIcon,
                iconColor: elementContainerIconColor,
                iconSize: elementContainerIconSize,
                onPressedIcon:(){
                  print('clicked');
                },
              ),
              Row(
                children: [
                  textCompnent(
                    text:elementContainerText,
                    textSize: elementContainerTextSize,
                    textColor: elementContainerTextColor,
                          textMaxLines: elementTextMaxLines
                  ),
                  SizedBox(
                    width:  ScreenUtil().setWidth(5),
                  ),
                  pictureComponent(
                      pictureHeight: ScreenUtil().setHeight(elementContainerPictureHeight),
                      pictureWidth: ScreenUtil().setWidth(elementContainerPictureWidth),
                      picturePath: elementContainerPicturePath
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
// Elemnt Component End
//**************************************************************

// Subject Component Start
Widget subjectComponent(
{
  double outContainerWidth=150,
  double outContainerHeight=180,
  int outContainerShadow=0xffffffff,
  int outContainerColor=0xffF6F2F2FF,
  double inOutContainerRaduis=20,
  double innerContainerWidth=120,
  double innerContainerHeight=160,
  //Color innerContainerColor= Color.fromRGBO(128, 128, 128,0.1),
  int innerContainerBorderColor=0xffd50000,
  double pictureContainerWidth=100,
  double pictureContainerHeight=100,
  required String pictureContainerPath,
  required String textContainer,
  double textContainerSize=20,
  TextAlign textContainerAlign=TextAlign.center,
  int textContainerColor=0xffD50000,
  FontWeight textContainerBold=FontWeight.normal,
  required final VoidCallback onTapContainer,
  required int textContainerMaxLines,
})
{return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Container(
            width: ScreenUtil().setWidth(outContainerWidth),
            height: ScreenUtil().setHeight(outContainerHeight),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(outContainerShadow).withOpacity(0.09),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
                color: Color(outContainerColor),
                borderRadius: BorderRadius.circular(inOutContainerRaduis),
                border: Border.all(
                  color: Color(outContainerShadow).withOpacity(0.09),
                  width: 3,
                )
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(
                vertical:ScreenUtil().setHeight(5),
                horizontal: ScreenUtil().setWidth(5),
              ),
              child: GestureDetector(
                child: Container(
                  width: ScreenUtil().setWidth(innerContainerWidth),
                  height: ScreenUtil().setHeight(innerContainerHeight),
                  decoration: BoxDecoration(
                      color:  Color.fromRGBO(128, 128, 128,0.3),

                      borderRadius: BorderRadius.circular(inOutContainerRaduis),
                      border: Border.all(
                        color: Color(innerContainerBorderColor),
                        width: 3,
                      )
                  ),
                  child:Padding(
                    padding:  EdgeInsets.symmetric(
                      vertical:ScreenUtil().setHeight(5),
                      horizontal: ScreenUtil().setWidth(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        pictureComponent(
                          picturePath: pictureContainerPath,
                          pictureWidth:ScreenUtil().setWidth(pictureContainerWidth),
                          pictureHeight:ScreenUtil().setHeight(pictureContainerHeight),
                        ),
                        textCompnent(
                            text: textContainer,
                            textSize: textContainerSize,
                            textAlign: textContainerAlign,
                            textColor: 0xffD50000,
                            textBold: textContainerBold,
                            textMaxLines: textContainerMaxLines
                        )
                      ],
                    ),
                  ),
                ),
                onTap: onTapContainer,
              ),
            ),

          ),
        ),
        SizedBox(
          width: ScreenUtil().setWidth(15),
        ),
        Expanded(
          child: Container(
            width: ScreenUtil().setWidth(outContainerWidth),
            height: ScreenUtil().setHeight(outContainerHeight),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(outContainerShadow).withOpacity(0.09),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
                color: Color(outContainerColor),
                borderRadius: BorderRadius.circular(inOutContainerRaduis),
                border: Border.all(
                  color: Color(outContainerShadow).withOpacity(0.09),
                  width: 3,
                )
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(
                vertical:ScreenUtil().setHeight(5),
                horizontal: ScreenUtil().setWidth(5),
              ),
              child: GestureDetector(
                child: Container(
                  width: ScreenUtil().setWidth(innerContainerWidth),
                  height: ScreenUtil().setHeight(innerContainerHeight),
                  decoration: BoxDecoration(
                      color:  Color.fromRGBO(128, 128, 128,0.3),
                      borderRadius: BorderRadius.circular(inOutContainerRaduis),
                      border: Border.all(
                        color: Color(innerContainerBorderColor),
                        width: 3,
                      )
                  ),
                  child:Padding(
                    padding:  EdgeInsets.symmetric(
                      vertical:ScreenUtil().setHeight(5),
                      horizontal: ScreenUtil().setWidth(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        pictureComponent(
                          picturePath: pictureContainerPath,
                          pictureWidth:ScreenUtil().setWidth(pictureContainerWidth),
                          pictureHeight:ScreenUtil().setHeight(pictureContainerHeight),
                        ),
                        textCompnent(
                            text: textContainer,
                            textSize: textContainerSize,
                            textAlign: textContainerAlign,
                            textColor: 0xffD50000,
                            textBold: textContainerBold,
                            textMaxLines: textContainerMaxLines
                        )
                      ],
                    ),
                  ),
                ),
                onTap: onTapContainer,
              ),
            ),

          ),
        ),
      ],
    );
}
// Subject Component End
//**************************************************************

