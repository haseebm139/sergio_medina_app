import 'package:flutter/material.dart';
import 'package:sergio_medina_app/utils.dart';

class CustomCardViewProfileScreen extends StatelessWidget {
  final Widget? selectOption;
  const CustomCardViewProfileScreen({super.key, this.selectOption});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,

      child: Container(

        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              // Use ClipRRect to clip the image and apply border radius
              ClipRRect(
                borderRadius: BorderRadius.circular(8

                ),
                child: Container(
                  height: 90,
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
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Barber',
                                      style: TextStyle(
                                          fontFamily: 'Proxima',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          color: BlackColor),
                                    ),

                                  ],
                                ),

                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: BlackColor,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '5.0 (22)',
                                  style: TextStyle(
                                      fontFamily: 'Proxima',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: BlackColor),
                                ),
                              ],
                            ),

                            SizedBox(height: 10,),

                            Row(
                              children: [

                                Text(
                                  '\$50',
                                  style: TextStyle(
                                      fontFamily: 'Proxima',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11,
                                      color: BlackColor),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),


                          ],
                        ),
                        Container(child: selectOption,)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
