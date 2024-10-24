import 'package:flutter/material.dart';
import 'package:sergio_medina_app/utils.dart';

class CustomCardFavouritAndHistoryScreen extends StatelessWidget {
  final Widget w1;
  final Widget w2;
  final Widget widget;
  final String text1;
  final String text2;
  const CustomCardFavouritAndHistoryScreen(
      {super.key,
        required this.w1,
        required this.w2,
        required this.text1,
        required this.text2, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        height: 85,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            // Use ClipRRect to clip the image and apply border radius
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              child: Container(
                height: double.infinity,
                child: Image.asset(
                  'assets/cardimage.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             widget,

                            ],
                          ),
                          Text(
                            'RooferGrains',
                            style: TextStyle(
                                fontFamily: 'Proxima',
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: BlackColor),
                          ),

                          Text(
                            text1,
                            style: TextStyle(
                                fontFamily: 'Proxima',
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: BlackColor),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  text2,
                                  style: TextStyle(
                                      fontFamily: 'Proxima',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: BlackColor),
                                ),

                              ])
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          w1,
                          w2,
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
