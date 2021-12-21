import 'package:flutter/material.dart';
import 'package:shop_app/screens/splash/components/body.dart';
import 'package:shop_app/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName="/splash";
  const SplashScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    //have to call it in starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
