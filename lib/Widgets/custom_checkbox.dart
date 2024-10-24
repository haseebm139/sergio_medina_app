import 'package:flutter/material.dart';
import 'package:sergio_medina_app/utils.dart';

class CustomCheckboxListTile extends StatefulWidget {
  final String title;

  const CustomCheckboxListTile({
    required this.title,
  });

  @override
  _CustomCheckboxListTileState createState() => _CustomCheckboxListTileState();
}

class _CustomCheckboxListTileState extends State<CustomCheckboxListTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value ?? false;
            });
          },
          checkColor: Colors.white,
          activeColor: GreenColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        Text(
          widget.title, // Corrected here
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: 'Proxima',
            fontSize: 12,
            color: Grey,
          ),
        ),
      ],
    );
  }
}
