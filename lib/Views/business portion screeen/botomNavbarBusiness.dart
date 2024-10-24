import 'package:flutter/material.dart';
import 'package:sergio_medina_app/Views/business%20portion%20screeen/activity_screen.dart';
import 'package:sergio_medina_app/Views/business%20portion%20screeen/home_screen_business.dart';
import 'package:sergio_medina_app/Views/business%20portion%20screeen/profile_screen_business.dart';
import 'package:sergio_medina_app/Views/business%20portion%20screeen/setting_screen_business.dart';
import 'package:sergio_medina_app/utils.dart';

class BottomNavBarBusiness extends StatefulWidget {
  const BottomNavBarBusiness({super.key});

  @override
  State<BottomNavBarBusiness> createState() => _BottomNavBarBusinessState();
}

class _BottomNavBarBusinessState extends State<BottomNavBarBusiness> {
  int selectedIndex = 0;

  List<Widget> listOfPages = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listOfPages = [
      HomeScreenBusiness(),
      const ActivityScreenBusiness(),
      const ProfileScreenBusiness(),
      const SettingScreenBussniess(),
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
