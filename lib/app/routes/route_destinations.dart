

import 'package:chat_room/app/bindings/auth_binding.dart';
import 'package:chat_room/app/routes/route_names.dart';
import 'package:chat_room/app/ui/android/screens/auth/login_screen.dart';
import 'package:chat_room/app/ui/android/screens/auth/otp_screen.dart';
import 'package:chat_room/app/ui/android/screens/gender_country/gender_country_screen.dart';
import 'package:get/get.dart';

class RouteDestinations{
  static List<GetPage> pages = [
    GetPage(name: RouteNames.loginScreen, page:()=> LoginScreen(),binding: AuthBinding()),
    GetPage(name: RouteNames.otpScreen, page:()=> OTPScreen()),
    GetPage(name: RouteNames.genderCountryScreen, page:()=> GenderAndCountryScreen(),binding: GenderAndCountryBinding()),
  ];
}