import 'package:flutter/material.dart';
import 'package:jobapp_frontend/constants/app_constants.dart';
import 'package:jobapp_frontend/views/common/app_style.dart';
import 'package:jobapp_frontend/views/common/reusable_text.dart';



class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ReusableText(text: "OnBoardingScreen", style: appstyle(30, Color(kOrange.value), FontWeight.bold),),
      ),
    );
  }
}