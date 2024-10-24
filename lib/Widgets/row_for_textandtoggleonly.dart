import 'package:flutter/material.dart';
import 'package:sergio_medina_app/utils.dart';

class Rowfortextandtogleonly extends StatefulWidget {
  final String title;
  final bool initialToggleValue;

  const Rowfortextandtogleonly({
    Key? key,
    required this.title,
    this.initialToggleValue = false,
  }) : super(key: key);

  @override
  _RowfortextandtogleonlyState createState() =>
      _RowfortextandtogleonlyState();
}

class _RowfortextandtogleonlyState extends State<Rowfortextandtogleonly> {
  bool isToggled = false;

  @override
  void initState() {
    super.initState();
    isToggled = widget.initialToggleValue;
  }

  void _toggleSwitch(bool value) {
    setState(() {
      isToggled = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontFamily: 'Proxima',
              fontWeight: FontWeight.w400,
              color: BlackColor,
              fontSize: 14,
            ),
          ),
          Transform.scale(
            scale: .8, // Adjust the scale as per your requirement
            child: Switch(
              value: isToggled,
              onChanged: _toggleSwitch,
              activeColor: Colors.white,
              splashRadius: 10,
              activeTrackColor: GreenColor, // Dark green when active
              inactiveThumbColor: WhiteColor, // Grey when inactive
              inactiveTrackColor: MediumGrey, // Light grey track when inactive
            ),
          ),
        ],
      ),
    );
  }
}
