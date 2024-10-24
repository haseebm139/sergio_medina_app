import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sergio_medina_app/Views/Bottom%20Nav%20Bar/botom%20nav%20bar%20screens/home_screen.dart';
import 'package:sergio_medina_app/Views/Bottom%20Nav%20Bar/bottom_nav_bar_screen.dart';
import 'package:sergio_medina_app/Views/Splash%20and%20onboarding%20Screen/splash_screen.dart';
import 'package:sergio_medina_app/Views/list%20of%20busines%20and%20welcome/filter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sergio Medina',
      debugShowCheckedModeBanner: false,

      home: SplashScreen()
    );
  }
}
