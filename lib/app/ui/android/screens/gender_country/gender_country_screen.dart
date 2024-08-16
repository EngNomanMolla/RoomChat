import 'package:chat_room/app/controllers/gender_country_controller.dart';
import 'package:chat_room/app/routes/route_names.dart';
import 'package:chat_room/app/ui/themes/colors.dart';
import 'package:chat_room/app/ui/themes/text_styles.dart';
import 'package:chat_room/app/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GenderAndCountryScreen extends StatelessWidget {
  GenderAndCountryScreen({super.key});

 final GenderAndCountryController genderAndCountryController=Get.find<GenderAndCountryController>();

 final TextEditingController nameController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.transparentColor,
        elevation: 0.0,
      ),
      body: GetBuilder<GenderAndCountryController>(
        builder: (_) {
          return Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Select Gender",
                    style: AllTextStyles.subHeadingBlackBoldTextStyle),

                SizedBox(height: 10.0),

                Row(children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        genderAndCountryController.changeGender(Gender.BOY);
                      },
                      child: Container(
                        height: 45.0,
                        decoration: BoxDecoration(
                          color: genderAndCountryController.selectedGender == Gender.BOY
                              ? AllColors.primaryColor
                              : AllColors.transparentColor,
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            width: 1.0,
                            color:genderAndCountryController.selectedGender == Gender.BOY
                                ? AllColors.primaryColor
                                : Colors.grey,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Boy",
                            style: TextStyle(
                                color:
                                genderAndCountryController.selectedGender == Gender.BOY
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat",
                                fontSize: 16.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                       genderAndCountryController.changeGender(Gender.GIRL);
                      },
                      child: Container(
                        height: 45.0,
                        decoration: BoxDecoration(
                          color: genderAndCountryController.selectedGender == Gender.GIRL
                              ? AllColors.primaryColor
                              : AllColors.transparentColor,
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            width: 1.0,
                            color:  genderAndCountryController.selectedGender == Gender.GIRL
                                ? AllColors.primaryColor
                                : Colors.grey,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Girl",
                            style: TextStyle(
                                color:
                                genderAndCountryController.selectedGender == Gender.GIRL
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat",
                                fontSize: 16.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        genderAndCountryController.changeGender(Gender.OTHERS);
                      },
                      child: Container(
                        height: 45.0,
                        decoration: BoxDecoration(
                          color: genderAndCountryController.selectedGender == Gender.OTHERS
                              ? AllColors.primaryColor
                              : AllColors.transparentColor,
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            width: 1.0,
                            color:genderAndCountryController.selectedGender == Gender.OTHERS
                                ? AllColors.primaryColor
                                : Colors.grey,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Others",
                            style: TextStyle(
                                color:
                                genderAndCountryController.selectedGender == Gender.OTHERS
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat",
                                fontSize: 16.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),

                SizedBox(height: 20.0),
                
                Text("Type Your Name",style: AllTextStyles.subHeadingBlackBoldTextStyle),

                SizedBox(height: 10.0),
                Container(
                  height: 45.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: AllColors.whiteColor,
                      border: Border.all(color: AllColors.greyColor)
                  ),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Ex: Abdullah Al Noman",
                      hintStyle: TextStyle(
                          color: AllColors.greyColor,
                          fontFamily: "Montserrat"),
                      contentPadding:
                      EdgeInsets.only(left: 10.0, bottom: 7.0),
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        color: AllColors.greyColor,
                        fontFamily: "Montserrat"),
                  ),
                ),

                SizedBox(height: 20.0),

                CustomButton(
                    height: 40.0,
                    width: Get.width,
                    color: AllColors.primaryColor,
                    title: "Next",
                    titleColor: AllColors.whiteColor,
                    onTap: () {
                       Get.toNamed(RouteNames.bottomNavBarScreen);
                    }),
              ],
            ),
          );
        },
      ),
    );
  }
}
