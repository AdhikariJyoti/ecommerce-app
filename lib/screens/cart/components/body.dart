import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/cart.dart';
import 'package:shop_app/screens/cart/components/cart_item_card.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionatedScreenWidth(20),
      ),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Dismissible(
            key: Key(demoCarts[index].product.id.toString()),
            direction:DismissDirection.endToStart ,
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Spacer(),
                  SvgPicture.asset("assets/icons/Trash.svg"),
                ],
              ),
            ),
            onDismissed: (direction){
              setState(() {
                demoCarts.removeAt(index);
              });

            },
            child: CartItemCard(
              cart: demoCarts[index],
            ),
          ),
        ),
      ),
    );
  }
}
