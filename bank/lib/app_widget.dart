import 'package:bank/home/home_page.dart';
import 'package:bank/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash',
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
