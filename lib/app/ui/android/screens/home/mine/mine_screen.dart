import 'package:chat_room/app/ui/themes/colors.dart';
import 'package:flutter/material.dart';
class MineScreen extends StatelessWidget {
  const MineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [

            SizedBox(height: 100.0,
              child: Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text("Create your room",style: TextStyle(
                    fontFamily: "Montserrat"
                  )),
                  subtitle: Text("Start your live journey on Chat Room!",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                         color: Colors.grey[500]
                      )
                  ),
                  trailing: CircleAvatar(
                    radius: 14.0,
                    backgroundColor: AllColors.primaryColor,
                    child: Icon(Icons.add,color: AllColors.whiteColor,size: 20.0),
                  ),
                ),
              )

              ,),

          ]
        ),
      ),
    );
  }
}
