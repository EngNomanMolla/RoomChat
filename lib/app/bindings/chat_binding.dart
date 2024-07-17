import 'package:chat_room/app/controllers/chat_controller.dart';
import 'package:get/get.dart';

class ChatBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ChatController());
  }
}