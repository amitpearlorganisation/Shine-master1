import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shine/app/Constant/app.color.dart';
import 'package:shine/utility/appPreferences.dart';

import '../onBoardingScreen/onboarding.screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {


    super.initState();


  }
  @override
  Widget build(BuildContext context) {

    switch(AppPreferences.getLangData()) {
      case 'English':
        {
          print("Error here");
          context.locale = Locale('en', 'US');

        }
        break;
      case 'French' :
        {
          context.locale= Locale('de', 'DE');

        }
        break;
    }

    return AnimatedSplashScreen(
      duration: 3500,
        backgroundColor: AppColor.primreyColor,
        splash: const Image(
          image: AssetImage(
            "assets/images/blanc.png",
          ),
        ),
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: const OnBoardingScreen());
  }
}
