import 'package:flutter/material.dart';

import '../utils.dart';

class CustomGoogleAppleButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final String firsttext;
  const CustomGoogleAppleButton({super.key, required this.onTap, required this.text, required this.firsttext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  width: double.infinity,

                  decoration: BoxDecoration(
                    color: WhiteColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: InputfiedlBorderColor,
                          width: 1
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/Google.png'),
                        SizedBox(width: 5,),
                        Text(
                          'Continue with Google',
                          style: TextStyle(
                              fontFamily: 'Proxima',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: BlackColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: Container(
                height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: WhiteColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: InputfiedlBorderColor,
                          width: 1
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/Apple.png'),
                        SizedBox(width: 5,),
                        Text(
                          'Continue with Apple',
                          style: TextStyle(
                              fontFamily: 'Proxima',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: BlackColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text(
              '$firsttext have an account?',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  fontFamily: 'Proxima',
                  color: BlackColor),
            ),
            TextButton(onPressed: onTap, child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  fontFamily: 'Proxima',
                  color: GreenColor),
            ),)

          ],),
          SizedBox(height: 10,)
        ],
      ),
    );

  }
}
