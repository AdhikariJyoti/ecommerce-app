import 'package:flutter/material.dart';
import 'package:shop_app/components/social_card.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/sign_up/components/sign_up_form.dart';
import 'package:shop_app/size_config.dart';

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
                  height: SizeConfig.screenHeight * 0.02 //2%of total height
                  ),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \n with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  height: SizeConfig.screenHeight * 0.07), //8% of total height
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(
                height: getProportionatedScreenHeight(20),
              ),
              Text(
                "By continuing you confirm that your agree \n with our Term and Conditions",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
