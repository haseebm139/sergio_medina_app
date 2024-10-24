import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sergio_medina_app/Views/Bottom%20Nav%20Bar/bottom_nav_bar_screen.dart';
import 'package:sergio_medina_app/Views/Splash%20and%20onboarding%20Screen/authentication_screens/signIn_screen.dart';
import 'package:sergio_medina_app/Views/business%20portion%20screeen/botomNavbarBusiness.dart';
import 'package:sergio_medina_app/Widgets/custom_google_apple_button.dart';
import 'package:sergio_medina_app/Widgets/custom_textfied.dart';

import '../../../Widgets/custom_button.dart';
import '../../../utils.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isChecked = false;
  bool isBusinessSelected = true; // Track if "Business" is selected

  final email_controller = TextEditingController();
  final password_controller = TextEditingController();
  final confirm_password_controller = TextEditingController();

  bool nameError = false;
  bool passwordError = false;
  bool confirmPasswordError = false;
  bool passwordsDoNotMatchError = false;

  @override
  Widget build(BuildContext context) {
    // Get the screen height and width to adjust the layout dynamically
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: WhiteColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 1),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Image.asset('assets/backarrow.png')),
                          Image.asset('assets/signupillustrator.png'),
                          const SizedBox(
                            width: 10,
                            height: 10,
                          ),
                        ],
                      ),
                    ),

                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Proxima',
                          fontSize: 24,
                          color: BlackColor),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Just a few quick things to get started',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Proxima',
                          fontSize: 14,
                          color: BlackColor),
                    ),
                    const SizedBox(height: 10),

                    // Toggle between "Business" and "Client"
                    Container(
                      width: 160,
                      height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: OffwhiteColor),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
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
                                      : Colors.transparent,
                                ),
                                child: Center(
                                  child: Text(
                                    'Business',
                                    style: TextStyle(
                                        fontFamily: 'Proxima',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: BlackColor),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
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
                                  color: !isBusinessSelected
                                      ? Colors.white
                                      : Colors.transparent,
                                ),
                                child: Center(
                                  child: Text(
                                    'Client',
                                    style: TextStyle(
                                        fontFamily: 'Proxima',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: BlackColor),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    CustomTextField(
                      Asterik: '',
                      text: 'Email',
                      hintText: 'Enter Your email',
                      controller: email_controller,
                    ),

                    const SizedBox(height: 10),
                    CustomTextField(
                      Asterik: '',
                      text: 'Password',
                      hintText: 'Enter password',
                      obscureText: true,
                      controller: password_controller,
                      iconButton: IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/Hide.png')),
                    ),

                    const SizedBox(height: 10),
                    CustomTextField(
                      Asterik: '',
                      text: 'Confirm Password',
                      hintText: 'Enter confirm password',
                      obscureText: true,
                      controller: confirm_password_controller,
                      iconButton: IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/Hide.png')),
                    ),

                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value ?? false;
                              });
                            },
                            checkColor: Colors.white,
                            activeColor: GreenColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Text(
                            'I agree with terms & conditions',
                            style: TextStyle(
                                fontFamily: 'Proxima',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: BlackColor),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: CustomButton(
                        text: 'Sign Up',
                        onTap: () {
                          setState(() {
                            // Check for empty fields and if passwords match
                            nameError = email_controller.text.isEmpty;
                            passwordError = password_controller.text.isEmpty;
                            confirmPasswordError =
                                confirm_password_controller.text.isEmpty;
                            passwordsDoNotMatchError =
                                password_controller.text !=
                                    confirm_password_controller.text;
                          });

                          // Proceed only if no errors
                          if (!nameError &&
                              !passwordError &&
                              !confirmPasswordError &&
                              !passwordsDoNotMatchError) {
                            // Navigate based on user selection
                            if (isBusinessSelected) {
                              Get.offAll(() =>
                              const BottomNavBarBusiness());
                            } else {
                              Get.offAll(() => const BottomNavBar());
                            }
                          }
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: InputfiedlBorderColor,
                              thickness: 1,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text('Or with'),
                          ),
                          Expanded(
                            child: Divider(
                              color: InputfiedlBorderColor,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),

                    CustomGoogleAppleButton(
                      onTap: () {
                        Get.to(() => const SigninScreen());
                      },
                      text: 'Sign In',
                      firsttext: 'Already',
                    ),
                    SizedBox(height: screenHeight * 0.02), // Add some space
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
