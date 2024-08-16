import 'package:chat_room/app/ui/android/screens/home/mine/mine_screen.dart';
import 'package:chat_room/app/ui/android/screens/home/popular/popular_screen.dart';
import 'package:chat_room/app/ui/themes/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Chat Room',
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: AllColors.whiteColor,
            ),
          ),
          backgroundColor: AllColors.primaryColor,
          bottom: TabBar(
            indicatorColor: AllColors.whiteColor,
            labelColor: AllColors.whiteColor,
            unselectedLabelColor: AllColors.greyColor,
            indicatorWeight: 4.0,
            labelStyle: TextStyle(
              fontSize: 16.0,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold
            ),
            tabs: const [
              Tab(text: 'Mine',),
              Tab(text: 'Popular'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MineScreen(),
            PopularScreen()
          ],
        ),
      ),
    );
  }
}
