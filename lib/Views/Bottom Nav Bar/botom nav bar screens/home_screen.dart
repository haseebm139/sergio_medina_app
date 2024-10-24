import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sergio_medina_app/Views/list%20of%20busines%20and%20welcome/filter_screen.dart';
import 'package:sergio_medina_app/Views/list%20of%20busines%20and%20welcome/list_of_business_screen.dart';
import 'package:sergio_medina_app/Views/list%20of%20busines%20and%20welcome/view_profile_screen.dart';
import 'package:sergio_medina_app/Widgets/custom_button.dart';
import 'package:sergio_medina_app/utils.dart';

class HomeScreenClient extends StatefulWidget {
  const HomeScreenClient({super.key});

  @override
  State<HomeScreenClient> createState() => _HomeScreenClientState();
}

class _HomeScreenClientState extends State<HomeScreenClient> {
  final TextEditingController searchController = TextEditingController();
  final TextEditingController zipcodeController = TextEditingController();
  bool isExpanded = false;
  bool isSearching = false; // Toggle search mode

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OffwhiteColor,

      body: SafeArea(
        child: Stack(
          children: [
            // Main Content of Home Screen
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * .43,
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                          child: Image.asset(
                            'assets/blacklogo.png',
                            height: 18,
                            width: 137,
                          ),
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                                  height: MediaQuery.sizeOf(context).height * .3,
                                  child: Image.asset(
                                    'assets/image1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(45.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextField(
                                    controller: searchController,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.search_rounded),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          borderSide: BorderSide.none),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.circular(8)),
                                      hintText: 'Search services',
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  TextField(
                                    controller: zipcodeController,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          borderSide: BorderSide.none),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.circular(8)),
                                      hintText: 'Zip Code',
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  CustomButton(
                                    text: 'Search',
                                    onTap: () {
                                      setState(() {
                                        isSearching = true; // Toggle search results view
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Regular content: Promoted services
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Promoted Services',
                      style: TextStyle(
                        fontFamily: 'Proxima',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: BlackColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 230,
                    child: ListView.builder(
                      itemCount: 8,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/promotedservice.png',
                                width: 110,
                                height: 190,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Devidheffy',
                                style: TextStyle(
                                  fontFamily: 'Proxima',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                  color: BlackColor,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Drywall Installer',
                                style: TextStyle(
                                  fontFamily: 'Proxima',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: BlackColor,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 230,
                    child: ListView.builder(
                      itemCount: 8,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/promotedservice.png',
                                width: 110,
                                height: 190,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Devidheffy',
                                style: TextStyle(
                                  fontFamily: 'Proxima',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                  color: BlackColor,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Drywall Installer',
                                style: TextStyle(
                                  fontFamily: 'Proxima',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: BlackColor,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            // Search Results Overlay (shown when isSearching is true)
            if (isSearching)
              Container(
                color: OffwhiteColor,
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.white,
                      height: MediaQuery.sizeOf(context).height * .10,
                      child: Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isSearching = false; // Hide search results
                                });
                              },
                              child: Image.asset('assets/backarrow.png'),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.search_rounded),
                                  fillColor: OffwhiteColor,
                                  filled: true,
                                  hintText: 'Car detailers',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: InputfiedlBorderColor, width: 1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            InkWell(
                              onTap: () {
                                Get.to(() => const FilterScreen());
                              },
                              child: Image.asset('assets/Filter.png'),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
                      child: Text(
                        'Showing results to Car Detailers near 60459',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Proxima',
                          fontSize: 14,
                          color: BlackColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 6, // Replace with your actual business list length
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                            child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: Container(
                                            height: 65,
                                            child: Image.asset(
                                              'assets/cardimage.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                                  const Row(
                                                    children: [
                                                      Icon(
                                                        Icons.location_on,
                                                        size: 16,
                                                        color: Colors.grey,
                                                      ),
                                                      SizedBox(width: 5),
                                                      Text(
                                                        '11201, USA',
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 10,
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 10),
                                              Text(
                                                'RooferGrains',
                                                style: TextStyle(
                                                  fontFamily: 'Proxima',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  color: BlackColor,
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  Text(
                                                    'Starting From',
                                                    style: TextStyle(
                                                      fontFamily: 'Proxima',
                                                      fontWeight: FontWeight.w300,
                                                      fontSize: 10,
                                                      color: BlackColor,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    '\$50',
                                                    style: TextStyle(
                                                      fontFamily: 'Proxima',
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 11,
                                                      color: BlackColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'It is a long established fact that a reader will be distract a reader will be distracted by the readable content of a page',
                                                  maxLines: isExpanded ? null : 2, // Show all lines if expanded, else only 2 lines

                                                  style: TextStyle(
                                                    fontFamily: 'Proxima',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10,
                                                    color: BlackColor, // Use your defined BlackColor
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    isExpanded = !isExpanded; // Toggle the state on button click
                                                  });
                                                },
                                                child: Text(
                                                  isExpanded ? 'less' : '..more', // Button label changes
                                                  style: TextStyle(
                                                    fontFamily: 'Proxima',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 10,
                                                    color: GreenColor
                                                    , // Button text color
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        GestureDetector(
                                          onTap: () {
                                            Get.to(() => const ViewProfileScreen(
                                              businessName: 'RooferGrains',
                                              location: '11201, USA',
                                              description: 'It is a long established that reader will be distracted by the readable content of a page...',
                                              rating: 5.0,
                                              reviews: 22,
                                              startingPrice: '\$50',
                                              imagePath: 'assets/cardimage.png',
                                            ));
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 80,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(4),
                                              color: GreenColor, // Use your defined GreenColor
                                            ),
                                            child: const Center(
                                              child: Text(
                                                'View Profile',
                                                style: TextStyle(
                                                  fontFamily: 'Proxima',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 10,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                )
              ),
          ],
        ),
      ),
    );
  }
}
