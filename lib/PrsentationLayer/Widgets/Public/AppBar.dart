import 'package:flutter/material.dart';
import '../../../Constants/ui_colors.dart';

PreferredSizeWidget customAppBar(BuildContext context) {
  return AppBar(
     leadingWidth: 200,
    backgroundColor: UIColors.primary,
    elevation: 0.0,
    leading:  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Image.asset(
        'assets/images/logo.png',
      ),
    ),
    // title: Image.asset(
    //   'assets/images/logo.png',
    //   height: 22,
    //   width: 119,
    // ),
    actions: [
      Builder(builder: (context) {
        return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.dehaze_outlined,
              size: 30,
              color: UIColors.white,
            ));
      }),
    ],
  );
}
