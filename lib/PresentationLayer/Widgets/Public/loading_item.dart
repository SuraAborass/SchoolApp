import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget loadingItem( {double size = 30}) {
  return LottieBuilder.asset(
   "assets/images/animation_lkuy8zo2.json",
    height: size,
    width: size,
  );
}
