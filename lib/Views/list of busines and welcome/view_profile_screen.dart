import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sergio_medina_app/Views/list%20of%20busines%20and%20welcome/booking_screen.dart';
import 'package:sergio_medina_app/Widgets/custom_button.dart';
import 'package:sergio_medina_app/Widgets/custom_card_view_profile_screen.dart';
import 'package:sergio_medina_app/utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ViewProfileScreen extends StatefulWidget {
  final String businessName;
  final String location;
  final String description;
  final double rating;
  final int reviews;
  final String startingPrice;
  final String imagePath;

  const ViewProfileScreen({
    Key? key,
    required this.businessName,
    required this.location,
    required this.description,
    required this.rating,
    required this.reviews,
    required this.startingPrice,
    required this.imagePath,
  }) : super(key: key);

  @override
  _ViewProfileScreenState createState() => _ViewProfileScreenState();
}

class _ViewProfileScreenState extends State<ViewProfileScreen> {
  final PageController _pageController = PageController();
  final List<String> images = [
    'assets/image1.png',
    'assets/image2.png',
    'assets/image3.png',
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColor,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top part with a background image, PageView and profile picture
                SizedBox(
                  height: MediaQuery.of(context).size.height * .30, // Increase height for better avatar overlap
                  child: Stack(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .25,
                        width: double.infinity,
                        child: PageView(
                          controller: _pageController,
                          children: images.map((image) {
                            return Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Positioned(
                        bottom: 60,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: SmoothPageIndicator(
                            controller: _pageController,
                            count: images.length,
                            effect: ExpandingDotsEffect(
                              dotHeight: 8.0,
                              dotWidth: 8.0,
                              activeDotColor: Colors.white,
                              dotColor: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                      // Profile image positioned at the bottom left
                      Positioned(
                        left: 20, // Align avatar to the left with some margin
                        bottom: 0, // Shift it upward slightly for an overlapping effect
                        child: CircleAvatar(
                          radius: 50, // Size of the avatar
                          backgroundColor: Colors.white, // Optional: Add a border around the avatar
                          child: CircleAvatar(
                            radius: 46, // Slightly smaller to create a border effect
                            backgroundImage: AssetImage(widget.imagePath),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10), // Space for the profile image

                // Profile details
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Name
                      Text(
                        widget.businessName,
                        style:  TextStyle(
                          fontFamily: 'Proxima',
                          fontSize: 18,
                          fontWeight: FontWeight.w600, color: BlackColor,
                        ),
                      ),
                      const SizedBox(height: 8),

                      // Location with icon
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: BlackColor,
                                size: 15,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '5.0 (22)',
                                style: TextStyle(
                                  fontFamily: 'Proxima',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10,
                                  color: BlackColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10,),
                          const Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 16,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '55 Clark St, Brooklyn, NY 11201, USA',
                                style: TextStyle(
                                  fontFamily: 'Proxima',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),

                      // Description
                      Text(
                        widget.description,
                        textAlign: TextAlign.start,
                        style:  TextStyle(
                          fontFamily: 'Proxima',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: MediumGrey,
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Available Services Section
                      Text(
                        'Available Services',
                        style: TextStyle(
                          fontFamily: 'Proxima',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: BlackColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                       CustomCardViewProfileScreen(
                        selectOption: Container(
                          width: 80,
                          height: 30,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                              color: Colors.white, border: Border.all(color: GreenColor)),
                          child: Center(child:  Text(
                            'Select',
                            style: TextStyle(
                                fontFamily: 'Proxima',
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                                color: GreenColor),
                          ),),
                        ),
                                             )
                    ],
                  ),
                ),
              ],
            ),
            // Continue Button
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomButton(
                text: 'Continue',
                onTap: () {
                  Get.to(()=> const BookingScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
