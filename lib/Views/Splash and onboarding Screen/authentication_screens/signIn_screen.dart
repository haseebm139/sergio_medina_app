import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sergio_medina_app/Views/Splash%20and%20onboarding%20Screen/authentication_screens/signup_screen.dart';
import 'package:sergio_medina_app/Widgets/custom_google_apple_button.dart';
import '../../../Widgets/custom_button.dart';
import '../../../Widgets/custom_textfied.dart';
import '../../../utils.dart';
import '../../Bottom Nav Bar/bottom_nav_bar_screen.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}
class _SigninScreenState extends State<SigninScreen> {
  
  final email_controller = TextEditingController();
  final password_controller = TextEditingController();
  
  bool isChecked = false;
  bool emailError = false; 
  bool passwordError = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),

                          Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap:(){Get.back();},
                        child: Image.asset('assets/backarrow.png')),
                    Image.asset('assets/login.png'),
                    const SizedBox(
                      width: 10,
                      height: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Sign In',
                style: TextStyle(
                    fontFamily: 'Proxima',
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: BlackColor),
              ),
              const SizedBox(height: 10),
              Text(
                'Welcome back! Please enter your details.',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Proxima',
                    fontSize: 14,
                    color: BlackColor),
              ),

              const SizedBox(height: 10),
              CustomTextField(
                Asterik: '',
                text: 'Email',
                hintText: 'Enter Your email',
                controller: email_controller,
              ),

              const SizedBox(height: 20),
              CustomTextField(
                Asterik: '',
                text: 'Password',
                hintText: 'Enter Your password',
                controller: password_controller,
                obscureText: true,
                iconButton: IconButton(
                    onPressed: () {}, icon: Image.asset('assets/Hide.png')),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                          'Remember Me',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Proxima',
                              fontSize: 14,
                              color: BlackColor),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Proxima',
                          fontSize: 14,
                          color: BlackColor),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                child: CustomButton(
                  text: 'Sign In',
                  onTap: () {
                    setState(() {
                      // Check if email or password fields are empty
                      emailError = email_controller.text.isEmpty;
                      passwordError = password_controller.text.isEmpty;
                    });

                    if (!emailError && !passwordError) {
                      // If no error, navigate to bottom nav bar
                      Get.offAll(() => const BottomNavBar());
                    }
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
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
                  Get.to(() => const SignupScreen());
                },
                text: 'Sign Up', firsttext: "Don't",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
