import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shop_app/screens/otp/components/otp_form.dart';
import 'package:shop_app/size_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionatedScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              Text(
                "OTP verification",
                style: headingStyle,
              ),
              Text("We sent OTP code to +9771234567890 ***"),
              buildTimer(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.15,
              ),
              OtpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ), //10%
              GestureDetector(
                onTap: () {
                  //resend your otp
                },
                child: Text(
                  "Resend OTP Code",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will be expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (context,value, child) => Text(
            "00 :${value!}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        )
      ],
    );
  }
}
