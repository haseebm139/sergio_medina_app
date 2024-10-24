import 'package:flutter/material.dart';
import 'package:sergio_medina_app/utils.dart';

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Image.asset('assets/onboardingone.png'),
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              'Easy Booking',
              style: TextStyle(
                fontFamily: 'Proxima',
                  fontWeight: FontWeight.w600, fontSize: 28, color: BlackColor),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Experience hassle-free booking with Appointly',
              style: TextStyle(
                  fontFamily: 'Proxima',
                  fontWeight: FontWeight.w400, fontSize: 14, color: BlackColor),
            )
          ],
        ),
      ),
    );
  }
}
