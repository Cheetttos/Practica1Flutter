import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica1flutter/pages/charge_screen.dart';
import 'package:practica1flutter/pages/onboarding_screen.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      title: "MotosRapidisimas",
      theme: ThemeData.dark(),
      home: const LoginScreen(),
      routes: {
        "/home" :(BuildContext context) => const HomeProducts(),
        "/onboard" :(BuildContext context) => const OnBoardingScreen(),
        "/charge" :(BuildContext context) => const chargeScreen(),

      },
      debugShowCheckedModeBanner: false,
    );
  }
}