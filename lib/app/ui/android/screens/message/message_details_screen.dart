import 'package:chat_room/app/controllers/message_controller.dart';
import 'package:chat_room/app/ui/themes/colors.dart';
import 'package:chatview/chatview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MessageDetailsScreen extends StatelessWidget {

 final MessageController messageController=Get.put(MessageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios,size: 20.0),
        ),
        title: Text('Mst. Nipa Akter',style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 20.0
        )),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.call,size: 20.0))
        ],
      ),
      body: GetBuilder<MessageController>(builder: (_){
        return Column(
          children: [
            Container(
               child:  Expanded(
                 child: ChatView(
                    chatController: messageController.chatController,
                    //onSendTap: messageController.onSendTap,
                   onSendTap: (String message, ReplyMessage replyMessage, MessageType messageType) {
                     // Handle the message based on its type
                     if (messageType == MessageType.text) {
                       messageController.sendMessage(message, replyMessage,messageType);
                     }
                     // Handle image message

                   },
                   chatViewState: ChatViewState.hasMessages,
                   sendMessageConfig: SendMessageConfiguration(
                     enableCameraImagePicker: false,
                     enableGalleryImagePicker: false,
                     allowRecordingVoice: false
                   ),
                  ),
               ),
            ),

            // Padding(
            //   padding: const EdgeInsets.only(left: 8.0,right: 8.0),
            //   child: Container(
            //     height: 37.3,
            //     decoration: BoxDecoration(
            //         color:  AllColors.whiteColor,
            //         borderRadius: BorderRadius.circular(30.0)
            //     ),
            //     child: TextField(
            //       decoration: InputDecoration(
            //         border: InputBorder.none,
            //         suffixIcon: Icon(Icons.send,size: 18.0),
            //         contentPadding: EdgeInsets.only(left: 10.0,bottom: 10.0),
            //         hintText: 'Write your message...',
            //         hintStyle: TextStyle(
            //           color: Colors.grey,
            //           fontWeight: FontWeight.w600,
            //           fontSize: 14,
            //           fontFamily: 'Montserrat',
            //         ),
            //       ),
            //     ),
            //   ),
            // )
          ],
        );
      })
    );
  }
}
