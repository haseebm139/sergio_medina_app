import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sergio_medina_app/Widgets/custom_card_favourit_and_history_screen.dart';
import 'package:sergio_medina_app/utils.dart';

class BookingHistory extends StatefulWidget {
  const BookingHistory({super.key});

  @override
  State<BookingHistory> createState() => _BookingHistoryState();
}

class _BookingHistoryState extends State<BookingHistory> {
  void showswritereviewBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      // Set this to true to make the sheet full-screen
      builder: (context) {
        return DraggableScrollableSheet(

          initialChildSize: 0.7,
          // This value can be changed to adjust the initial height of the sheet.
          builder: (_, scrollController) {
            return Container(
              decoration: const BoxDecoration(borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
                color: Colors.white,
              ),

              child: Padding(
                padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Write a review', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: BlackColor),),
                          ],
                        ),


                        const SizedBox(height: 30,),
                        Row(
                          children: [
                            Text('Leave a Review', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: BlackColor),),
                          ],
                        ),
                        const SizedBox(height: 10,),

                        Row(children: [
                          Icon(Icons.star_border, color: MediumGrey, size: 35,),
                          Icon(Icons.star_border, color: MediumGrey, size: 35,),
                          Icon(Icons.star_border, color: MediumGrey, size: 35,),
                          Icon(Icons.star_border, color: MediumGrey, size: 35,),
                          Icon(Icons.star_border, color: MediumGrey, size: 35,),
                        ],),
                        const SizedBox(height: 30,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Share more about your experience', // Displaying the label for the TextField
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Proxima',
                                    fontSize: 14,
                                    color: BlackColor, // Assuming BlackColor is defined in your utils.dart
                                  ),
                                ),

                              ],
                            ),
                            const SizedBox(height: 10),
                            TextFormField(


                              maxLines: 4, // obscureText should work only for single line

                              obscureText: false, // Works only when maxLines is 1
                              style: TextStyle(
                                color: Grey,
                                fontFamily: 'Proxima',// Assuming Grey is defined in your utils.dart
                                fontSize: 16,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Write here...',

                                contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),

                                prefixIconColor: Grey, // Use the required hintText here
                                hintStyle: TextStyle(
                                  fontFamily: 'Proxima',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Grey, // Assuming Grey is defined in your utils.dart
                                ),

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
                        const SizedBox(height: 30),
                        Text(
                          'Add Picture',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400, color: BlackColor),
                        ),
                        const SizedBox(height: 20,),
                        // Dotted Border Container for 'Add Picture'
                        DottedBorder(
                          color: MediumGrey, // Border color
                          strokeWidth: .5, // Width of the dotted line
                          dashPattern: [6, 6], // Length of dashes and gaps
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(8), // Rounded corners
                          child: Container(
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white, // Inside color
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/uploadicon.png'),
                                  const SizedBox(height: 5,),
                                  Text('Click here to upload', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: BlackColor),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Container(
                                  height: 50,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: MediumGrey)),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: MediumGrey),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: GreenColor),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 10, bottom: 10),
                                    child: Text(
                                      'Submit',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: WhiteColor),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OffwhiteColor,
      appBar: AppBar(
        backgroundColor: WhiteColor,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Image.asset('assets/backarrow.png')),
        title: Text(
          'Booking History',
          style: TextStyle(
              fontFamily: 'Proxima',
              fontWeight: FontWeight.w600, fontSize: 18, color: BlackColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            CustomCardFavouritAndHistoryScreen(
              w1: Text(
                '\$100',
                style: TextStyle(
                    fontFamily: 'Proxima',
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: BlackColor),
              ),
              w2: Container(
                height: 18,
                width: 70,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: YellowColor),
                child: Center(
                  child: Text(
                    'In Progress',
                    style: TextStyle(
                        fontFamily: 'Proxima',
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                        color: WhiteColor),
                  ),
                ),
              ),
              text1: '',
              text2: 'Order Date:-  12 Aug 2024', widget: Row(
              children: [

                Text(
                  '@taperbysergio',
                  style: TextStyle(
                      fontFamily: 'Proxima',
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: BlackColor),
                ),
              ],
            ),),


            const SizedBox(height: 10,),
            CustomCardFavouritAndHistoryScreen(
              w1: Text(
                '\$100',
                style: TextStyle(
                    fontFamily: 'Proxima',
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: BlackColor),
              ),
              w2: InkWell(
                onTap: (){
                  showswritereviewBottomSheet(context);
                },
                child: Container(
                  height: 28,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(color: GreenColor),
                      borderRadius: BorderRadius.circular(4), color: Colors.white),
                  child: Center(
                    child: Text(
                      'Write a review',
                      style: TextStyle(
                          fontFamily: 'Proxima',
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          color: GreenColor),
                    ),
                  ),
                ),
              ),
              text1: '',
              text2: 'Order Date:-  12 Aug 2024', widget: Row(
              children: [

                Text(
                  '@taperbysergio',
                  style: TextStyle(
                      fontFamily: 'Proxima',
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: BlackColor),
                ),
              ],
            ),),
            const SizedBox(height: 10,),
            CustomCardFavouritAndHistoryScreen(
              w1: Text(
                '\$100',
                style: TextStyle(
                    fontFamily: 'Proxima',
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: BlackColor),
              ),
              w2: Container(
                height: 18,
                width: 70,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: const Color(0xff34C759)),
                child: Center(
                  child: Text(
                    'Completed',
                    style: TextStyle(
                        fontFamily: 'Proxima',
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                        color: WhiteColor),
                  ),
                ),
              ),
              text1: '',
              text2: 'Order Date:-  12 Aug 2024', widget: Row(
              children: [

                Text(
                  '@taperbysergio',
                  style: TextStyle(
                      fontFamily: 'Proxima',
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: BlackColor),
                ),
              ],
            ),),
          ],),
      ),
    );
  }
}
