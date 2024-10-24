import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sergio_medina_app/utils.dart'; // Assuming you have color definitions here

class CustomTextField extends StatelessWidget {
  final bool obscureText;
  final String text;
  final String? Asterik; // Required label for the TextField
  final String hintText;
  final int? maxline; // Optional max lines for the TextField
  IconButton? iconButton;
  Widget? prefix;
  var controller;
  var onChange;
  var validator;

  // Constructor with required text and hintText
  CustomTextField({
    super.key,
    required this.text, // Required field for the text label
    required this.hintText, // Required field for the hint text
    this.obscureText = false,
    this.iconButton,
    this.prefix,
    this.controller,
    this.onChange,
    this.validator,
    this.maxline,
    this.Asterik,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                text, // Displaying the label for the TextField
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Proxima',
                  fontSize: 14,
                  color: BlackColor, // Assuming BlackColor is defined in your utils.dart
                ),
              ),
              Text(
                '$Asterik', // Displaying the label for the TextField
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Proxima',
                  fontSize: 14,
                  color: RedColor, // Assuming BlackColor is defined in your utils.dart
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          TextFormField(

            controller: controller,
            validator: validator,
            onChanged: onChange,
            maxLines: obscureText ? 1 : maxline ?? 1, // obscureText should work only for single line

            obscureText: obscureText, // Works only when maxLines is 1
            style: TextStyle(
              color: Grey,
              fontFamily: 'Proxima',// Assuming Grey is defined in your utils.dart
              fontSize: 16,
            ),
            decoration: InputDecoration(

              contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              prefixIcon: prefix,
              prefixIconColor: Grey,
              hintText: hintText, // Use the required hintText here
              hintStyle: TextStyle(
                fontFamily: 'Proxima',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Grey, // Assuming Grey is defined in your utils.dart
              ),
              suffixIcon: iconButton,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: InputfiedlBorderColor, width: 1), // Assuming InputfiedlBorderColor is defined in your utils.dart
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: InputfiedlBorderColor, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: InputfiedlBorderColor, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
