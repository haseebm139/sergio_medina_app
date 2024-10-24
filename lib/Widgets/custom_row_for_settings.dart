import 'package:flutter/cupertino.dart';
import 'package:sergio_medina_app/utils.dart';

class CustomRowForSettings extends StatelessWidget {
  final String firsttext;
  final String secondtext;
  const CustomRowForSettings({super.key, required this.firsttext, required this.secondtext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(firsttext, style: TextStyle( fontWeight: FontWeight.w400, fontSize: 14, color: Grey,fontFamily: 'Proxima', ),),
          Text(secondtext, style: TextStyle( fontWeight: FontWeight.w400, fontSize: 14, color: GreenColor ,fontFamily: 'Proxima',),),

        ],
      ),
    );
  }
}
