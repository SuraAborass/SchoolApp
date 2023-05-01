import 'package:flutter/material.dart';
import '../../../Constants/ui_colors.dart';
import '../../../Constants/ui_text_styles.dart';


PreferredSizeWidget schoolAppBar(
    {Widget? leading, List<Widget> actions = const []}) {
  return AppBar(
    elevation: 0.0,
    centerTitle: true,
    backgroundColor: UIColors.primary,
    title:  Text("المواد",style: UITextStyle.titleBold.copyWith(fontSize: 25),),
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