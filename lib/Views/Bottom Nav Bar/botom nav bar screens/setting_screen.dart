import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sergio_medina_app/Views/Bottom%20Nav%20Bar/botom%20nav%20bar%20screens/help_screen.dart';
import 'package:sergio_medina_app/Views/Bottom%20Nav%20Bar/botom%20nav%20bar%20screens/payment_method_screen.dart';
import 'package:sergio_medina_app/Widgets/custom_row_for_setting.dart';
import 'package:sergio_medina_app/Widgets/custom_textfied.dart';
import 'package:sergio_medina_app/Widgets/helpscreen_question.dart';
import 'package:sergio_medina_app/Widgets/row_for_textandtoggleonly.dart';
import 'package:sergio_medina_app/Widgets/user_guide_widget_helpscreen.dart';
import 'package:sergio_medina_app/utils.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  String? selectedOption;

  void ShowContactUsBottomSheet(BuildContext context) {
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
                  padding: EdgeInsets.only(bottom:  MediaQuery.of(context).viewInsets.bottom,),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Contact Us',
                              style: TextStyle(
                                  fontFamily: 'Proxima',
                                  fontWeight: FontWeight.w600, fontSize: 18, color: BlackColor),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        CustomTextField(
                            Asterik: ' *',
                            text: 'Name', hintText: 'Enter your name'),
                        const SizedBox(height: 10),
                        CustomTextField(
                            Asterik: ' *',
                            text: 'Email', hintText: 'Enter your email'),
                        const SizedBox(height: 10),
                        CustomTextField(
                            Asterik: ' *',text: 'Subject', hintText: 'Enter subject'),
                        const SizedBox(height: 10),
                        CustomTextField(
                            Asterik: ' *',
                            text: 'Message', hintText: 'Write here.....', maxline: 4),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            'Add Picture',
                            style: TextStyle(
                                fontFamily: 'Proxima',
                                fontSize: 15, fontWeight: FontWeight.w400, color: BlackColor),
                          ),
                        ),
                        // Dotted Border Container for 'Add Picture'
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: DottedBorder(
                            color: MediumGrey, // Border color
                            strokeWidth: .5, // Width of the dotted line
                            dashPattern: [6, 6], // Length of dashes and gaps
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(8), // Rounded corners
                            child: Container(
                              height: 150,
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
                        ),
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

  void showsAccountBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      // Set this to true to make the sheet full-screen
      builder: (context) {
        return DraggableScrollableSheet(

          initialChildSize: 0.55,
          // This value can be changed to adjust the initial height of the sheet.
          builder: (_, scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
              ),
              child:  Padding(
                padding: EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom,),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),
                      Text(
                        'Account Settings',
                        style: TextStyle(
                            fontFamily: 'Proxima',
                            fontWeight: FontWeight.w600, fontSize: 18, color: BlackColor),
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                          Asterik: ' *',
                          text: 'Email', hintText: 'zairedonin@gmail.com'),
                      const SizedBox(height: 10),
                      CustomTextField(
                          Asterik: ' *',
                          text: 'New Password', hintText: 'Enter new password'),
                      const SizedBox(height: 10),
                      CustomTextField(
                          Asterik: ' *',
                          text: 'Confirm Password', hintText: 'Enter confirm password'),
                      const SizedBox(height: 10),

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
                                      border: Border.all(color: InputfiedlBorderColor)),
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
              )
            );
          },
        );
      },
    );
  }
  void showsNotificationPreferenceBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      // Set this to true to make the sheet full-screen
      builder: (context) {
        return DraggableScrollableSheet(

          initialChildSize: 0.55,
          // This value can be changed to adjust the initial height of the sheet.
          builder: (_, scrollController) {
            return Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                ),
                child:  SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          'Notification Preferences',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18, color: BlackColor),
                        ),
                        const SizedBox(height: 10),
                        const Rowfortextandtogleonly(title: 'Allow Sound'),
                        Divider(color: InputfiedlBorderColor, thickness: 2,),
                  
                  
                        const Rowfortextandtogleonly(title: 'Allow Vibration'),
                        Divider(color: InputfiedlBorderColor, thickness: 2,),
                        const Rowfortextandtogleonly(title: 'Booking Notifications'),
                        Divider(color: InputfiedlBorderColor, thickness: 2,),
                        const Rowfortextandtogleonly(title: 'Push Notifications'),
                        Divider(color: InputfiedlBorderColor, thickness: 2,),
                        const Rowfortextandtogleonly(title: 'Email Notifications'),
                  
                  
                      ],
                    ),
                  ),
                )
            );
          },
        );
      },
    );
  }
  bool isclicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OffwhiteColor,

      body: Stack(
        children:[
          Column(

            children: [
              AppBar(

                title: Text(
                  'Settings',
                  style: TextStyle(
                      fontFamily: 'Proxima',
                      fontWeight: FontWeight.w600, fontSize: 18, color: BlackColor),
                ),
                leading: const Text(''),
                centerTitle: true,
                backgroundColor: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [

                    Container(

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 10,),
                          InkWell(
                            onTap: (){showsAccountBottomSheet(context);},
                            child: const CustomRowForSetting(
                              image: 'assets/accountsetting.png',
                              text: 'Account Settings',
                            ),
                          ),
                          Divider(color: OffwhiteColor,thickness: 2),
                          InkWell(
                            onTap: (){showsNotificationPreferenceBottomSheet(context);},
                            child: const CustomRowForSetting(
                              image: 'assets/notification.png',
                              text: 'Notification preferences',
                            ),
                          ),
                          Divider(color: OffwhiteColor,thickness: 2),
                          InkWell(
                            onTap: (){
                              Get.to(()=> PaymentMethodScreen());
                            },
                            child: const CustomRowForSetting(
                              image: 'assets/payment.png',
                              text: 'Payment method',
                            ),
                          ),
                          Divider(color: OffwhiteColor, thickness: 2,),
                          InkWell(
                            onTap: (){

                              setState(() {
                                isclicked = true;
                              });
                            },
                            child: const CustomRowForSetting(
                              image: 'assets/help.png',
                              text: 'Help and support',
                            ),
                          ),
                          const SizedBox(height: 10,),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if(isclicked)
            Container(
              width: double.infinity,
              color: OffwhiteColor,
              child:  Column(
                children: [
                  AppBar(
                    leading: InkWell(
                      onTap: () {
                        setState(() {
                          isclicked = false; // Hide search results
                        });
                      },
                      child: Image.asset('assets/backarrow.png'),
                    ),
                    title: Text(
                      'FAQ',
                      style: TextStyle(
                          fontFamily: 'Proxima',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: BlackColor),
                    ),
                    centerTitle: true,
                    backgroundColor: Colors.white,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                    
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              'Frequently Asked Questions',
                              style: TextStyle(
                                  fontFamily: 'Proxima',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: BlackColor),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const HelpscreenQuestions(
                                      firsttext: 'How does Appointly help my business grow?',
                                      secondtext:
                                      'Appointly scales with your business, accommodating more clients and services seamlessly.'),
                                  Divider(
                                    color: OffwhiteColor,
                                  ),
                                  const HelpscreenQuestions(
                                    firsttext: 'How does Appointly help my business grow?',
                                    secondtext:
                                    'Yes, Appointly stores client data including contact details, preferences, and history.',
                                  ),
                                  Divider(
                                    color: OffwhiteColor,
                                  ),
                                  const HelpscreenQuestions(
                                      firsttext: 'How can I manage tasks through Appointly?',
                                      secondtext:
                                      'Appointly tracks appointments, follow-ups, and deadlines, helping you stay organized.'),
                                  Divider(
                                    color: OffwhiteColor,
                                  ),
                                  const HelpscreenQuestions(
                                      firsttext: 'Can I send automatic reminders?',
                                      secondtext:
                                      'Yes, Appointly allows you to automate reminders for appointments, follow-ups, or payments.'),
                                  Divider(
                                    color: OffwhiteColor,
                                  ),
                                  const HelpscreenQuestions(
                                      firsttext:
                                      'Can I send personalized messages to clients?',
                                      secondtext:
                                      'Yes, Appointly allows businesses to send personalized messages or promotions to clients.'),
                                  Divider(
                                    color: OffwhiteColor,
                                  ),
                                  const HelpscreenQuestions(
                                      firsttext:
                                      'How does Appointly improve my professional image?',
                                      secondtext:
                                      'Using Appointly gives your business a modern, professional booking experience.'),
                                  Divider(
                                    color: OffwhiteColor,
                                  ),
                                  const HelpscreenQuestions(
                                      firsttext: 'What if a client misses an appointment?',
                                      secondtext:
                                      'Appointly offers no-show protection features, including charging cancellation fees.'),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              ShowContactUsBottomSheet(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                'assets/helpimage.png',
                                width: double.infinity,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              'Appointly User Guide for Clients',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: BlackColor),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const UserGuideWidgetHelpscreen(
                    
                                    text: '1. Creating a Client Account',
                                    text2:
                                    'Download Appointly and choose Client during sign-up.',
                                    text3: 'Provide your details and verify your account.',
                                  ),
                                  Divider(
                                    color: OffwhiteColor,
                                  ),
                                  const UserGuideWidgetHelpscreen(
                                    text: '2. Browsing and Searching for Services',
                                    text2:
                                    'Use the Appointly Bell on the home screen to search services.',
                                    text3: 'Filter by Minimum Rating to find the best providers.',
                                  ),
                                  Divider(
                                    color: OffwhiteColor,
                                  ),
                                  const UserGuideWidgetHelpscreen(
                                    text: '3. Booking an Appointment',
                                    text2:
                                    'Choose a service provider, select a time slot, and confirm your booking.',
                                  ),
                                  Divider(
                                    color: OffwhiteColor,
                                  ),
                                  const UserGuideWidgetHelpscreen(
                    
                                    text: '4. Managing Appointments',
                                    text2:
                                    'View, reschedule, or cancel your appointments through the Appointments tab.',
                                  ),
                                  Divider(
                                    color: OffwhiteColor,
                                  ),
                                  const UserGuideWidgetHelpscreen(
                                    text: '5. Receiving Notifications',
                                    text2:
                                    'Get real-time notifications about confirmations, changes, and cancellations.',
                                  ),
                                  Divider(
                                    color: OffwhiteColor,
                                  ),
                                  const UserGuideWidgetHelpscreen(
                                    text: '6. Payments',
                                    text2:
                                    'Use in-app payment options to pay in advance for services.',
                                  ),
                                  Divider(
                                    color: OffwhiteColor,
                                  ),
                                  const UserGuideWidgetHelpscreen(
                                    text: '7. Rating and Reviewing Services',
                                    text2:
                                    'After each appointment, leave a review to help other clients.',
                                  ),
                                  Divider(
                                    color: OffwhiteColor,
                                  ),
                                  const UserGuideWidgetHelpscreen(
                                    text: '8. Profile Management',
                                    text2:
                                    'Update personal details, change your banner, and add a bio in the Profile section.',
                                  ),
                                  Divider(
                                    color: OffwhiteColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ]
      ),
    );
  }
}
