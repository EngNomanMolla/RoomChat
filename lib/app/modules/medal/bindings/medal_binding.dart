import 'package:get/get.dart';

import '../controllers/medal_controller.dart';

class MedalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MedalController>(
      () => MedalController(),
    );
  }
}
