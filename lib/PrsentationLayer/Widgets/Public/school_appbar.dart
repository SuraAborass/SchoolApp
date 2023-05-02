import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';


PreferredSizeWidget schoolAppBar(
    {Widget? leading, List<Widget> actions = const [],title}) {
  return AppBar(
    elevation: 0.0,
    centerTitle: true,
    title: title,
    backgroundColor: UIColors.primary,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(24),
      ),
    ),
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
  );
}