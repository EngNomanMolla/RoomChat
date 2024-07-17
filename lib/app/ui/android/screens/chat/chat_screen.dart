import 'package:chat_room/app/controllers/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:get/get.dart';
class ChatScreen extends StatelessWidget {
   ChatScreen({super.key});

   final ChatController chatController=Get.find<ChatController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text("Abdullah Al Noman",style: TextStyle(
          fontFamily: 'Montserrat'
        ),),
      ),
      body: GetBuilder<ChatController>(
        builder: (_){
          return Container();

          // return Chat(
          //   messages: _messages,
          //   onMessageTap: _handleMessageTap,
          //   onPreviewDataFetched: _handlePreviewDataFetched,
          //   onSendPressed: _handleSendPressed,
          //   showUserAvatars: true,
          //   showUserNames: true,
          //   user: _user,
          // );
        },
      ),
    );
  }
}
