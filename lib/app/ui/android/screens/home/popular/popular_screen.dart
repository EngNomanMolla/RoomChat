import 'package:flutter/material.dart';
class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [

            ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context,index){})


          ],
        ),
      ),

    );
  }
}
