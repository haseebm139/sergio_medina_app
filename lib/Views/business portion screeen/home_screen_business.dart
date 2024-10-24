import 'package:flutter/material.dart';
import 'package:sergio_medina_app/Views/custom_calender.dart';
import 'package:sergio_medina_app/utils.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreenBusiness extends StatefulWidget {
  @override
  State<HomeScreenBusiness> createState() => _HomeScreenBusinessState();
}

class _HomeScreenBusinessState extends State<HomeScreenBusiness> {
  bool isToggled = false;
  String getDayName(DateTime day) {
    return ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'][day.weekday - 1];
  }



  // Store the selected day
  DateTime? selectedDay;
  bool isclicked= false;

  @override
  void _toggleSwitch(bool value) {
    setState(() {
      isToggled = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OffwhiteColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Header Section
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 40, bottom: 20, left: 15, right: 15),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage(
                                    'assets/businessimage.png'), // Add your image
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Ryan Kenter',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Proxima',
                                        fontWeight: FontWeight.w600,
                                        color: BlackColor),
                                  ),
                                  const SizedBox(height: 5),
                                  // Location with icon
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: BlackColor,
                                        size: 15,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '5.0 (4.5)',
                                        style: TextStyle(
                                            fontFamily: 'Proxima',
                                            fontWeight: FontWeight.w300,
                                            fontSize: 10,
                                            color: BlackColor),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Experience timeless barbering at its finest. Our skilled artisans craft classic hairstyles with precision and care. From traditional fades to sha...',
                          style: TextStyle(
                              fontFamily: 'Proxima',
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: BlackColor),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Overview Section
                      Text(
                        'Overview',
                        style: TextStyle(
                            fontFamily: 'Proxima',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: BlackColor),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Money in this week',
                                      style: TextStyle(
                                          color: MediumGrey,
                                          fontFamily: 'Proxima',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12)),
                                  const SizedBox(height: 10),
                                  Text('\$1200',
                                      style: TextStyle(
                                          fontFamily: 'Proxima',
                                          color: BlackColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13)),
                                  const SizedBox(height: 10),
                                  Text('Money in this month',
                                      style: TextStyle(
                                          color: MediumGrey,
                                          fontFamily: 'Proxima',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12)),
                                  const SizedBox(height: 10),
                                  Text('\$5400',
                                      style: TextStyle(
                                          color: BlackColor,
                                          fontFamily: 'Proxima',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13)),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('New clients in this month',
                                      style: TextStyle(
                                          color: MediumGrey,
                                          fontFamily: 'Proxima',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12)),
                                  const SizedBox(height: 10),
                                  Text('24',
                                      style: TextStyle(
                                          color: BlackColor,
                                          fontFamily: 'Proxima',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13)),
                                  const SizedBox(height: 10),
                                  Text('Appointments completed this month',
                                      style: TextStyle(
                                          color: MediumGrey,
                                          fontFamily: 'Proxima',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12)),
                                  const SizedBox(height: 10),
                                  Text('20',
                                      style: TextStyle(
                                          color: BlackColor,
                                          fontFamily: 'Proxima',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Quick Access Section
                      Text(
                        'Quick Access',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Proxima',
                            fontWeight: FontWeight.w600,
                            color: BlackColor),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 20,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Availability',
                                          style: TextStyle(
                                              fontFamily: 'Proxima',
                                              color: MediumGrey,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12)),
                                      InkWell(
                                        onTap: () {},
                                        child: Text('Change  ',
                                            style: TextStyle(
                                                fontFamily: 'Proxima',
                                                color: GreenColor,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: Divider(color: OffwhiteColor),
                              ),
            
                              Expanded(
                                child: Container(
                                  height: 25,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Time off',
                                          style: TextStyle(
                                              fontFamily: 'Proxima',
                                              color: MediumGrey,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12)),
                                      Switch(
                                        value: isToggled,
                                        onChanged: _toggleSwitch,
                                        activeColor: Colors.white,
                                        splashRadius: 10,
                                        activeTrackColor: GreenColor,
                                        inactiveThumbColor: MediumGrey,
                                        inactiveTrackColor: OffwhiteColor,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Calendar Section
                      Text('Calendar',
                          style: TextStyle(
                              fontFamily: 'Proxima',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: BlackColor)),
                      SizedBox(height: 10,),
                      Container(
                          width: double.infinity,
                          height: 350,
                          child: CalenderScreen()),
            
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
            
              ],
            ),
          ),
          if(isclicked)
            Container(
              color: Colors.white,
              width: double.infinity,
              height: double.infinity,
              child: Container(
                color: OffwhiteColor,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: MediaQuery.sizeOf(context).height*.1,),
                      Container(
                        height: MediaQuery.sizeOf(context).height*.9,
                          decoration: const BoxDecoration(
                              color: Colors.white,

                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: Column(
                            children: [
                              // Calendar at the top
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 0.0),
                                child: TableCalendar(
                                  daysOfWeekVisible: false,
                                  weekNumbersVisible: false,
                                  selectedDayPredicate: (day) {
                                    return isSameDay(selectedDay, day);
                                  },
                                  focusedDay: DateTime.now(),
                                  firstDay: DateTime.utc(2020, 1, 1),
                                  lastDay: DateTime.utc(2030, 12, 31),
                                  calendarFormat: CalendarFormat.week,
                                  headerStyle: const HeaderStyle(
                                    formatButtonVisible: false,
                                    titleCentered: true,
                                  ),
                                  weekendDays: [],
                                  sixWeekMonthsEnforced: false,
                                  daysOfWeekStyle: const DaysOfWeekStyle(
                                    weekendStyle: TextStyle(color: Colors.grey),
                                  ),
                                  calendarStyle: CalendarStyle(
                                    weekendDecoration: BoxDecoration(
                                      shape: BoxShape.circle, // Wrap unselected dates in a circle
                                      border: Border.all(
                                        color: MediumGrey, // Green border for unselected dates
                                        width: 1.5, // Adjust the border thickness as needed
                                      ),
                                    ),
                                    weekendTextStyle: TextStyle(color: MediumGrey),
                                    todayDecoration: BoxDecoration(
                                      color: GreenColor, // Customize today's date color
                                      shape: BoxShape.circle,
                                    ),
                                    selectedDecoration: BoxDecoration(
                                      color: GreenColor, // Customize the selected day color
                                      shape: BoxShape.circle, // Wrap the selected day in a circle
                                    ),
                                    selectedTextStyle: const TextStyle(color: Colors.white), // Customize selected date text color
                                    defaultDecoration: BoxDecoration(
                                      shape: BoxShape.circle, // Wrap unselected dates in a circle
                                      border: Border.all(
                                        color: MediumGrey, // Green border for unselected dates
                                        width: 1.5, // Adjust the border thickness as needed
                                      ),
                                    ),
                                    defaultTextStyle: TextStyle(color: MediumGrey), // Text color for unselected dates
                                  ),
                                  onDaySelected: (selectedDay, focusedDay) {
                                    setState(() {
                                      this.selectedDay = selectedDay;
                                    });
                                  },
                                  // Customize the day builder to place the day name under the date
                                  calendarBuilders: CalendarBuilders(
                                    defaultBuilder: (context, day, focusedDay) {
                                      return Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [


                                          CircleAvatar(

                                            child: CircleAvatar(


                                              child: Text(
                                                day.day.toString(), // Show day number
                                                style: TextStyle(color: MediumGrey, fontWeight: FontWeight.w400, fontSize: 14, fontFamily: 'Proxima',),
                                              ),
                                              radius: 17,
                                              backgroundColor: Colors.white,
                                            ),
                                            radius: 18,
                                            backgroundColor: MediumGrey,
                                          ),


                                          Expanded(
                                            child: Text(
                                              getDayName(day), // Show day name under the day number
                                              style: TextStyle(color: MediumGrey, fontSize: 14, fontWeight: FontWeight.w400,  fontFamily: 'Proxima',), // Smaller font size for day name
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                    todayBuilder: (context, day, focusedDay) {
                                      return Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [

                                          CircleAvatar(



                                            child: Text(
                                              day.day.toString(), // Show today's date
                                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14, fontFamily: 'Proxima', ),
                                            ),
                                            radius: 18,
                                            backgroundColor: GreenColor,
                                          ),


                                          Expanded(
                                            child: Text(
                                              getDayName(day), // Show day name under the date
                                              style: TextStyle(color: BlackColor, fontSize: 14,fontWeight: FontWeight.w400,  fontFamily: 'Proxima', ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                )

                                // Helper function to get the day name

                                ,
                              ),

                              Divider(
                                color: OffwhiteColor,
                              ),
                              // Title for the daily schedule
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(
                                  'Window Tinting Shop',
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: GreenColor),

                                ),
                              ),
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                            width: 50, height: 50, child: const Text('9 AM')),
                                        Container(
                                            width: 50,
                                            height: 60,
                                            child: const Text('10 AM')),
                                        Container(
                                            width: 50,
                                            height: 50,
                                            child: const Text('11 AM')),
                                        Container(
                                            width: 50,
                                            height: 60,
                                            child: const Text('12 PM')),
                                        Container(
                                            width: 50, height: 60, child: const Text('1 PM')),
                                        Container(
                                            width: 50, height: 60, child: const Text('2 PM')),
                                        Container(
                                            width: 50, height: 60, child: const Text('3 PM')),
                                        Container(
                                            width: 50, height: 60, child: const Text('4 PM')),
                                        Container(
                                            width: 50, height: 50, child: const Text('5 PM')),
                                      ],
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: const Color(0xffE5F0FF),
                                            ),
                                            width: double.infinity,
                                            height: 150,
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Full Ceramic Tint',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w400,
                                                        color: BlackColor),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  Text(
                                                    '9:00 am - 11:00 am, 2 Hours, \$450',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w400,
                                                        color: BlackColor),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 2),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: const Color(0xffFFF2E5),
                                            ),
                                            width: double.infinity,
                                            height: 70,
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Windshield Tint',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w400,
                                                        color: BlackColor),
                                                  ),
                                                  Text(
                                                    '11:00 am - 12:00 pm, 1 Hour, \$200',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w400,
                                                        color: BlackColor),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 2),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: const Color(0xffFFE5F5),
                                            ),
                                            width: double.infinity,
                                            height: 150,
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Full Tint with Windshield Tint',
                                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: BlackColor),

                                                  ),
                                                  const SizedBox(height: 8),
                                                  Text(
                                                    '12:00 pm - 3:00 pm, 3 Hours, \$600',  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: BlackColor),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 2),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: const Color(0xffF1E5FF),
                                            ),
                                            width: double.infinity,
                                            height: 150,
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Full Regular Tint',
                                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: BlackColor),

                                                  ),
                                                  const SizedBox(height: 8),
                                                  Text(
                                                    '3:00 pm - 5:00 pm, 2 Hours, \$300',  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: BlackColor),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),


                    ],
                  ),
                ),
              ),
            )
        ],
      ),
      floatingActionButton: CircleAvatar(
        backgroundColor: GreenColor,
        radius: 30,
        child: FloatingActionButton(
          backgroundColor: WidgetStateColor.transparent,
          onPressed: () {
            setState(() {
              isclicked= true;
            });
          },
          child: const Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
