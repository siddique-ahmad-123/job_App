import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobapp_frontend/constants/app_constants.dart';
import 'package:jobapp_frontend/views/common/exports.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.text, required this.child, this.actions});
  final String? text;
  final Widget child;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
       iconTheme: const IconThemeData(),
       backgroundColor: Color(kLight.value),
       elevation: 0.0,
       automaticallyImplyLeading: false,
       leadingWidth: 70.w,
       leading: child,
       actions: [],
       centerTitle: true,
       title: ReusableText(text: text??"", style: appstyle(16, Color(kDark.value), FontWeight.w600)),

    );
  }
}