
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared_package/components/components.dart';

class LessonsScreen extends StatefulWidget {
  const LessonsScreen({super.key});

  @override
  State<LessonsScreen> createState() => _LessonsScreenState();
}

class _LessonsScreenState extends State<LessonsScreen> {
  List<String> containerText=[
    '1العربي','العربي2','3العربي','4العربي','العربي5',
    '1العربي','العربي2','3العربي','4العربي','العربي5',
    '1العربي','العربي2','3العربي','4العربي','العربي5',
    '1العربي','العربي2','3العربي','4العربي','العربي5',
    '1العربي','العربي2','3العربي','4العربي','العربي5',
    '1العربي','العربي2','3العربي','4العربي','العربي5'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(25),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder:
                      (context, index) => elementComponent(
                        elementContainerIcon: Icons.play_circle_outline_outlined,
                        elementContainerPicturePath: 'assets/images/login.png',
                        elementContainerText: containerText[index],
                        elementTextMaxLines: 1
                      ),
                  separatorBuilder: (context, index) => SizedBox(height: ScreenUtil().setHeight(15),),
                  itemCount: 25
              ),
            ),
      ],
    );

  }
}
