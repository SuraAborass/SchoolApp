import 'package:flutter/material.dart';
import '../../../Constants/ui_colors.dart';


PreferredSizeWidget customAppBar({Widget? bool }) {
  return AppBar(
    backgroundColor: UIColors.primary,
    elevation: 0.0,
    // shape: const RoundedRectangleBorder(
    //   borderRadius: BorderRadius.only(
    //     bottomRight: Radius.circular(24),
    //   ),
    // ),
    flexibleSpace: Container(decoration: const BoxDecoration(
        image:DecorationImage(image: AssetImage('assets/images/Image 2.png'),fit: BoxFit.cover)),),
    leading:   Builder(builder: (context) {
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

    // title: Image.asset(
    //   'assets/images/logo.png',
    //   height: 22,
    //   width: 119,
    // ),
    actions: [
    Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(top: 14.0,left: 14),
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
      )
    ],
  );
}
