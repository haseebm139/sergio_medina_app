import 'package:flutter/material.dart';
import 'package:sergio_medina_app/utils.dart';

class CustomBusinesListCard extends StatefulWidget {
  const CustomBusinesListCard({super.key});

  @override
  State<CustomBusinesListCard> createState() => _CustomBusinesListCardState();
}

class _CustomBusinesListCardState extends State<CustomBusinesListCard> {
  @override
  Widget build(BuildContext context) {
    bool isExpanded = false;
    return Card(
      color: Colors.white,
      child: Container(

        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(

            children: [
              Row(
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '11201, USA',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10
                                        ,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                                          ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              'RooferGrains',
                              style: TextStyle(
                                  fontFamily: 'Proxima',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: BlackColor),
                            ),
                            SizedBox(height: 10,),

                            Row(
                              children: [
                                Text(
                                  'Starting from',
                                  style: TextStyle(
                                      fontFamily: 'Proxima',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: BlackColor),
                                ),
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
                      ),
                    ),
                  )
                ],
              ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a pageIt is a long established fact that a reader will be distracted by the readable content of a page',
                    maxLines: isExpanded ? null : 2, // Expands if true, limits to 2 lines if false
                    overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Proxima',
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Colors.black, // Replace with your BlackColor
                    ),
                  ),
                ),
                if (!isExpanded) // Show "More" button if text is not expanded
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isExpanded = !isExpanded; // Toggle expand state
                      });
                    },
                    child: Text(
                      'More',
                      style: TextStyle(
                        fontFamily: 'Proxima',
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                        color: Colors.blue, // Change to your preferred color
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Container(
            height: 30,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: GreenColor, // Replace with your GreenColor
            ),
            child: Center(
              child: Text(
                'View Profile',
                style: TextStyle(
                  fontFamily: 'Proxima',
                  fontWeight: FontWeight.w600,
                  fontSize: 10,
                  color: Colors.white, // Replace with your WhiteColor
                ),
              ),
            ),
          ),
        ],
      ),
            ],
          ),
        ),
      ),
    );
  }
}
