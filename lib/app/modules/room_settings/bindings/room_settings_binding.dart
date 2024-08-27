import 'package:get/get.dart';

import '../controllers/room_settings_controller.dart';

class RoomSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RoomSettingsController>(
      () => RoomSettingsController(),
    );
  }
}
