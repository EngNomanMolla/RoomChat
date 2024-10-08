import 'package:chat_room/app/const/locals.dart';
import 'package:chat_room/app/routes/route_destinations.dart';
import 'package:chat_room/app/routes/route_names.dart';
import 'package:chat_room/app/ui/android/screens/auth/login_screen.dart';
import 'package:chat_room/app/ui/android/screens/chat/chat_screen.dart';
import 'package:chat_room/app/ui/android/screens/home/mine/follow/follow_screen.dart';
import 'package:chat_room/app/ui/android/screens/home/popular/popular_screen.dart';
import 'package:chat_room/app/ui/android/screens/profile/profile_screen.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      supportedLocales:locals,
      localizationsDelegates: [
        CountryLocalizations.delegate,
      ],
      getPages: RouteDestinations.pages,
     initialRoute: RouteNames.loginScreen,
    );
  }
}

