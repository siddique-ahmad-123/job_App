import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobapp_frontend/constants/app_constants.dart';
import 'package:jobapp_frontend/views/common/app_bar.dart';
import 'package:jobapp_frontend/views/common/app_style.dart';
import 'package:jobapp_frontend/views/common/drawer/drawer_widget.dart';
import 'package:jobapp_frontend/views/common/height_spacer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(50.h),
       child: CustomAppBar(
        actions: [
          Padding(
            padding: EdgeInsets.all(12.h),
            child: const CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
            )
        ],
        child: Padding(
          padding:  EdgeInsets.all(12.0.h),
          child: const DrawerWidget(),
        ),
        )
       ),

       body:  SafeArea(
        child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  HeightSpacer(size: 10),
                  Text("Search \nFind & Apply",style: appstyle(40, Color(kDark.value), FontWeight.bold),)
                ],
              ),
              ),
        ),
        ),
    );
  }
}