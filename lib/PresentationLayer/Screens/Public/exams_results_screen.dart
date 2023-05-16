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
      appBar: schoolAppBar(
          title: Text("نتائج الامتحانات",
              style: UITextStyle.titleBold.copyWith(fontSize: 20))),
      drawer: SchoolDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              child: Container(
                width: 330,
                height: 300,
                decoration: BoxDecoration(
                    color: UIColors.white,
                    border: Border.all(color: UIColors.primary, width: 1),
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
            Positioned(
              top: 0,
              right: 12,
              child: Container(
                width: 130,
                height: 28,
                decoration: BoxDecoration(
                    color: UIColors.white,
                    border: Border.all(color: UIColors.primary, width: 1),
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                    child: Text(
                  "المذاكرة الأولى",
                  style: UITextStyle.bodyNormal
                      .copyWith(color: UIColors.primary, fontSize: 18),
                )),
              ),
            ),
            Positioned(
                top: 30,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 318,
                      height: 42,
                      decoration: BoxDecoration(
                          color: UIColors.resultColor,
                          borderRadius: BorderRadius.circular(16)),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
