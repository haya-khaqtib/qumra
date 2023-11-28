
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared_package/components/components.dart';

class FilesScreen extends StatefulWidget {
  const FilesScreen({super.key});

  @override
  State<FilesScreen> createState() => _FilesScreenState();
}

class _FilesScreenState extends State<FilesScreen> {
  List<String> containerText=[
    'الملف 1','الملف 1','الملف 1','الملف 1','الملف 1',
    'الملف 1','الملف 1','الملف 1','الملف 1','الملف 1',
    'الملف 1','الملف 1','الملف 1','الملف 1','الملف 1',
    'الملف 1','الملف 1','الملف 1','الملف 1','الملف 1',
    'الملف 1','الملف 1','الملف 1','الملف 1','الملف 1',
    'الملف 1','الملف 1','الملف 1','الملف 1','الملف 1'
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
            itemBuilder:(context, index) => elementComponent(
              elementContainerIcon: Icons.file_download_outlined,
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
