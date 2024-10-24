import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sergio_medina_app/Views/custom_calender.dart';
import 'package:sergio_medina_app/Views/list%20of%20busines%20and%20welcome/confirm_screen.dart';
import 'package:sergio_medina_app/Widgets/custom_card_view_profile_screen.dart';
import 'package:sergio_medina_app/utils.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  DateTime selectedDate = DateTime.now();
  String? selectedTime = '10:00 AM';
  int selectedSortIndex = 0;
  final List<String> sortOptions = [
    "10:00 AM",
    "11:00 AM",
    '12:30 PM',

  ];
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
          'Booking ',
          style: TextStyle(
              fontFamily: 'Proxima',
              fontWeight: FontWeight.w600, fontSize: 18, color: BlackColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text(
                    'Booked Service',
                    style: TextStyle(
                        fontFamily: 'Proxima',
                        fontWeight: FontWeight.w600, fontSize: 14, color: BlackColor),
                  ),
                  const SizedBox(height: 10,),
                  const CustomCardViewProfileScreen(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Booked Service Info
                      const SizedBox(height: 20),

                      // Select Date Section
                       Text("Select Date", style: TextStyle(
                          fontFamily: 'Proxima',
                          fontWeight: FontWeight.w600, fontSize: 14, color: BlackColor)),
                      const SizedBox(height: 10),
                      SizedBox(
                          width: double.infinity,
                          height: 350,
                          child: CalenderScreen()),
                      const SizedBox(height: 20),


                      Text("Select Time", style: TextStyle(fontFamily: 'Proxima',fontSize: 14, fontWeight: FontWeight.w600, color: BlackColor)),
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 8.0,
                        crossAxisAlignment: WrapCrossAlignment.end,

                        alignment: WrapAlignment.center,
                        children: List<Widget>.generate(sortOptions.length, (index) {
                          return ChoiceChip(

                            showCheckmark: false,
                            labelPadding: EdgeInsets.symmetric(horizontal: 10),
                            selectedColor: Colors.white,
                            backgroundColor: Colors.white, // Keep the background color white
                            label: Text(
                              sortOptions[index],
                              style: TextStyle(
                                color: selectedSortIndex == index ? GreenColor : Colors.black, // Green text when selected
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            selected: selectedSortIndex == index,
                            side: BorderSide(
                              color: selectedSortIndex == index ? Grey : Colors.black12, // Green border when selected
                              width: 1.0,
                            ),
                            onSelected: (bool selected) {
                              setState(() {
                                selectedSortIndex = selected ? index : 0;
                              });
                            },
                          );
                        }).toList(),
                      ),


                      const SizedBox(height: 10),
                      // Your Information Section
                       Text("Your Information", style: TextStyle(
                          fontFamily: 'Proxima',
                          fontWeight: FontWeight.w600, fontSize: 14, color: BlackColor)),




                      // Buttons

                    ],
                  ),

                ],

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 120,
                width: MediaQuery.sizeOf(context).width,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            'Name', // Displaying the label for the TextField
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Proxima',
                              fontSize: 12,
                              color: BlackColor, // Assuming BlackColor is defined in your utils.dart
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide.none),
                                enabled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8)),
                                hintText: 'Enter your name',
                                hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Grey),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            'Phone Number', // Displaying the label for the TextField
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Proxima',
                              fontSize: 12,
                              color: BlackColor, // Assuming BlackColor is defined in your utils.dart
                            ),
                          ),
                          const SizedBox(height: 10,),
                          IntlPhoneField(
                            disableLengthCheck: true,

                            decoration: InputDecoration(
                              fillColor: Colors.white,
                                filled: true,
                                hintText: '8585858585',
                                hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Grey),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: InputfiedlBorderColor, width: 1),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: InputfiedlBorderColor, width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: InputfiedlBorderColor, width: 1),
                                )),
                            initialCountryCode: 'US', // Default country code
                            onChanged: (phone) {
                              print(phone
                                  .completeNumber); // Returns complete phone number with country code
                            },
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
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
                            color: OffwhiteColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: InputfiedlBorderColor)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10),
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
                      child: InkWell(
                        onTap: (){
                          Get.to(()=> const ConfirmScreen());
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
                                'Confirm',
                                style: TextStyle(
                                    fontSize: 14,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}