import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sergio_medina_app/utils.dart'; // Assuming this contains color definitions

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap; // Function for handling button tap

  const CustomButton({
    Key? key,
    required this.text, // Text to display on the button
    required this.onTap, // Function to be called when the button is tapped
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // Button tap event
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: GreenColor, // Use the color from utils.dart
        ),
        child: Center(
          child: Text(
            text, // Display the provided text
            style: TextStyle(
              fontFamily: 'Proxima',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: WhiteColor, // Use the color from utils.dart
            ),
          ),
        ),
      ),
    );
  }
}
