import 'package:chat_room/app/ui/themes/colors.dart';
import 'package:chat_room/app/ui/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.transparentColor,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text("Enter your OTP",style: AllTextStyles.subHeadingBlackBoldTextStyle.copyWith(color: AllColors.primaryColor)),
            SizedBox(height: 20.0),

            OtpTextField(
              numberOfFields: 5,
              borderColor: AllColors.primaryColor,
              autoFocus: true,
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              cursorColor: AllColors.primaryColor,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    }
                );
              }, // end onSubmit
            ),
          ],
        ),
      ),
    );
  }
}
