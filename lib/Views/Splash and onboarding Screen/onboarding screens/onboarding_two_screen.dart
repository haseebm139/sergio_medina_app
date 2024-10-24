import 'package:flutter/material.dart';

import '../../../utils.dart';

class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: WhiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Image.asset('assets/onboardingtwo.png'),
            ),
            const SizedBox(height: 60,),

            Text(
              'Calendar Sync',
              style: TextStyle(
                  fontFamily: 'Proxima',
                  fontWeight: FontWeight.w600, fontSize: 28, color: BlackColor),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Enable Calendar sync to make your life easier by\n keeping all of your upcoming appointments in one \nplace.',
              style: TextStyle(
                  fontFamily: 'Proxima',
                  fontWeight: FontWeight.w400, fontSize: 14, color: BlackColor),
              textAlign: TextAlign.center,
            )

          ],
        ),


      ),

    );
  }
}
