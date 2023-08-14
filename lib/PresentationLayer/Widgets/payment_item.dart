import 'package:flutter/material.dart';
import 'package:school_app/Constants/text_styles.dart';

import '../../Constants/colors.dart';


Widget paymentMethodItem(Widget icon, String text, bool selected) {
  return Container(
    margin: const EdgeInsets.only(left: 10),
    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border:  Border.all(
        color: UIColors.primary, //color of border
        width: 2, //width of border
      ),
      color: selected ? UIColors.gray : UIColors.white,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon,
        Text(
          text,
          style: UITextStyle.bodyNormal.apply(
              fontSizeDelta: 2,
              color: selected ? UIColors.black : UIColors.black,
              fontWeightDelta: selected ? 2 : 1),
        )
      ],
    ),
  );
}
