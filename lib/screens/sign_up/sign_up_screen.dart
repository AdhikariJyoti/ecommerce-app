import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_up/components/body.dart';
import 'package:shop_app/size_config.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";

  const SignUpScreen({Key? key}) : super(key: key);

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
