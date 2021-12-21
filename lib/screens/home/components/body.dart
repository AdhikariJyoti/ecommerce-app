import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/categories.dart';
import 'package:shop_app/screens/home/components/discount_banner.dart';
import 'package:shop_app/screens/home/components/home_header.dart';
import 'package:shop_app/screens/home/components/popular_products.dart';
import 'package:shop_app/screens/home/components/special_offers.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionatedScreenWidth(20),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionatedScreenWidth(30),
            ),
            DiscountBanner(),
            SizedBox(
              height: getProportionatedScreenWidth(30),
            ),
            Categories(),
            SizedBox(
              height: getProportionatedScreenWidth(30),
            ),
            SpecialOffers(),
            SizedBox(
              height: getProportionatedScreenWidth(30),
            ),
            PopularProducts(),
            SizedBox(
              height: getProportionatedScreenWidth(30),
            ),
          ],
        ),
      ),
    );
  }
}
