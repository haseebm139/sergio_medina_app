import 'package:flutter/material.dart';
import 'package:sergio_medina_app/utils.dart';

class UserGuideWidgetHelpscreen extends StatelessWidget {
  final String text;
  final String text2;
  final String? text3;

  const UserGuideWidgetHelpscreen({
    super.key,
    required this.text,
    required this.text2,
    this.text3
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Main title text
          Text(
            text,
            style: TextStyle(
                fontFamily: 'Proxima',
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Grey
            ),
          ),
          SizedBox(height: 5),

          // First bullet point with text2
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('•'),
                SizedBox(width: 3),
                Expanded(
                  child: Text(
                    text2,
                    style: TextStyle(
                        fontFamily: 'Proxima',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Grey
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),

          // Conditionally rendering the row for text3
          if (text3 != null && text3!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('•'),
                  SizedBox(width: 3),
                  Expanded(
                    child: Text(
                      text3!,
                      style: TextStyle(
                          fontFamily: 'Proxima',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Grey
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
