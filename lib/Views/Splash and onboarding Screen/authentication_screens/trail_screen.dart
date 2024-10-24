import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sergio_medina_app/Views/Splash%20and%20onboarding%20Screen/authentication_screens/signup_screen.dart';
import 'package:sergio_medina_app/Widgets/custom_button.dart';
import 'package:sergio_medina_app/Widgets/custom_row_for_trialscreen.dart';
import 'package:sergio_medina_app/utils.dart';

class TrailScreen extends StatefulWidget {
  const TrailScreen({super.key});

  @override
  State<TrailScreen> createState() => _TrailScreenState();
}

class _TrailScreenState extends State<TrailScreen> {
  bool isBusinessSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Image.asset('assets/backarrow.png'),
                          ),
                          Image.asset('assets/signupillustrator.png'),
                          const SizedBox(width: 10, height: 10)
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Proxima',
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: BlackColor,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Just a few quick things to get started',
                      style: TextStyle(
                        fontFamily: 'Proxima',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: BlackColor,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Business/Client Toggle Button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: 160,
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: OffwhiteColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Business Button
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isBusinessSelected = true;
                                  });
                                },
                                child: Container(
                                  width: 78,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: isBusinessSelected
                                        ? Colors.white
                                        : OffwhiteColor, // Highlight if selected
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Business',
                                      style: TextStyle(
                                        fontFamily: 'Proxima',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: BlackColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Client Button
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isBusinessSelected = false;
                                  });
                                },
                                child: Container(
                                  width: 78,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: isBusinessSelected
                                        ? OffwhiteColor
                                        : Colors.white, // Highlight if selected
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Client',
                                      style: TextStyle(
                                        fontFamily: 'Proxima',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: BlackColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Display content based on selection
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          border: Border.all(color: MediumGrey, width: 1),
                        ),
                        child: isBusinessSelected
                            ? _buildBusinessContent()
                            : _buildClientContent(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Bottom Button
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: CustomButton(
                  text: isBusinessSelected ? 'Start Free Trial' : 'Continue',
                  onTap: () {
                    Get.to(() => const SignupScreen());
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


Widget _buildBusinessContent() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'As a member you will benefit from',
              style: TextStyle(
                  fontFamily: 'Proxima',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: BlackColor),
            ),
            const SizedBox(height: 20),
            const CustomRowForTrialscreen(
                boldText: 'Grow with Your Business: ',
                normalText:
                ' As your business expands, Appointly can easily scale to accommodate more clients and additional features without significant disruptions'),
            const SizedBox(height: 20),
            const CustomRowForTrialscreen(
                boldText: 'Centralized Information: ',
                normalText:
                ' All client information, including contact details, interaction history, and preferences, is stored in one place, making it easier to manage.'),
            const SizedBox(height: 20),
            const CustomRowForTrialscreen(
                boldText: 'Task Management: ',
                normalText:
                ' Appointly can help track appointments, follow-ups, and deadlines, ensuring that nothing falls through the cracks.'),
            const SizedBox(height: 20),
            const CustomRowForTrialscreen(
                boldText: 'Automated Reminders: ',
                normalText:
                ' Send automated reminders for appointments, follow-ups, or payments, reducing the chance of missed opportunities.'),
            const SizedBox(height: 20),
            const CustomRowForTrialscreen(
                boldText: 'Personalized Messaging: ',
                normalText:
                ' Quickly send personalized messages or updates to clients, improving customer relationships'),
            const SizedBox(height: 20),
            const CustomRowForTrialscreen(
                boldText: 'Professionalism:',
                normalText:
                ' Present a more professional image to clients by using modern tools for communication and management.'),
            const SizedBox(height: 20),
            const CustomRowForTrialscreen(
                boldText: 'No show protection', normalText: ''),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _buildClientContent() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'As a client you will benefit from',
              style: TextStyle(
                  fontFamily: 'Proxima',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: BlackColor),
            ),
            const SizedBox(height: 20),
            const CustomRowForTrialscreen(
                boldText: 'Convenience:',
                normalText:
                ' Browse and book services at your preferred time, without needing to call or visit the business. 24/7 access to appointments.'),
            const SizedBox(height: 20),
            const CustomRowForTrialscreen(
                boldText: 'Time-Saving: ',
                normalText:
                ' Instantly see available time slots and book with a few taps, avoiding back-and-forth coordination.'),
            const SizedBox(height: 20),
            const CustomRowForTrialscreen(
                boldText: 'Personalized Experience:' ,
                normalText:
                ' Appointly stores your preferences and previous bookings for tailored recommendations.'),
            const SizedBox(height: 20),
            const CustomRowForTrialscreen(
                boldText: 'Real-Time Updates: ',
                normalText:
                ' Receive instant notifications about confirmations, cancellations, or changes to your appointments.'),
            const SizedBox(height: 20),
            const CustomRowForTrialscreen(
                boldText: 'Payment Integration: ',
                normalText:
                ' Pay for services in-app to avoid handling cash or waiting to pay afterward.'),
            const SizedBox(height: 20),
            const CustomRowForTrialscreen(
                boldText: 'Transparency & Reviews:',
                normalText:
                ' Read real reviews and ratings from other clients to choose the best service provider.'),
          ],
        ),
      ),
    );
  }

