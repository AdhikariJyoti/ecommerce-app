import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionatedScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              widget.product.images[selectedImage],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.images.length,
                  (index) => buildSmallPreview(index),
            ),
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(
          right: getProportionatedScreenWidth(15),
        ),
        padding: EdgeInsets.all(
          getProportionatedScreenHeight(8),
        ),
        height: getProportionatedScreenWidth(48),
        width: getProportionatedScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: selectedImage == index ? kPrimaryColor : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
