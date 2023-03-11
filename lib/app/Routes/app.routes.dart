import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shine/Presentation/Screen/splashScreen/splash.screen.dart';

class AppRouter{
  static const String splashRoute = "/splash";
  static const String onBoardRoute = "/onBoard";
  static const String DashBoard= "/DashBoard";

  static Route? generateRouter(RouteSettings settings){
    switch (settings.name){

      case splashRoute:
{
  return MaterialPageRoute(builder: (_)=> SplashScreen());
}

    }
    return null;


  }
}

