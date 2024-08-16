import 'package:chat_room/app/ui/android/screens/home/mine/follow/follow_screen.dart';
import 'package:chat_room/app/ui/android/screens/home/mine/recently/recently_screen.dart';
import 'package:chat_room/app/ui/themes/colors.dart';
import 'package:flutter/material.dart';

class MineScreen extends StatelessWidget {
  const MineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 100.0,
                child: Card(
                  child: ListTile(
                    leading: FlutterLogo(),
                    title: const Text(
                      "Create your room",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                      ),
                    ),
                    subtitle: Text(
                      "Start your live journey on Chat Room!",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        color: Colors.grey[500],
                      ),
                    ),
                    trailing: CircleAvatar(
                      radius: 14.0,
                      backgroundColor: AllColors.primaryColor,
                      child: Icon(Icons.add, color: AllColors.whiteColor, size: 20.0),
                    ),
                  ),
                ),
              ),
             // SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 6.0,right: 6.0),
                child: TabBar(
                  // indicator: BoxDecoration(
                  //   border: Border(
                  //     left: BorderSide(
                  //       color: AllColors.primaryColor,
                  //       width: 3.0,
                  //     ),
                  //
                  //   ),
                  //   color: AllColors.primaryColor.withOpacity(0.1),
                  //   borderRadius: BorderRadius.circular(6.0),
                  //
                  // ),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: AllColors.primaryColor,
                  labelColor: AllColors.primaryColor,
                  unselectedLabelColor: Colors.grey,
                  dividerHeight: 0.0,
                  labelStyle: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: AllColors.whiteColor,
                    fontFamily: "Montserrat"
                  ),
                  tabs: const [
                    Tab(text: "Recently"),
                    Tab(text: "Follow"),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Expanded(
                child: TabBarView(
                  children: [
                    Center(child:RecentlyScreen()),
                    Center(child: FollowScreen()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
