import 'package:flutter/material.dart';
import 'package:shop_app/components/rounded_icon_btn.dart';
import 'package:shop_app/models/product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    //only for demo using fixed color for border
    int selectedColor = 3;
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getProportionatedScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
                (index) => ColorDot(
              color: product.colors[index],
              isSelected: selectedColor == index,
            ),
          ),
          Spacer(),
          RoundedIconBtn(
            iconData: Icons.add,
            press: () {},
          ),
          SizedBox(
            width: getProportionatedScreenWidth(15),
          ),
          RoundedIconBtn(
            iconData: Icons.remove,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: getProportionatedScreenWidth(40),
      width: getProportionatedScreenWidth(40),
      decoration: BoxDecoration(
        //color: product.colors[0],

        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? kPrimaryColor : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
