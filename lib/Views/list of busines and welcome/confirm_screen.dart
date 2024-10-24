import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sergio_medina_app/Views/Bottom%20Nav%20Bar/bottom_nav_bar_screen.dart';
import 'package:sergio_medina_app/Widgets/row_for_confirm_screen.dart';
import 'package:sergio_medina_app/utils.dart';

class ConfirmScreen extends StatefulWidget {
  const ConfirmScreen({super.key});

  @override
  State<ConfirmScreen> createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: WhiteColor,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Image.asset('assets/crossicon.png')),
        title: Text(
          ' Confirmed ',
          style: TextStyle(
              fontFamily: 'Proxima',
              fontWeight: FontWeight.w600, fontSize: 18, color: BlackColor),
        ),
      ),
      backgroundColor: OffwhiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                // Container(
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(8),
                //       color: Colors.white,
                //       border: Border.all(color: MediumGrey, width: 1)),
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text(
                //           'Why Download Appointly?',
                //           style: TextStyle(
                //               fontFamily: 'Proxima',
                //               fontWeight: FontWeight.w600,
                //               fontSize: 14,
                //               color: BlackColor),
                //         ),
                //         SizedBox(
                //           height: 20,
                //         ),
                //         CustomRowForTrialscreen(
                //             boldText: 'Convenience:',
                //             normalText:
                //                 'Schedule appointments at your preferred time, with 24/7 access.'),
                //         SizedBox(
                //           height: 20,
                //         ),
                //         CustomRowForTrialscreen(
                //             boldText: 'Time-saving: ',
                //             normalText:
                //                 '  Instantly book appointments without the need for back-and-forth communication.'),
                //         SizedBox(
                //           height: 20,
                //         ),
                //         CustomRowForTrialscreen(
                //             boldText: 'Real Time Updates: ',
                //             normalText:
                //                 'instant notifications about appointment changes and confirmations.'),
                //         SizedBox(
                //           height: 20,
                //         ),
                //         CustomRowForTrialscreen(
                //             boldText: 'Seamless Payment: ',
                //             normalText:
                //                 ' In-app payment options to avoid handling cash if needed.'),
                //         SizedBox(
                //           height: 20,
                //         ),
                //         CustomRowForTrialscreen(
                //             boldText: 'Personalized Messaging: ',
                //             normalText:
                //                 'Quickly send personalized messages or updates to clients, improving customer relationships'),
                //         SizedBox(
                //           height: 20,
                //         ),
                //         CustomRowForTrialscreen(
                //             boldText: 'Transparency & Reviews:',
                //             normalText:
                //                 'Make informed decisions using reviews and ratings from other clients'),
                //       ],
                //     ),
                //   ),
                // ),
                // SizedBox(height: 10,),
                Text(
                  'Summary ',
                  style: TextStyle(
                      fontFamily: 'Proxima',
                      fontWeight: FontWeight.w600, fontSize: 14, color: BlackColor),
                ),
                const SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                  color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        RowForConfirmScreen(
                          first: Text(
                            'Service',
                            style: TextStyle(
                                fontFamily: 'Proxima',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: BlackColor),
                          ),
                          second: Text(
                            'Car Service',
                            style: TextStyle(
                                fontFamily: 'Proxima',
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: BlackColor),
                          ),
                        ),
                        RowForConfirmScreen(
                          first: Text(
                            'Date',
                            style: TextStyle(
                                fontFamily: 'Proxima',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: BlackColor),
                          ),
                          second: Text(
                            '20 August 2024',
                            style: TextStyle(
                                fontFamily: 'Proxima',
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: BlackColor),
                          ),
                        ),
                        RowForConfirmScreen(
                          first: Text(
                            'Time',
                            style: TextStyle(
                                fontFamily: 'Proxima',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: BlackColor),
                          ),
                          second: Text(
                            '10:00 AM',
                            style: TextStyle(
                                fontFamily: 'Proxima',
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: BlackColor),
                          ),
                        ),
                        RowForConfirmScreen(
                          first: Text(
                            'Price',
                            style: TextStyle(
                                fontFamily: 'Proxima',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: BlackColor),
                          ),
                          second: Text(
                            '\$50',
                            style: TextStyle(
                                fontFamily: 'Proxima',
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: BlackColor),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  'Add to Calendar',
                  style: TextStyle(
                      fontFamily: 'Proxima',
                      fontWeight: FontWeight.w600, fontSize: 14, color: BlackColor),
                ),
                const SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        RowForConfirmScreen(
                          first: Row(
                            children: [
                              Image.asset('assets/Google.png'),
                              const SizedBox(width: 10,),
                              Text(
                                'Google',
                                style: TextStyle(
                                    fontFamily: 'Proxima',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: BlackColor),
                              ),
                            ],
                          ),
                          second: Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: GreenColor)),
                            child: Center(
                              child: Text(
                                'Add',
                                style: TextStyle(
                                    fontFamily: 'Proxima',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: GreenColor),
                              ),
                            ),
                          ),
                        ),
                        RowForConfirmScreen(
                          first: Row(
                            children: [
                              Image.asset('assets/Apple.png'),
                              const SizedBox(width: 10,),
                              Text(
                                'Apple',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: BlackColor),
                              ),
                            ],
                          ),
                          second: Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: GreenColor)),
                            child: Center(
                              child: Text(
                                'Add',
                                style: TextStyle(
                                    fontFamily: 'Proxima',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: GreenColor),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),


              ],
            ),
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
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: WhiteColor)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10),
                          child: Text(
                            'View Booking',
                            style: TextStyle(
                                fontFamily: 'Proxima',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: GreenColor),
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
                  child: InkWell(
                    onTap: (){
                      Get.to(()=> const BottomNavBar());
                    },
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
                            'Go to Home',
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Proxima',
                                fontWeight: FontWeight.w600,
                                color: WhiteColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
