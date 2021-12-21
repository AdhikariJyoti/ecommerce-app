import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/rounded_icon_btn.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/details/components/body.dart';
import 'package:shop_app/size_config.dart';

import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      //by default background color is white
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(
        rating: arguments.product.rating
      ),
      body: Body( product: arguments.product),
    );
  }
}

// also need to pass our product to details screen
//and  use name route so  need to create a argument class
class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
