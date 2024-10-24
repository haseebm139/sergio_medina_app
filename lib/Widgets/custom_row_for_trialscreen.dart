import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRowForTrialscreen extends StatelessWidget {
  final String boldText;
  final String normalText;

  const CustomRowForTrialscreen({
    Key? key,
    required this.boldText,
    required this.normalText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset('assets/arrowsmal.png'),
        const SizedBox(width: 4),
        Expanded( // Allows the text to take up available space and wrap to the next line
          child: RichText(
            softWrap: true,  // Ensures text wraps to the next line
            text: TextSpan(
              children: [
                TextSpan(
                  text: boldText,
                  style: const TextStyle(
                    fontFamily: 'Proxima',
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Color(0xff545454), // Adjust the color based on your theme
                  ),
                ),
                TextSpan(
                  text: normalText,
                  style: const TextStyle(
                    fontFamily: 'Proxima',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xff545454), // Adjust the color based on your theme
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

