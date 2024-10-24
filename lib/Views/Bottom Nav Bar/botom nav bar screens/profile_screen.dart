import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sergio_medina_app/Views/Bottom%20Nav%20Bar/botom%20nav%20bar%20screens/profile_screens/SettingandPreference.dart';
import 'package:sergio_medina_app/Views/Bottom%20Nav%20Bar/botom%20nav%20bar%20screens/profile_screens/booking_history.dart';
import 'package:sergio_medina_app/Widgets/custom_row_for_setting.dart';
import 'package:sergio_medina_app/Widgets/custom_textfied.dart';
import 'package:sergio_medina_app/utils.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen(
      );

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void showsEditProfileBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.75, // Initial height of the modal
          builder: (_, scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                // Add padding to ensure it doesn't get hidden behind the keyboard
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: SingleChildScrollView(
                  controller: scrollController, // Controller to make it scrollable
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),
                      Text(
                        'Edit Profile',
                        style: TextStyle(
                          fontFamily: 'Proxima',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: BlackColor,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: Stack(
                          children: [
                            const CircleAvatar(
                              radius: 50,
                              backgroundImage:
                              AssetImage('assets/profilepic.png'),
                            ),
                            Positioned(
                              bottom: 10,
                              right: -5,
                              child: Card(
                                elevation: 2,
                                child: Container(
                                  width: 25,
                                  height: 25,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: IconButton(
                                    icon: Image.asset('assets/edit.png'),
                                    onPressed: () {
                                      // Handle edit action
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        Asterik: ' *',
                        text: 'Name',
                        hintText: 'Zaire Donin',
                      ),
                      const SizedBox(height: 10),
                      CustomTextField(
                        Asterik: ' *',
                        text: 'Email',
                        hintText: 'zairedonin@gmail.com',
                      ),
                      const SizedBox(height: 15),
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Row(
                            children: [
                              Text(
                                'Phone Number',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Proxima',
                                  fontSize: 14,
                                  color: BlackColor,
                                ),
                              ),
                              Text(
                                ' *',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Proxima',
                                  fontSize: 14,
                                  color: RedColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: IntlPhoneField(
                          disableLengthCheck: true,
                          decoration: InputDecoration(
                            hintText: '8585858585',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: InputfiedlBorderColor,
                                width: 1,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: InputfiedlBorderColor,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: InputfiedlBorderColor,
                                width: 1,
                              ),
                            ),
                          ),
                          initialCountryCode: 'US',
                          onChanged: (phone) {
                            // Handle phone number change
                          },
                        ),
                      ),
                      CustomTextField(
                        Asterik: ' *',
                        text: 'Bio',
                        hintText: 'Lorem Ipsum Lorem IpsumLorem Ipsum',
                        maxline: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: MediumGrey),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Cancel',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: MediumGrey,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: GreenColor,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Update',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: WhiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 45,),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage('assets/profilepic.png'), // Add your image
                    ),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Text(
                          'Zaire Donin',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
          
                        // Location with icon
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
                              'New York, USA',
                              style: TextStyle(
                                fontFamily: 'Proxima',
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                      ],
                    )
                  ],
                ),
              ),
              // Space for the profile image
          
              // Profile details
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
          
          
                    Text(
                      'Account Overview',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: BlackColor,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8), border: Border.all(color: InputfiedlBorderColor)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {

                            },
                            child: const Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: CustomRowForSetting(
                                image: 'assets/client.png',
                                text: 'Clients'
                              ),
                            ),
                          ),
                          Divider(color: OffwhiteColor, thickness: 2),
                          InkWell(
                            onTap: () {
                              showsEditProfileBottomSheet(context);
                            },
                            child: const CustomRowForSetting(
                              image: 'assets/edit.png',
                              text: 'Edit Profile',
                            ),
                          ),
                          Divider(color: OffwhiteColor, thickness: 2),
                          InkWell(
                            onTap: () {
                              Get.to(() => const BookingHistory());
                            },
                            child: const CustomRowForSetting(
                              image: 'assets/booking.png',
                              text: 'Booking History',
                            ),
                          ),
                          Divider(
                            color: OffwhiteColor,
                            thickness: 2,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => const Settingandpreference());
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: CustomRowForSetting(
                                image: 'assets/settingactive.png',
                                text: 'Settings and Preferences',
                              ),
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
