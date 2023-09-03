import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobapp_frontend/constants/app_constants.dart';
import 'package:jobapp_frontend/controllers/exports.dart';
import 'package:jobapp_frontend/controllers/login_provider.dart';
import 'package:jobapp_frontend/views/common/app_bar.dart';
import 'package:jobapp_frontend/views/common/app_style.dart';
import 'package:jobapp_frontend/views/common/custom_btn.dart';
import 'package:jobapp_frontend/views/common/custom_textfield.dart';
import 'package:jobapp_frontend/views/common/reusable_text.dart';
import 'package:jobapp_frontend/views/ui/auth/login.dart';
import 'package:provider/provider.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
 
 final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }
 
  @override
  
  Widget build(BuildContext context) {
    
   return Consumer<SignUpNotifier>(
     
    builder: (context, signUpNotifier, child) { 

      return Scaffold (
      appBar: PreferredSize(preferredSize: Size.fromHeight(50),
      child: CustomAppBar(
        text: "SignUp",
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
              ReusableText(text: "Hello, Welcome !", style: appstyle(30, Color(kDark.value), FontWeight.w600)),
           
              ReusableText(text: "Fill the details to SignUp to your account.", style: appstyle(16, Color(kDarkGrey.value), FontWeight.w600)),
             
                const SizedBox(height: 50,),

                
                CustomTextField(
                  controller: name,
                  obscureText: signUpNotifier.obscureText,
                  keyboardType: TextInputType.text,
                  hintText: "Full Name",
                  validator: (name) {
                    if(name!.isEmpty){
                      return "Please enter your name";

                    }
                    else{
                      return null;
                    }
                  }, 
                ),

                const SizedBox(height: 20,),

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
                  obscureText: signUpNotifier.obscureText,
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
                      signUpNotifier.obscureText = ! signUpNotifier.obscureText;
                    },
                    child: Icon(
                      signUpNotifier.obscureText?
                      Icons.visibility : Icons.visibility_off,
                      color: Color(kDark.value),),
                  ),

                ),

                const SizedBox(height: 10,),

                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: (){
                      Get.to(()=>const LoginPage());
                    },
                    child: ReusableText(
                      text: "Login",
                       style: appstyle(14, Color(kDark.value), FontWeight.w500))),
                ),

                SizedBox(height: 50,),

                CustomButton(
                  onTap: () {},
                  text: "Sign Up",

                )


          ],
        ),
        ),
      ); 
            
     },
          
    );
  }
}