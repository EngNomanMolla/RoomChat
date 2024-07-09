import 'package:get/get.dart';


enum Gender { GIRL, BOY, OTHERS }

class GenderAndCountryController extends GetxController{

  Gender selectedGender= Gender.BOY;


 void changeGender(Gender gender){
    selectedGender=gender;
    update();
  }


}