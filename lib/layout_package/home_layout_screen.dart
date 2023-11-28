import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../modules_package/files_screen.dart';
import '../modules_package/lessons_screen.dart';
import '../shared_package/components/components.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex=1;
  List<String>screenTitels=['الملفات','الدروس'];
  List<Widget> screenObject=[FilesScreen(),LessonsScreen()];
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF808080),
        title:Align(
          alignment: Alignment.centerRight,
          child: Text(
            screenTitels[currentIndex],
            style: TextStyle(
              color: Color(0xffffffff),
              fontSize: 24.sp,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
        leading: iconButtonComponent(
          iconButton: Icons.arrow_back_outlined,
          iconColor:0xffffffff,
          iconSize: 35,
          onPressedIcon: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: screenObject[currentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xffd50000),
        selectedLabelStyle: TextStyle(
          color: Color(0xffd50000),
          fontSize: 18.sp,
        ),
        unselectedItemColor:Color(0xB3808080),
        unselectedLabelStyle: TextStyle(
          color: Color(0xFF808080),
          fontSize: 18.sp,
        ),
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_copy,
              size: 30,
            ),
            label: 'الملفات',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_lesson,
              size: 30,
            ),
            label: 'الدروس',
          )
        ],
      ),
    );
  }
}
