import 'package:chatview/chatview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageController extends GetxController{

  late ChatController chatController ;

  List<Message> messageList = [
    Message(
      id: '1',
      message: "Hi",
      createdAt: DateTime.now(),
      sentBy: '1',
    ),
    Message(
      id: '2',
      message: "Hello",
      createdAt: DateTime.now(),
      sentBy: '2',
    ),

    Message(
      id: '1',
      message: "How Are you?",
      createdAt: DateTime.now(),
      sentBy: '1',
    ),
    Message(
      id: '2',
      message: "I am fine.",
      createdAt: DateTime.now(),
      sentBy: '2',
    ),
    Message(
      id: '1',
      message: "Where are you from?",
      createdAt: DateTime.now(),
      sentBy: '1',
    ),
    Message(
      id: '2',
      message: "I am from Dhaka.",
      createdAt: DateTime.now(),
      sentBy: '2',
    ),
  ];

@override
  void onInit() {
   chatController = ChatController(
    initialMessageList: messageList,
    scrollController: ScrollController(),
    currentUser: ChatUser(id: '1', name: 'Noman'),
    otherUsers: [ChatUser(id: '2', name: 'Nipa')],
  );
    super.onInit();
  }


  void sendMessage(String message, ReplyMessage replyMessage, MessageType messageType) {
    final newMessage = Message(
      id: '3',  // Generate a unique ID or use a UUID
      message: message,
      createdAt: DateTime.now(),
      replyMessage: replyMessage,
      messageType: messageType,
      sentBy: '1',  // Use the ID of the current user
    );
    chatController.addMessage(newMessage);
    update();
  }



}
