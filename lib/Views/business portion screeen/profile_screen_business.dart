import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sergio_medina_app/Views/Bottom%20Nav%20Bar/botom%20nav%20bar%20screens/profile_screens/SettingandPreference.dart';
import 'package:sergio_medina_app/Widgets/custom_row_for_setting.dart';
import 'package:sergio_medina_app/Widgets/custom_textfied.dart';
import 'package:sergio_medina_app/utils.dart';

class ProfileScreenBusiness extends StatefulWidget {
  const ProfileScreenBusiness({super.key});

  @override
  State<ProfileScreenBusiness> createState() => _ProfileScreenBusinessState();
}

class _ProfileScreenBusinessState extends State<ProfileScreenBusiness> {
  void showsEditProfileBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      // Set this to true to make the sheet full-screen
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.75,
          // This value can be changed to adjust the initial height of the sheet.
          builder: (_, scrollController) {
            return Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding:  EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom,),
                  child: SingleChildScrollView(
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
                              color: BlackColor),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Stack(
                            children: [
                              // Circular Avatar
                              const CircleAvatar(
                                  radius: 50, // You can adjust the radius as needed
                                  backgroundImage: AssetImage(
                                      'assets/profilepic.png') // Replace with your image URL or asset
                              ),
                              // Positioned Edit Icon
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
                            text: 'Name', hintText: 'Enter your name'),
                        const SizedBox(height: 10),
                        CustomTextField(
                            Asterik: ' *',
                            text: 'Email', hintText: 'Enter your email'),
                        const SizedBox(height: 15),
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Row(
                              children: [
                                Text(
                                  'Phone Number',
                                  // Displaying the label for the TextField
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Proxima',
                                    fontSize: 14,
                                    color:
                                    BlackColor, // Assuming BlackColor is defined in your utils.dart
                                  ),
                                ),
                                Text(
                                  ' *',
                                  // Displaying the label for the TextField
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Proxima',
                                    fontSize: 14,
                                    color:
                                    RedColor, // Assuming BlackColor is defined in your utils.dart
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
                                hintText: '85858585',
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
                              // Returns complete phone number with country code
                            },
                          ),
                        ),

                        CustomTextField(
                          Asterik: ' *',
                          text: 'Bio', hintText: 'Lorem Ipsum Lorem IpsumLorem Ipsum', maxline: 3,),
                        Padding(
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
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(color: MediumGrey)),
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
                                        'Update',
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
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ));
          },
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: WhiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height*.05,),
              // Top part with a background image or gradient and profile picture
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
          
                      height: 80,
                      width: 80,
                      child: const CircleAvatar(
          
                        backgroundImage:
                        AssetImage('assets/businessimage.png'), // Add your image
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Text(
                      'Ryan Kenter',
                      style: TextStyle(
                          fontFamily: 'Proxima',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: BlackColor
                      ),
                    )
                  ],
                ),
              ),
              // Space for the profile image
              const SizedBox(height: 20),


              // Profile details
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name

                    // Location with icon
                     Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/locationicon.png'),
                        SizedBox(width: 5),
                        Text(
                          'New York, USA',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Proxima',
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Proxima',
                        color: Grey,
                      ),
                    ),
                    // Description
          
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Account Overview',
                      style: TextStyle(
                        fontFamily: 'Proxima',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,

                        color: BlackColor,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height * .3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
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

                            },
                            child: const CustomRowForSetting(
                              image: 'assets/Bio.png',
                              text: 'Edit Bio',
                            ),
                          ),
                          Divider(color: OffwhiteColor, thickness: 2),
                          InkWell(
                            onTap: () {

                            },
                            child: const CustomRowForSetting(
                              image: 'assets/booking.png',
                              text: 'Past Work',
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
                            child: const CustomRowForSetting(
                              image: 'assets/settingactive.png',
                              text: 'Settings and Preferences',
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
