import 'package:chat_room/app/routes/route_names.dart';
import 'package:chat_room/app/ui/themes/colors.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [

            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context,index){
              
                   return _popularCardView(context);
              
                  }),
            )


          ],
        ),
      ),

    );
  }

  _popularCardView(BuildContext context){

    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: GestureDetector(
        onTap: (){
          Get.toNamed(RouteNames.chatRoomScreen);
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0,bottom: 12.0,left: 10.0,right: 10.0),
            child: Row(
              children: [
                Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Text("সবার কাছে পর হয়ে আছি উপায় নেই আমার",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AllColors.blackColor
                    ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Text("সবার কাছে পর হয়ে আছি উপায় নেই আমার",style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12.0,
                        color: AllColors.greyColor
                    ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 5.0),

                  SizedBox(
                    height: 28,
                    child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              height: 28.0,
                              width: 28.0,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset('assets/images/jpg/girl.jpg',fit: BoxFit.cover)),
                            ),
                          );
                        }),
                  )



                ])),
                Container(height: 50,width: 50),


              ],
            ),
          ),
        ),
      ),
    );

  }


}
