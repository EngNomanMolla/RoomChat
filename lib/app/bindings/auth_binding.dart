import 'package:chat_room/app/controllers/auth_controller.dart';
import 'package:chat_room/app/controllers/gender_country_controller.dart';
import 'package:get/get.dart';

class AuthBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }
}


class GenderAndCountryBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => GenderAndCountryController());
  }
}