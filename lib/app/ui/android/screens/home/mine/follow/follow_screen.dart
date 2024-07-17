import 'package:chat_room/app/ui/themes/colors.dart';
import 'package:chat_room/app/ui/themes/text_styles.dart';
import 'package:flutter/material.dart';
class FollowScreen extends StatelessWidget {
  const FollowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView.separated(
          itemCount: 10,
          itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(
                  backgroundColor: AllColors.primaryColor.withOpacity(0.1),
                  radius: 25.0,
                  child:ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset("assets/images/jpg/girl.jpg",height: 45.0,width: 45.0,fit: BoxFit.cover))) ,

              title: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Abdullah Al Noman",style: AllTextStyles.titleBlackBoldTextStyle.copyWith(fontSize: 14.0)),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text("10/7 2024",style: TextStyle(
                          color: AllColors.greyColor,
                          fontSize: 12.0,
                          fontFamily: 'Montserrat'
                      )),
                    )
                  ]),
              subtitle: Text("I followed you",style: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Montserrat"
              )),
            );
          }, separatorBuilder: (context,index){
        return Divider(
          color: AllColors.greyColor,
          thickness: 0.3,
          indent: 18.0,
          endIndent: 18.0,
        );
      }),
    );
  }
}
