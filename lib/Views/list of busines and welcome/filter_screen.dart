import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sergio_medina_app/Widgets/custom_button.dart';
import 'package:sergio_medina_app/utils.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double distance = 2; // Distance slider value
  bool isMiles = true; // To toggle between Miles and Km
  int selectedSortIndex = 0;


  RangeValues _currentRangeValues = const RangeValues(0, 20); // To manage the sorting option selection

  // Sorting options
  final List<String> sortOptions = [
    'Most Relevant',
    'Most Reviews',
    'Highest Rate',
    'Lowest Rate'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OffwhiteColor,
      appBar: AppBar(
        backgroundColor: WhiteColor,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Image.asset('assets/crossicon.png')),
        title: Text(
          ' All filters ',
          style: TextStyle(
              fontFamily: 'Proxima',
              fontWeight: FontWeight.w600, fontSize: 16, color: BlackColor),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20,),
                  Text(
                    ' Price range',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 14, color: BlackColor),
                  ),
                    const SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Container(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                '\$', // Prefix text as '$'
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: BlackColor,
                                ),
                              ),
                            ),
                            prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Grey),
                            hintText: 'Min',
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Container(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                '\$', // Prefix text as '$'
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: BlackColor,
                                ),
                              ),
                            ),
                            prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            hintText: 'Max',
                            hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Grey),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),


                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Distance section
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Distance',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            Container(
                              width: 110,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4), color: InputfiedlBorderColor),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          isMiles = true;
                                        });
                                      },
                                      child: Container(
                                        width: 50,
                                        height: 23,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          color: isMiles
                                              ? Colors.white
                                              : Colors.transparent,
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Miles',
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
                                          isMiles = false;
                                        });
                                      },
                                      child: Container(
                                        width: 50,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          color: !isMiles
                                              ? Colors.white
                                              : Colors.transparent,
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Km',
                                            style: TextStyle(
                                                fontFamily: 'Proxima',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12, color: BlackColor),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),





                        // Toggle buttons for miles and km



                        // Sort by section

                      ],
                    ),
                  ),
                ],),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          RangeSlider(
                            values: _currentRangeValues,
                            min: 0,
                            max: 100,

                            activeColor: GreenColor, // Replace with GreenColor
                            inactiveColor: InputfiedlBorderColor, // Replace with MediumGrey
                            onChanged: (RangeValues values) {
                              setState(() {
                                _currentRangeValues = values; // Update slider values on change
                              });
                            },
                          ),
                          const SizedBox(height: 40), // Space for the text below the handle
                        ],
                      ),
                      // Positioned widget to place the value below the second handle
                      Positioned(
                        left: _currentRangeValues.end * 3.15, // Adjust multiplier for accurate positioning
                        top: 40, // Adjust this based on your design
                        child: Text(
                          '${_currentRangeValues.end.toStringAsFixed(1)} ${isMiles ? 'miles' : 'km'}', // Show value with unit
                          style:  TextStyle(fontSize: 12, color: BlackColor, fontWeight: FontWeight.w400 ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const Text(
                    'Sort by',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 8.0,
                    children: List<Widget>.generate(sortOptions.length, (index) {
                      return ChoiceChip(
                        showCheckmark: false,
                        selectedColor: Colors.white,
                        backgroundColor: Colors.white, // Keep the background color white
                        label: Text(
                          sortOptions[index],
                          style: TextStyle(
                            color: selectedSortIndex == index ? GreenColor : Colors.black, // Green text when selected
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        selected: selectedSortIndex == index,
                        side: BorderSide(
                          color: selectedSortIndex == index ? Grey : Colors.black12, // Green border when selected
                          width: 1.0,
                        ),
                        onSelected: (bool selected) {
                          setState(() {
                            selectedSortIndex = selected ? index : 0;
                          });
                        },
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: 20),

                  // Positive Reviews section
                  const Text(
                    'Minimum Rating',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),

                  // Star ratings for reviews
                  Column(
                    children: [
                      _buildStarRow(4.5),
                      _buildStarRow(4.0),
                      _buildStarRow(3.5),
                      _buildStarRow(3.0),
                      _buildStarRow(2.0),
                    ],
                  ),
                ],),
              )


            ],
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomButton(
                text: 'Show Results',
                onTap: () {
                  Get.back();
                }),
          ),


        ],
      ),
    );
  }
}

Widget _buildStarRow(double rating) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      children: [
        _buildStarRating(rating),

      ],
    ),
  );
}

// Custom method to create star ratings
Widget _buildStarRating(double rating) {
  int fullStars = rating.floor();
  bool halfStar = (rating - fullStars) > 0.4;
  return Row(
    children: List.generate(5, (index) {
      if (index < fullStars) {
        return const Icon(Icons.star, color: Colors.black, size: 20);
      } else if (index == fullStars && halfStar) {
        return const Icon(Icons.star_half, color: Colors.black, size: 20);
      } else {
        return const Icon(Icons.star_border, color: Colors.black, size: 20);
      }
    }),
  );
}
