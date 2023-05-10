import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';


PreferredSizeWidget mainAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: UIColors.primary,
    elevation: 0.0,
    // flexibleSpace: Container(decoration: const BoxDecoration(
    //     image:DecorationImage(image: AssetImage('assets/images/school-elements.png'),fit: BoxFit.cover,opacity: 205)),),
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
