import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:jobapp_frontend/constants/app_constants.dart';
import 'package:jobapp_frontend/controllers/exports.dart';
import 'package:jobapp_frontend/views/common/app_bar.dart';
import 'package:jobapp_frontend/views/common/custom_btn.dart';
import 'package:jobapp_frontend/views/common/custom_textfield.dart';
import 'package:jobapp_frontend/views/common/exports.dart';
import 'package:jobapp_frontend/views/common/height_spacer.dart';
import 'package:jobapp_frontend/views/common/reusable_text.dart';
import 'package:jobapp_frontend/views/ui/auth/signup.dart';
import 'package:jobapp_frontend/views/ui/mainscreen.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    
   return Consumer<LoginNotifier>(
     
    builder: (context, loginNotifier, child) { 

      return Scaffold (
      appBar: PreferredSize(preferredSize: Size.fromHeight(50),
      child: CustomAppBar(
        text: "Login",
        child: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: Icon(CupertinoIcons.arrow_left),
        ),
      ),),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
             const SizedBox(height: 50,),
              ReusableText(text: "Welcome Back !!", style: appstyle(30, Color(kDark.value), FontWeight.w600)),
           
              ReusableText(text: "Fill the details to login to you account.", style: appstyle(16, Color(kDarkGrey.value), FontWeight.w600)),
             
                const SizedBox(height: 50,),

                CustomTextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  hintText: "Email",
                  validator: (email) {
                    if(email!.isEmpty || !email.contains("@")){
                      return "Please enter a valid email";

                    }
                    else{
                      return null;
                    }
                  }, 

                ),
                const SizedBox(height: 20,),

                
                CustomTextField(
                  controller: password,
                  obscureText: loginNotifier.obscureText,
                  keyboardType: TextInputType.text,
                  hintText: "Password",
                  validator: (Password) {
                    if(Password!.isEmpty || Password.length<7){
                      return "Please enter a valid password";

                    }
                    else{
                      return null;
                    }
                  }, 
                  suffixIcon: GestureDetector(
                    onTap: () {
                      loginNotifier.obscureText = ! loginNotifier.obscureText;
                    },
                    child: Icon(
                      loginNotifier.obscureText?
                      Icons.visibility : Icons.visibility_off,
                      color: Color(kDark.value),),
                  ),

                ),

                const SizedBox(height: 10,),

                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: (){
                      Get.to(()=>const RegistrationPage());
                    },
                    child: ReusableText(
                      text: "Register",
                       style: appstyle(14, Color(kDark.value), FontWeight.w500))),
                ),

                SizedBox(height: 50,),

                CustomButton(
                  onTap: () {
                    Get.to(()=> const MainScreen());
                  },
                  text: "Login",

                )


          ],
        ),
        ),
      ); 
            
     },
          
    );
  }

}