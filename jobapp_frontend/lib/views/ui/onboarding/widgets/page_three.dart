import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobapp_frontend/constants/app_constants.dart';
import 'package:jobapp_frontend/views/common/app_style.dart';
import 'package:jobapp_frontend/views/common/custom_outline_btn.dart';
import 'package:jobapp_frontend/views/common/height_spacer.dart';
import 'package:jobapp_frontend/views/common/reusable_text.dart';
import 'package:jobapp_frontend/views/ui/auth/login.dart';
import 'package:jobapp_frontend/views/ui/auth/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width,
        height: hieght,
        color: Color(kLightPurple.value),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/images/page3.png"),
             HeightSpacer(size: 20),
            ReusableText(text: "welcom to JobHub", style: appstyle(30, Color(kLight.value), FontWeight.w600)),
             HeightSpacer(size: 15),
            Padding(
              padding: EdgeInsets.symmetric(
              horizontal: 30.w
            ),
            child: Text("we help You to find out your dream job to your skillset ,location and preference to build your career",
            textAlign: TextAlign.center,
            style: appstyle(14, Color(kLight.value), FontWeight.normal),
            ),
            ),
             HeightSpacer(size: 50),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                CustomOutlineBtn(
                  onTap: () async{
                    final SharedPreferences prefs = await SharedPreferences.getInstance();

                    await prefs.setBool('entrypoint', true);

                    Get.to(()=> const LoginPage());
                  },
                  text: "Login",
                  width: width*0.4,
                  height: hieght*0.06,
                  color: Color(kLight.value),
                ),

                GestureDetector(
                  onTap: () {
                    Get.to(() => RegistrationPage());
                  },
                  child: Container(
                  width: width*0.4,
                  height: hieght*0.06,
                  color: Color(kLight.value),
                  child: Center(child: ReusableText(text: "Sign Up", style: appstyle(16, Color(kLightBlue.value), FontWeight.w600))),
                  ),
                )
              ],
             ),

             HeightSpacer(size: 30),

             ReusableText(text: "Continue as guest", style: appstyle(16, Color(kLight.value), FontWeight.w600))
            
          ],
        ),
      ),
    );
  }
}