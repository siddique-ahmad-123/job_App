import 'package:flutter/material.dart';
import 'package:jobapp_frontend/constants/app_constants.dart';
import 'package:jobapp_frontend/views/common/app_style.dart';
import 'package:jobapp_frontend/views/common/reusable_text.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Container(
      child: Center(child: ReusableText(text: "2nd Page", style: appstyle(14, kLightBlue, FontWeight.w600),),
    ),)));
  
  }
}