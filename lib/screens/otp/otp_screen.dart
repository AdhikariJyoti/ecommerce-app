import 'package:flutter/material.dart';
import 'package:shop_app/screens/otp/components/body.dart';

import '../../size_config.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";

  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "OTP Verification",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: getProportionatedScreenWidth(16),
              fontWeight: FontWeight.w100),
        ),
      ),
      body: Body(

      ),
    );
  }
}
