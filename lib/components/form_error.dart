import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';
class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(errors.length, (index) =>
          formErrorText(errors[index])),
    );
  }
  Row formErrorText(String error){
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: getProportionatedScreenHeight(14),
          width: getProportionatedScreenWidth(14),
        ),
        SizedBox(
          width: getProportionatedScreenWidth(10),
        ),
        Text(error),
      ],
    );
  }
}