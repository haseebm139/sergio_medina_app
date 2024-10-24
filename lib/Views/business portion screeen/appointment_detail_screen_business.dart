import 'package:flutter/material.dart';
import 'package:sergio_medina_app/utils.dart';
import 'package:table_calendar/table_calendar.dart';

class DailyScheduleScreen extends StatefulWidget {
  @override
  _DailyScheduleScreenState createState() => _DailyScheduleScreenState();
}

class _DailyScheduleScreenState extends State<DailyScheduleScreen> {
  DateTime? selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Schedule'),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Handle menu action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Calendar at the top
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: TableCalendar(

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
              daysOfWeekStyle: const DaysOfWeekStyle(
                weekendStyle: TextStyle(color: Colors.grey),
              ),
              calendarStyle: CalendarStyle(
                todayDecoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: GreenColor,
                  shape: BoxShape.circle,
                ),
              ),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  this.selectedDay = selectedDay;
                });
              },
            ),
          ),
          // Title for the daily schedule
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Window Tinting Shop',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(width: 50, height: 50, child: Text('9 AM')),
                    SizedBox(width: 50, height: 60, child: Text('10 AM')),
                    SizedBox(width: 50, height: 50, child: Text('11 AM')),
                    SizedBox(width: 50, height: 60, child: Text('12 PM')),
                    SizedBox(width: 50, height: 60, child: Text('1 PM')),
                    SizedBox(width: 50, height: 60, child: Text('2 PM')),
                    SizedBox(width: 50, height: 60, child: Text('3 PM')),
                    SizedBox(width: 50, height: 60, child: Text('4 PM')),
                    SizedBox(width: 50, height: 50, child: Text('5 PM')),
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
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Full Ceramic Tint',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Text('9:00 am - 11:00 am, 2 Hours, \$450'),
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
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Windshield Tint',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text('11:00 am - 12:00 pm, 1 Hour, \$200'),
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
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Full Tint with Windshield Tint',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Text('12:00 pm - 3:00 pm, 3 Hours, \$600'),
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
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Full Regular Tint',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Text('3:00 pm - 5:00 pm, 2 Hours, \$300'),
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
      ),
    );
  }
}
