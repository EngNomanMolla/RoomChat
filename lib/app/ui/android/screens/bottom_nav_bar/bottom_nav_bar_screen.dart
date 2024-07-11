import 'package:chat_room/app/ui/android/screens/home/home_screen.dart';
import 'package:chat_room/app/ui/android/screens/message/message_screen.dart';
import 'package:chat_room/app/ui/android/screens/profile/profile_screen.dart';
import 'package:chat_room/app/ui/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> with SingleTickerProviderStateMixin {

  List<Widget> pages = [HomeScreen(), MessageScreen(), ProfileScreen()];
  int _currentIndex = 0;
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();
    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _motionTabBarController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: MotionTabBar(
        controller: _motionTabBarController,
        initialSelectedTab: "Home",
        labels: const ["Home", "Message", "Profile"],
        icons: const [Icons.home, Icons.message, Icons.people_alt],
        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: AllColors.primaryColor,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: AllColors.primaryColor,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: AllColors.primaryColor,
        tabIconSelectedColor: Colors.white,
        tabBarColor: Colors.white,
        onTabItemSelected: (int value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
