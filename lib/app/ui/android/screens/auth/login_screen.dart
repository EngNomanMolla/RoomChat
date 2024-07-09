import 'package:chat_room/app/controllers/auth_controller.dart';
import 'package:chat_room/app/routes/route_names.dart';
import 'package:chat_room/app/ui/themes/colors.dart';
import 'package:chat_room/app/ui/themes/text_styles.dart';
import 'package:chat_room/app/ui/widgets/custom_button.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController textEditingController = TextEditingController();
  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: GetBuilder<AuthController>(
        builder: (_) {
          return Container(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    flex: 4,
                    child: Icon(Icons.person, size: 80.0, color: AllColors.primaryColor)),
                //SizedBox(height: 40.0),

                Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Row(children: [
                          Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () {
                                  openCountryCodeBottomSheet(context);
                                },
                                child: Container(
                                  height: 45.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: AllColors.whiteColor,
                                      border:
                                      Border.all(color: AllColors.primaryColor)),
                                  child: Center(
                                    child: Text(
                                      authController.countryCode,
                                      style: TextStyle(
                                          color: AllColors.greyColor,
                                          fontFamily: "Montserrat"),
                                    ),
                                  ),
                                ),
                              )),
                          SizedBox(width: 12.0),
                          Expanded(
                              flex: 4,
                              child: Container(
                                height: 45.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: AllColors.whiteColor,
                                    border: Border.all(color: AllColors.primaryColor)),
                                child: TextField(
                                  controller: textEditingController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "01777533669",
                                    hintStyle: TextStyle(
                                        color: AllColors.greyColor,
                                        fontFamily: "Montserrat"),
                                    contentPadding:
                                    EdgeInsets.only(left: 10.0, bottom: 5.0),
                                  ),
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                      color: AllColors.greyColor,
                                      fontFamily: "Montserrat"),
                                ),
                              ))
                        ]),
                        SizedBox(height: 20.0),
                        CustomButton(
                            height: 40.0,
                            width: Get.width,
                            color: AllColors.primaryColor,
                            title: "Send OTP",
                            titleColor: AllColors.whiteColor,
                            onTap: () {
                              Get.toNamed(RouteNames.otpScreen);
                            }),
                      ],
                    )),

                Expanded(
                    flex: 4,
                    child: Column(

                  children: [
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Divider(
                            color: AllColors.primaryColor,
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Or auth",
                            style: TextStyle(
                                color: AllColors.primaryColor,
                                fontFamily: "Montserrat"),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: AllColors.primaryColor,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20.0),

                    Container(
                      child: Card(
                          color: AllColors.whiteColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.face),
                                Expanded(child: Center(child: Text("Facebook",style: AllTextStyles.subHeadingBlackBoldTextStyle.copyWith(color: AllColors.primaryColor))))
                              ],
                            ),
                          )
                      ),
                    ),
                    SizedBox(height: 5.0),

                    Container(
                      child: Card(
                          color: AllColors.whiteColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.face),
                                Expanded(child: Center(child: Text("Google",style: AllTextStyles.subHeadingBlackBoldTextStyle.copyWith(color: AllColors.primaryColor))))
                              ],
                            ),
                          )
                      ),
                    )
                  ],
                )),





              ],
            ),
          );
        },
      ),
    );
  }

  void openCountryCodeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: EdgeInsets.all(16.0),
        child: CountryCodePicker(
          onChanged: (countryCode) {
            authController.countryCode = countryCode.dialCode!;
            authController.update();
            Navigator.pop(context);
          },
          initialSelection: authController.countryCode,
          favorite: ['+880', 'BD'],
          showCountryOnly: false,
          showOnlyCountryWhenClosed: false,
          alignLeft: false,
        ),
      ),
    );
  }
}
