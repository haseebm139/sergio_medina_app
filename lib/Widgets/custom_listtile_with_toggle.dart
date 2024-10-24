// custom_list_tile_with_toggle.dart

import 'package:flutter/material.dart';
import 'package:sergio_medina_app/utils.dart';

class CustomListTileWithToggle extends StatefulWidget {
  final String title;
  final String subtitle;
  final bool initialToggleValue;

  const CustomListTileWithToggle({
    Key? key,
    required this.title,
    required this.subtitle,
    this.initialToggleValue = false,
  }) : super(key: key);

  @override
  _CustomListTileWithToggleState createState() =>
      _CustomListTileWithToggleState();
}

class _CustomListTileWithToggleState extends State<CustomListTileWithToggle> {
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
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                    fontFamily: 'Proxima',
                    fontWeight: FontWeight.w400, color: Grey, fontSize: 14),
              ),
              Transform.scale(
                scale: .8,
                child: Switch(
                  value: isToggled,
                  onChanged: _toggleSwitch,
                  activeColor: Colors.white,
                  splashRadius: 20,
                  activeTrackColor: GreenColor,
                  // Dark green when active
                  inactiveThumbColor: WhiteColor,
                  // Grey when inactive
                  inactiveTrackColor:
                      MediumGrey, // Light grey track when inactive
                ),
              ),
            ],
          ),
          Text(
            widget.subtitle,
            style: TextStyle(
                fontFamily: 'Proxima',
                fontWeight: FontWeight.w400, color: Grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
