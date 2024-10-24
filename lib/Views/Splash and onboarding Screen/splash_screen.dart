import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sergio_medina_app/Views/Splash%20and%20onboarding%20Screen/onboarding%20screens/page_indicator_screen.dart';
import 'package:sergio_medina_app/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.offAll(()=> const PageIndicatorScreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColor,
      body: Center(
        child: Image.asset('assets/blacklogo.png'),
      ),
    );
  }}
