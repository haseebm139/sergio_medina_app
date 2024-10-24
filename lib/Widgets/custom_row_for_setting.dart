import 'package:flutter/cupertino.dart';
import 'package:sergio_medina_app/utils.dart';

class CustomRowForSetting extends StatelessWidget {
  final String image;
  final String text;

  const CustomRowForSetting(
      {super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(image),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(
                fontFamily: 'Proxima',
                fontSize: 14, fontWeight: FontWeight.w400, color: Grey),
          )
        ],
      ),
    );
  }
}
