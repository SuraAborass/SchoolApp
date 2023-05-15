import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';

class ExamsResultsScreen extends StatelessWidget {
  const ExamsResultsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SchoolBottomNavigationBar(),
      appBar: schoolAppBar(title: Text("نتائج الامتحانات",style: UITextStyle.titleBold.copyWith(fontSize: 20))),
      drawer: SchoolDrawer(),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 356,
              height: 300,
              decoration:  BoxDecoration(
                  color: UIColors.white,
                  border: Border.all(color: UIColors.primary,width: 1),
                  borderRadius: BorderRadius.circular(25)
              ),
            ),
            Positioned(
              top: 0,
              child: Container(
              width: 127,
              height: 28,
              decoration:  BoxDecoration(
                  color: UIColors.primary,
                  border: Border.all(color: UIColors.primary,width: 1),
                  borderRadius: BorderRadius.circular(25)
              ),
            ), )
          ],
        ),
      ), );
  }
}
