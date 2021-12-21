import 'package:flutter/material.dart';
import 'package:shop_app/screens/complete_profile/components/body.dart';

import '../../size_config.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";

  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign Up",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: getProportionatedScreenWidth(16),
              fontWeight: FontWeight.w100),
        ),
      ),
      body: Body(),
    );
  }
}
