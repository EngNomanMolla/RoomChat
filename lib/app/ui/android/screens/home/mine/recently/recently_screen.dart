import 'package:chat_room/app/ui/themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loading_indicator/loading_indicator.dart';
class RecentlyScreen extends StatelessWidget {
  const RecentlyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context,index){
        return _cardView();
      }),
    );
  }

  Widget _cardView(){
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 4.0,right: 4.0,bottom: 4.0),
        child: Card(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: Image.asset("assets/images/jpg/girl.jpg",height: 80.0,width: 80.0,fit: BoxFit.cover)),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  Icon(Icons.flag,color: Colors.green),
                  Row(
                    children: [
                      Expanded(child: Text("Welcome to my room",style: TextStyle(
                        color: Colors.black54,
                        fontFamily: "Montserrat"
                      ),
                        overflow: TextOverflow.ellipsis,
                      )),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: SizedBox(
                          height: 23.0,
                          width: 23.0,
                          child: LoadingIndicator(
                              indicatorType: Indicator.audioEqualizer, /// Required, The loading type of the widget
                              colors: const [AllColors.primaryColor],       /// Optional, The color collections
                              strokeWidth: 1,                     /// Optional, The stroke of the line, only applicable to widget which contains line
                                /// Optional, the stroke backgroundColor
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 10.0),
                        child: Text("2",style: TextStyle(
                          fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontFamily: "Montserrat"
                        ),),
                      )
                    ],
                  ),
          
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }

}
