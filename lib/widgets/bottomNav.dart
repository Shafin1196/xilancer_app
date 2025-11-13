import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xilancer_app/constant/const_methods.dart';
import 'package:xilancer_app/constant/constant.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var bottomBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    final height = screenHeight(ctx: context);
    // ignore: unused_local_variable
    final width = screenWidth(ctx: context);
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed, 
        currentIndex: bottomBarIndex,
        selectedFontSize: height * .02,
        selectedItemColor: bottoBarItemActive,
        selectedLabelStyle: GoogleFonts.inter(
          fontSize: height * 0.018,
          fontWeight: FontWeight.w500,
          color: bottoBarItemActive,
        ),
        selectedIconTheme: IconThemeData(size: height * 0.030), // Bigger icon
        unselectedIconTheme: IconThemeData(size: height * 0.026), // Smaller icon
        unselectedItemColor: bottoBarItemInactive,
        unselectedLabelStyle: TextStyle(
          color: bottoBarItemInactive,
          fontSize: height* 0.015
          ),
        onTap: (value) {
          setState(() {
            bottomBarIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: "Home"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined), 
            label: "Inbox"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), 
            label: "Search"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined), 
            label: "More"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined), 
            label: "Profile"
            ),
        ],
      );
  }
}