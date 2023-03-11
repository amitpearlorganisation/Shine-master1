import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shine/app/Routes/app.routes.dart';
import 'package:shine/utility/appPreferences.dart';


import 'Screens/loginPage/login.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await AppPreferences.init();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('de', 'DE')],
        path: 'assets/resources', // <-- change the path of the translation files
        fallbackLocale: Locale('de', 'DE'),
        child: MyApp()
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRouter,
      initialRoute: AppRouter.splashRoute,
      title: 'Shine',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login()
    );
  }


}

