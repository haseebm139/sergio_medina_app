import 'package:flutter/material.dart';
import 'package:sergio_medina_app/Views/Bottom%20Nav%20Bar/botom%20nav%20bar%20screens/activity_screen.dart';
import 'package:sergio_medina_app/Views/Bottom%20Nav%20Bar/botom%20nav%20bar%20screens/home_screen.dart';
import 'package:sergio_medina_app/Views/Bottom%20Nav%20Bar/botom%20nav%20bar%20screens/profile_screen.dart';
import 'package:sergio_medina_app/Views/Bottom%20Nav%20Bar/botom%20nav%20bar%20screens/setting_screen.dart';
import 'package:sergio_medina_app/utils.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  List<Widget> listOfPages = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listOfPages = [
      const HomeScreenClient(),
      const ActivityScreen(),
      const ProfileScreen(),
      const SettingScreen()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfPages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) {
          setState(() {
            selectedIndex = newIndex;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: WhiteColor,
        selectedItemColor: GreenColor,
        unselectedItemColor: MediumGrey,
        currentIndex: selectedIndex,
        items: [
           BottomNavigationBarItem(
              icon: Image.asset('assets/Home_inactives.png'),
              activeIcon: Image.asset('assets/homeactive.png'),
              label: 'Home'),
           BottomNavigationBarItem(
              icon: Image.asset('assets/Bell_inactive.png'),
              activeIcon: Image.asset('assets/Bell_active.png'),
              label: 'Activity'),
           BottomNavigationBarItem(
               icon: Image.asset('assets/Profile_inactive.png'),
               activeIcon: Image.asset('assets/Profile_active.png'),
              label: 'Profile'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/Setting_inactive.png'),
              activeIcon: Image.asset('assets/settingactive.png'),

              label: 'Settings'),
        ],
      ),
    );
  }
}
