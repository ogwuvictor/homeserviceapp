import 'package:flutter/material.dart';
import 'package:homeserviceapp/screens/onboardingscreen.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // color: Color(0xFF165069),
     debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
      //FlutterSplashScreen.gif(
    //       gifPath: 'assets/images/cleaningsupplies.png',
    //       gifWidth: 269,
    //       gifHeight: 474,
    //       backgroundColor: Color(0xFF165069),
    //       defaultNextScreen:  OnBoardingScreen(),
    //       duration: const Duration(milliseconds: 3515),
    //       onInit: () async {
    //         debugPrint("onInit 1");
    //         await Future.delayed(const Duration(milliseconds: 2000));
    //         debugPrint("onInit 2");
    //       },
    //       onEnd: () async {
    //         debugPrint("onEnd 1");
    //         debugPrint("onEnd 2");
    //       },
    //     ),
    );
  }
}
