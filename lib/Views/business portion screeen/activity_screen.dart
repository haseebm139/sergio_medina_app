import 'package:flutter/material.dart';
import 'package:sergio_medina_app/utils.dart';

class ActivityScreenBusiness extends StatefulWidget {
  const ActivityScreenBusiness({super.key});

  @override
  State<ActivityScreenBusiness> createState() => _ActivityScreenBusinessState();
}

class _ActivityScreenBusinessState extends State<ActivityScreenBusiness> {
  // Let's assume 3 items for the first list and 6 for the second list
  final int firstListCount = 3;
  final int secondListCount = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle:
        true,
        title: Image.asset('assets/App_icon_logo.png'),
      ),
      backgroundColor: OffwhiteColor,
      body: SafeArea(
        child: ListView.builder(

          itemCount: firstListCount + secondListCount + 3, // Includes static widgets
          itemBuilder: (context, index) {
            // Top logo section
            if (index == 0) {
              return const SizedBox(height: 5,);
            }

            // "Today" text section
            if (index == 1) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Text(
                  'Today',
                  style: TextStyle(
                    fontFamily: 'Proxima',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: BlackColor,
                  ),
                ),
              );
            }

            // Items from the first list (e.g., activities)
            if (index > 1 && index <= firstListCount + 1) {
              return _buildActivityCard();
            }

            // Lunch break section
            if (index == firstListCount + 2) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Lunch',
                        style: TextStyle(

                          fontFamily: 'Proxima',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: BlackColor,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }

            // Items from the second list
            if (index > firstListCount + 2) {
              return _buildActivityCard();
            }

            return Container(); // Default fallback
          },
        ),
      ),
    );
  }

  // Activity card widget for both lists
  Widget _buildActivityCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: Card(
        elevation: 1,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Haircut',
                  style: TextStyle(
                    fontFamily: 'Proxima',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: BlackColor,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Booked by: ',
                      style: TextStyle(
                        fontFamily: 'Proxima',
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: BlackColor,
                      ),
                    ),
                    Text(
                      'Lenny Joms',
                      style: TextStyle(
                        fontFamily: 'Proxima',
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: Grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Time & Date: ',
                      style: TextStyle(
                        fontFamily: 'Proxima',
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                        color: Grey,
                      ),
                    ),
                    Text(
                      'Monday, Sep 17, 12:00 AM',
                      style: TextStyle(
                        fontFamily: 'Proxima',
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: BlackColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
