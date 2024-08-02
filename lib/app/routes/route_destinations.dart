

import 'package:chat_room/app/bindings/auth_binding.dart';
import 'package:chat_room/app/bindings/chat_binding.dart';
import 'package:chat_room/app/routes/route_names.dart';
import 'package:chat_room/app/ui/android/screens/auth/login_screen.dart';
import 'package:chat_room/app/ui/android/screens/auth/otp_screen.dart';
import 'package:chat_room/app/ui/android/screens/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:chat_room/app/ui/android/screens/chat/chat_screen.dart';
import 'package:chat_room/app/ui/android/screens/chat_room/chat_room_screen.dart';
import 'package:chat_room/app/ui/android/screens/gender_country/gender_country_screen.dart';
import 'package:chat_room/app/ui/android/screens/message/message_details_screen.dart';
import 'package:chat_room/app/ui/android/screens/message/message_screen.dart';
import 'package:get/get.dart';

class RouteDestinations{
  static List<GetPage> pages = [
    GetPage(name: RouteNames.loginScreen, page:()=> LoginScreen(),binding: AuthBinding()),
    GetPage(name: RouteNames.otpScreen, page:()=> OTPScreen()),
    GetPage(name: RouteNames.genderCountryScreen, page:()=> GenderAndCountryScreen(),binding: GenderAndCountryBinding()),
    GetPage(name: RouteNames.bottomNavBarScreen, page:()=> BottomNavBarScreen()),
    GetPage(name: RouteNames.chatScreen, page:()=> ChatScreen(),binding:ChatBinding()),
    GetPage(name: RouteNames.chatRoomScreen, page:()=> ChatRoomScreen()),
    GetPage(name: RouteNames.messageScreen, page:()=> MessageScreen()),
    GetPage(name: RouteNames.messageDetailsScreen, page:()=> MessageDetailsScreen()),
  ];
}