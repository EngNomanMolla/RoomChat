import 'package:chat_room/app/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 80.0),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset("assets/images/jpg/girl.jpg",
                            height: 38.0, width: 38.0, fit: BoxFit.cover)),
                    SizedBox(width: 20.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Abdullah Al Noman",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat')),
                        Row(
                          children: [
                            Text("ID: ${"676767"}",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Montserrat')),
                            SizedBox(width: 8.0),
                            Icon(Icons.copy, size: 14.0)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.0),
              Row(
                children: [
                  Expanded(
                      child: Column(children: [
                    Text("10",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat')),
                    Text("Following",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'))
                  ])),
                  Expanded(
                      child: Column(children: [
                    Text("100",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat')),
                    Text("Followers",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'))
                  ])),
                  Expanded(
                      child: Column(children: [
                    Text("5",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat')),
                    Text("Visitors",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'))
                  ]))
                ],
              ),
              SizedBox(height: 30.0),
              ListTile(
                leading: Icon(Icons.wallet_rounded),
                trailing: Icon(Icons.arrow_forward_ios, size: 16.0),
                title: Text(
                  "Wallet",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
                onTap: () => Get.toNamed(RouteNames.walletScreen),
              ),
              ListTile(
                leading: Icon(Icons.people_alt),
                trailing: Icon(Icons.arrow_forward_ios, size: 16.0),
                title: Text(
                  "Invite Friend",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
                onTap: () => Get.toNamed(RouteNames.inviteFriendScreen),
              ),
              ListTile(
                leading: Icon(Icons.leaderboard_rounded),
                trailing: Icon(Icons.arrow_forward_ios, size: 16.0),
                title: Text(
                  "Level",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
                onTap: () => Get.toNamed(RouteNames.levelScreen),
              ),
              ListTile(
                leading: Icon(Icons.leaderboard_rounded),
                trailing: Icon(Icons.arrow_forward_ios, size: 16.0),
                title: Text(
                  "Medal",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
                onTap: () => Get.toNamed(RouteNames.medalScreen),
              ),
              ListTile(
                leading: Icon(Icons.heart_broken),
                trailing: Icon(Icons.arrow_forward_ios, size: 16.0),
                title: Text(
                  "CP",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
                onTap: () {
                  Get.toNamed(RouteNames.cpScreen);
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag_outlined),
                trailing: Icon(Icons.arrow_forward_ios, size: 16.0),
                title: Text(
                  "Store",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
                onTap: () {
                  Get.toNamed(RouteNames.store);
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                trailing: Icon(Icons.arrow_forward_ios, size: 16.0),
                title: Text(
                  "My Items",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
                onTap: () {
                  Get.toNamed(RouteNames.myItems);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                trailing: Icon(Icons.arrow_forward_ios, size: 16.0),
                title: Text(
                  "Settings",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.logout_sharp),
                trailing: Icon(Icons.arrow_forward_ios, size: 16.0),
                title: Text(
                  "Logout",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
