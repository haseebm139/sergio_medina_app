import 'package:flutter/material.dart';
import 'package:sergio_medina_app/utils.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class CalenderScreen extends StatefulWidget {
  @override
  _CalenderScreenState createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  Map<DateTime, List<Event>> _events = {};

  @override
  void initState() {
    super.initState();
    _events = {
      DateTime(2024, 10, 13): [const Event('Red Dot')],
      DateTime(2024, 10, 14): [const Event('Flame')],
      DateTime(2024, 10, 19): [const Event('Yellow Dot')],
      DateTime(2024, 10, 30): [const Event('Green Dot')],
    };
  }

  List<Event> _getEventsForDay(DateTime day) {
    return _events[DateTime(day.year, day.month, day.day)] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            border: Border.all(color: InputfiedlBorderColor),
            color: WhiteColor,
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            // Custom header
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Month and Year
                  Text(
                    DateFormat('MMMM y').format(_focusedDay), // Display month and year
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: BlackColor),
                  ),
                  // Navigation buttons
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.chevron_left, color: Grey),
                        onPressed: () {
                          setState(() {
                            _focusedDay = DateTime(
                              _focusedDay.year,
                              _focusedDay.month - 1,
                              1,
                            );
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.chevron_right, color: Grey),
                        onPressed: () {
                          setState(() {
                            _focusedDay = DateTime(
                              _focusedDay.year,
                              _focusedDay.month + 1,
                              1,
                            );
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // TableCalendar
            Expanded(
              child: TableCalendar(
                daysOfWeekHeight: 20,
                rowHeight: 50,
                weekendDays: const [],
                weekNumbersVisible: false,
                firstDay: DateTime.utc(2020, 1, 1),
                lastDay: DateTime.utc(2030, 12, 31),
                focusedDay: _focusedDay,
                calendarFormat: _calendarFormat,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                },
                eventLoader: _getEventsForDay,
                onFormatChanged: (format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                },
                onPageChanged: (focusedDay) {
                  setState(() {
                    _focusedDay = focusedDay;
                  });
                },
                calendarBuilders: CalendarBuilders(
                  markerBuilder: (context, day, events) {
                    if (events.isNotEmpty) {
                      final event = events.first as Event;

                      if (event.title == 'Red Dot') {
                        return _buildMarker(Colors.red);
                      } else if (event.title == 'Flame') {
                        return _buildFlameMarker();
                      } else if (event.title == 'Yellow Dot') {
                        return _buildMarker(Colors.yellow);
                      } else if (event.title == 'Green Dot') {
                        return _buildMarker(Colors.green);
                      }
                    }
                    return null;
                  },
                ),
                headerVisible: false,
                availableGestures: AvailableGestures.horizontalSwipe, // Disable vertical scrolling
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: false, // Disable the default title centered
                ),
                daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: BlackColor,
                  ),
                  weekendStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: BlackColor,
                  ),
                ),
                calendarStyle: CalendarStyle(
                  markersAutoAligned: true,
                  todayDecoration:  BoxDecoration(
                    color: GreenColor,
                    shape: BoxShape.circle,
                  ),
                  selectedDecoration: BoxDecoration(
                    color: GreenColor,
                    shape: BoxShape.circle,
                  ),
                  outsideDaysVisible: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMarker(Color color) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }

  Widget _buildFlameMarker() {
    return Image.asset(
      'assets/flame.png',
      width: 16,
      height: 16,
    );
  }
}

class Event {
  final String title;
  const Event(this.title);
}
