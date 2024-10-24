import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sergio_medina_app/Views/Splash%20and%20onboarding%20Screen/authentication_screens/trail_screen.dart';
import 'package:sergio_medina_app/Views/Splash%20and%20onboarding%20Screen/onboarding%20screens/onboarding_one_screen.dart';
import 'package:sergio_medina_app/Views/Splash%20and%20onboarding%20Screen/onboarding%20screens/onboarding_two_screen.dart';
import 'package:sergio_medina_app/utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicatorScreen extends StatefulWidget {
  const PageIndicatorScreen({super.key});

  @override
  State<PageIndicatorScreen> createState() => _PageIndicatorScreenState();
}

class _PageIndicatorScreenState extends State<PageIndicatorScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                children: const [
                  OnboardingOneScreen(),
                  OnboardingTwoScreen(),
                ],
              ),
            ),
            const SizedBox(height: 40,),
            Column(
              children: [
                const SizedBox(height: 20,),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 2, // Number of pages
                  effect: WormEffect(
                    activeDotColor: BlackColor,
                    radius: 6,
                    dotHeight: 6,
                    dotWidth: 6,
                  ), // You can customize the effect here
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.17,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.to(() => const TrailScreen());
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          fontFamily: 'Proxima',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: BlackColor,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        // Get the current page index
                        int currentPage = _pageController.page?.round() ?? 0;

                        if (currentPage < 1) {
                          // Move to the next page if not on the last page
                          _pageController.animateToPage(
                            currentPage + 1,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          // Navigate to TrailScreen if on the last page
                          Get.to(() => const TrailScreen());
                        }
                      },
                      child: Container(
                        height: 45,
                        width: 145,
                        decoration: BoxDecoration(
                          color: GreenColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Continue',
                            style: TextStyle(
                              fontFamily: 'Proxima',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: WhiteColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
