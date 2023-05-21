import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';

class InstallmentScreen extends StatelessWidget {
  const InstallmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SchoolBottomNavigationBar(),
      appBar: schoolAppBar(
          title: Text("الحساب المالي",
              style: UITextStyle.titleBold.copyWith(fontSize: 20))),
      drawer: SchoolDrawer(),
    );
  }
}
