import 'package:flutter/material.dart';
import 'package:kcal/screens/components/splash_screen.dart';
//import 'package:kcal/page/onboarding_page.dart';
//import 'package:introduction_screen/introduction_screen.dart';
import 'package:kcal/screens/components/components/routs.dart';
//import 'package:kcal/screens/components/splash_screen.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //static final String title = 'Onboarding Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'WorkSans',
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
