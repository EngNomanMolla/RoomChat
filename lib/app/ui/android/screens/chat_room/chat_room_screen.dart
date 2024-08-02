import 'package:chat_room/app/ui/themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'dart:ui';

import 'package:text_marquee/text_marquee.dart';

class ChatRoomScreen extends StatelessWidget {
  const ChatRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/jpg/flower.jpg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
          child: Container(
            padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
            color: Colors.black.withOpacity(0.6),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 35.0,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 35.0,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/jpg/girl.jpg',
                                height: 35.0,
                                width: 35.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: Column(children: [
                              TextMarquee(
                                'Stay close to anything that makes you glad you are alive',
                                spaceSize: 12,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                              Row(children: [
                                Text(
                                  'ID:',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                                SizedBox(width: 3.0),
                                Text(
                                  '787878',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                                SizedBox(width: 16.0),
                                Icon(Icons.person, size: 10.0, color: AllColors.whiteColor),
                                SizedBox(width: 3.0),
                                Text(
                                  '7',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ])
                            ]),
                          ),
                          SizedBox(width: 10.0),
                          SizedBox(
                            width: 55.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.mobile_screen_share_outlined, color: AllColors.whiteColor, size: 20.0),
                                SizedBox(width: 5.0),
                                Icon(Icons.login_outlined, color: AllColors.whiteColor, size: 20.0),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.0),
                Column(
                  children: [
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black26, width: 1.0),
                      ),
                      child: Icon(Icons.mic, color: Colors.black),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                      'Owner',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),
                Expanded(
                  flex: 7,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, // Number of columns
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 1.0, // Aspect ratio for each grid item
                    ),
                    itemCount: 12, // Number of items in the grid
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black26, width: 1.0),
                            ),
                            child: Icon(Icons.mic, color: Colors.black),
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            'No. ${index+1}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expanded(child: Container()),
                      Container(
                        height: 60.0,
                        width: Get.width,
                        child: Row(
                          children: [
                            Icon(Icons.mic, color: AllColors.whiteColor),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                                child: Container(
                                  height: 37.3,
                                  decoration: BoxDecoration(
                                    color:  AllColors.whiteColor,
                                    borderRadius: BorderRadius.circular(30.0)
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      suffixIcon: Icon(Icons.send,size: 18.0),
                                      contentPadding: EdgeInsets.only(left: 10.0,bottom: 10.0),
                                      hintText: 'Write your message...',
                                      hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                    ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
