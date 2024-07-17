import 'package:flutter_chat_ui/flutter_chat_ui.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

import 'package:get/get.dart';

class ChatController extends GetxController{
  List<types.Message> _messages = [];

  void _addMessage(types.Message message) {
      _messages.insert(0, message);
      update();
  }

  // void _handleMessageTap(BuildContext _, types.Message message) async {
  //   if (message is types.FileMessage) {
  //     var localPath = message.uri;
  //
  //     if (message.uri.startsWith('http')) {
  //       try {
  //         final index =
  //         _messages.indexWhere((element) => element.id == message.id);
  //         final updatedMessage =
  //         (_messages[index] as types.FileMessage).copyWith(
  //           isLoading: true,
  //         );
  //
  //         setState(() {
  //           _messages[index] = updatedMessage;
  //         });
  //
  //         final client = http.Client();
  //         final request = await client.get(Uri.parse(message.uri));
  //         final bytes = request.bodyBytes;
  //         final documentsDir = (await getApplicationDocumentsDirectory()).path;
  //         localPath = '$documentsDir/${message.name}';
  //
  //         if (!File(localPath).existsSync()) {
  //           final file = File(localPath);
  //           await file.writeAsBytes(bytes);
  //         }
  //       } finally {
  //         final index =
  //         _messages.indexWhere((types.Message element) => element.id == message.id);
  //         final updatedMessage =
  //         (_messages[index] as types.FileMessage).copyWith(
  //           isLoading: null,
  //         );
  //
  //
  //           _messages[index] = updatedMessage;
  //           update();
  //
  //       }
  //     }
  //
  //     await OpenFilex.open(localPath);
  //   }
  // }


}