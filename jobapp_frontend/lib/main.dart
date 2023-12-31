import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobapp_frontend/controllers/bookmark_provider.dart';
import 'package:jobapp_frontend/controllers/image_provider.dart';
import 'package:jobapp_frontend/controllers/jobs_provider.dart';
import 'package:jobapp_frontend/controllers/login_provider.dart';
import 'package:jobapp_frontend/controllers/onboarding_provider.dart';
import 'package:jobapp_frontend/controllers/profile_provider.dart';
import 'package:jobapp_frontend/controllers/signup_provider.dart';
import 'package:jobapp_frontend/controllers/zoom_provider.dart';
import 'package:jobapp_frontend/views/ui/onboarding/onboarding_screen.dart';
import 'package:jobapp_frontend/views/ui/onboarding/widgets/page_three.dart';
import 'package:provider/provider.dart';

import 'views/common/exports.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => OnBoardNotifier()),
    ChangeNotifierProvider(create: (context) => LoginNotifier()),
    ChangeNotifierProvider(create: (context) => ZoomNotifier()),
    ChangeNotifierProvider(create: (context) => SignUpNotifier()),
    ChangeNotifierProvider(create: (context) => JobsNotifier()),
    ChangeNotifierProvider(create: (context) => BookMarkNotifier()),
    ChangeNotifierProvider(create: (context) => ImageUpoader()),
    ChangeNotifierProvider(create: (context) => ProfileNotifier()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,  
            title: 'Stick JobHub',
            theme: ThemeData(
              scaffoldBackgroundColor: Color(kLight.value),
              iconTheme: IconThemeData(color: Color(kDark.value)),
              primarySwatch: Colors.grey,
            ),
            home: const OnBoardingScreen(),
          );
        });
  }
}
