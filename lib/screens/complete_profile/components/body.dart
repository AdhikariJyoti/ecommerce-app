import 'package:flutter/material.dart';
import 'package:shop_app/screens/complete_profile/components/complete_profile_form.dart';
import 'package:shop_app/size_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionatedScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.02,),
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \n with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight*0.05,),
              CompleteProfileForm(),
              SizedBox(
                height: getProportionatedScreenHeight(30),
              ),
              Text(
                "By continuing you confirm that you agree \nwih our Term and Conditions",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
