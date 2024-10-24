
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sergio_medina_app/Widgets/custom_checkbox.dart';
import 'package:sergio_medina_app/Widgets/custom_listtile_with_toggle.dart';
import 'package:sergio_medina_app/Widgets/custom_row_for_settings.dart';
import 'package:sergio_medina_app/Widgets/row_for_textandtoggleonly.dart';

import '../../../../utils.dart';

class Settingandpreference extends StatefulWidget {
  const Settingandpreference({super.key});

  @override
  State<Settingandpreference> createState() => _SettingandpreferenceState();
}

class _SettingandpreferenceState extends State<Settingandpreference> {
  @override
  Widget build(BuildContext context) {
    String? selectedOption;
    return  Scaffold(
      backgroundColor: WhiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [InkWell(
                      onTap: (){Get.back();},
                      child: Image.asset('assets/crossicon.png'))],
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Settings and Preferences',
                    style: TextStyle(
                        fontFamily: 'Proxima',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: BlackColor),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'General Settings',
                  style: TextStyle(
                      fontFamily: 'Proxima',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: BlackColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: InputfiedlBorderColor),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Column(
                    children: [
                      const CustomRowForSettings(
                          firsttext: 'Language', secondtext: 'English'),
                      Divider(
                        height: 1,
                        color: InputfiedlBorderColor,
                      ),
          
                      const CustomRowForSettings(
                          firsttext: 'Time Zone', secondtext: 'USA'),
                      Divider(
                        height: 1,
                        color: InputfiedlBorderColor,
                      ),
                      const CustomRowForSettings(
                          firsttext: 'Date & Time Format',
                          secondtext: 'DD/MM/YYYY'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Account Settings',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Proxima',
                      fontWeight: FontWeight.w600,
                      color: BlackColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: InputfiedlBorderColor),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Column(
                    children: [
                      const CustomRowForSettings(
                          firsttext: 'Personal Information', secondtext: 'Edit'),
                      Divider(
                        height: 1,
                        color: InputfiedlBorderColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Password Management',
                              style: TextStyle(
                                  fontFamily: 'Proxima',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Grey),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 1,
                        color: InputfiedlBorderColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Connected Accounts',
                              style: TextStyle(
                                  fontFamily: 'Proxima',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Grey),
                            ),
                            Image.asset('assets/Google.png')
                          ],
                        ),
                      ),
                      Divider(
                        height: 1,
                        color: InputfiedlBorderColor,
                      ),
                      const CustomRowForSettings(
                          firsttext: 'Privacy Settings', secondtext: 'Public'),
                      Divider(
                        height: 1,
                        color: InputfiedlBorderColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Account Deletion',
                              style: TextStyle(
                                  fontFamily: 'Proxima',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Grey),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(color: GreenColor)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 4, bottom: 4),
                                    child: Text(
                                      'Deactivate',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: GreenColor),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(color: RedColor)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 4, bottom: 4),
                                    child: Text(
                                      'Delete Permanently',
                                      style: TextStyle(
                                          fontFamily: 'Proxima',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: RedColor),
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
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Notification Settings',
                  style: TextStyle(
                      fontFamily: 'Proxima',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: BlackColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: InputfiedlBorderColor),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Column(
                    children: [
                      const CustomListTileWithToggle(
                          title: 'Email Notifications',
                          subtitle: 'Receiving email notifications.'),
                      Divider(
                        height: 1,
                        color: InputfiedlBorderColor,
                      ),
                      const CustomListTileWithToggle(
                          title: 'Push Notifications',
                          subtitle:
                          'Control which notifications are pushed to devices.'),
                      Divider(
                        height: 1,
                        color: InputfiedlBorderColor,
                      ),
                      const CustomListTileWithToggle(
                          title: 'In-App Notifications',
                          subtitle:
                          'Manage which events trigger notifications inside the app.'),
                      Divider(
                        height: 1,
                        color: InputfiedlBorderColor,
                      ),
                      const CustomListTileWithToggle(
                          title: 'Sound & Vibration',
                          subtitle:
                          'Choose sound/vibration settings for notifications.'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Privacy and Security',
                  style: TextStyle(
                      fontFamily: 'Proxima',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: BlackColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: InputfiedlBorderColor),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10),
                        child: Text(
                          'Privacy Options',
                          style: TextStyle(
                              fontFamily: 'Proxima',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Grey),
                        ),
                      ),
                      const CustomCheckboxListTile(
                        title: 'Settings for data sharing',
                      ),
                      const CustomCheckboxListTile(
                        title: 'See your activity',
                      ),
                      Divider(
                        height: 1,
                        color: InputfiedlBorderColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10),
                        child: Text(
                          'Data Encryption',
                          style: TextStyle(
                              fontFamily: 'Proxima',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Grey),
                        ),
                      ),
                      const CustomCheckboxListTile(
                        title: 'Information about data encryption and security.',
                      ),
                      Divider(
                        height: 1,
                        color: InputfiedlBorderColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10),
                        child: Text(
                          'Security Questions',
                          style: TextStyle(
                              fontFamily: 'Proxima',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Grey),
                        ),
                      ),
                      const CustomCheckboxListTile(
                        title: 'Set up or change security questions for account recovery.',
                      ),


                      Divider(
                        height: 1,
                        color: InputfiedlBorderColor,
                      ),

                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Accessibility',
                  style: TextStyle(
                      fontFamily: 'Proxima',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: BlackColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: InputfiedlBorderColor),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomListTileWithToggle(
                          title: 'Text-to-Speech',
                          subtitle:
                          'Enable and configure text-to-speech options.'),
                      Divider(
                        height: 1,
                        color: InputfiedlBorderColor,
                      ),
                      const Rowfortextandtogleonly(title: 'Screen Reader Support'),
                      Divider(
                        height: 1,
                        color: InputfiedlBorderColor,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, top: 10),
                        child: Text(
                          'Keyboard Shortcuts',
                          style: TextStyle(
                              fontFamily: 'Proxima',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Grey),
                        ),
                      ),
                      const CustomCheckboxListTile(
                        title:
                        'Customize or view existing keyboard shortcuts.',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Application-Specific Settings',
                  style: TextStyle(
                      fontFamily: 'Proxima',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: BlackColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: InputfiedlBorderColor),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, top: 10),
                        child: Text(
                          'Sync Options',
                          style: TextStyle(
                              fontFamily: 'Proxima',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Grey),
                        ),
                      ),
                      const CustomCheckboxListTile(
                        title:
                        'Data synchronization across devices',
                      ),



          
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),


                Text(
                  'Support',
                  style: TextStyle(
                      fontFamily: 'Proxima',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: BlackColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: InputfiedlBorderColor),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Column(
                    children: [
                      const CustomRowForSettings(
                          firsttext: 'Help & Feedback', secondtext: ''),
                      Divider(
                        height: 1,
                        color: InputfiedlBorderColor,
                      ),
                      const CustomRowForSettings(
                          firsttext: 'Send Feedback', secondtext: ''),
                      Divider(
                        height: 1,
                        color: InputfiedlBorderColor,
                      ),
                      const CustomRowForSettings(
                          firsttext: 'About', secondtext: '1.05 version'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Legal',
                  style: TextStyle(
                      fontFamily: 'Proxima',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: BlackColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: InputfiedlBorderColor),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Column(
                    children: [
                      const CustomRowForSettings(
                          firsttext: 'Terms of Service', secondtext: ''),
                      Divider(
                        height: 1,
                        color: InputfiedlBorderColor,
                      ),
                      const CustomRowForSettings(
                          firsttext: 'Privacy Policy', secondtext: ''),
                      Divider(
                        height: 1,
                        color: InputfiedlBorderColor,
                      ),
                      const CustomRowForSettings(
                          firsttext: 'Licences', secondtext: 'Open-source licenses'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                Text(
                  'Logout',
                  style: TextStyle(
                      fontFamily: 'Proxima',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: RedColor),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
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
                                'Reset to Default',
                                style: TextStyle(
                                    fontFamily: 'Proxima',
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
                          Get.back();
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
                                'Save Changes',
                                style: TextStyle(
                                    fontFamily: 'Proxima',
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
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
