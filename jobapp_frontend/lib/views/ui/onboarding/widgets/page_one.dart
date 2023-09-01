import 'package:flutter/material.dart';
import 'package:jobapp_frontend/views/common/exports.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Container(
      child: Center(child: ReusableText(text: "first Page", style: appstyle(14, kLightBlue, FontWeight.w600),),
    ),)));
  }
}