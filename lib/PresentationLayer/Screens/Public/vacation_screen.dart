import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/vacation_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';
import '../../Widgets/Vacations/vacation_item.dart';

class VacationsScreen extends StatelessWidget {
   VacationsScreen({Key? key}) : super(key: key);
final VacationController vacationController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SchoolBottomNavigationBar(),
      appBar: schoolAppBar(title: Text("العطل",style: UITextStyle.titleBold.copyWith(fontSize: 20))),
      drawer: SchoolDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: GetBuilder(
            init: vacationController,
            builder: (context) {
              return SizedBox(
                height: Get.height-250,
                child: ListView.builder(
                  itemCount: vacationController.vacations.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, i){
                    return   VacationItem(vacation: vacationController.vacations[i],);
                  },
                ),
              );
            }
        ),
      ),
    );
  }
}
