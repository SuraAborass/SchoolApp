import 'package:flutter/material.dart';
import '../../../BusinessLayer/Controllers/Bus_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Bus/bus_item.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';
import 'package:get/get.dart';


class BusScreen extends StatelessWidget {
   BusScreen({Key? key}) : super(key: key);
final BusController busController =  Get.find();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const SchoolBottomNavigationBar(),
        appBar: schoolAppBar(
            title: Text("الباص",
                style: UITextStyle.titleBold.copyWith(fontSize: 25))),
        drawer: SchoolDrawer(),
        body: GetBuilder(
            init: busController,
            builder: (context) {
              return SizedBox(
                height: Get.height - 170,
                child: ListView.builder(
                  itemCount: busController.busInfo.length,
                  itemBuilder: (context, index) {
                    return BusItem(
                      busInfo: busController.busInfo[index],
                      index: index,
                    );
                  },
                ),
              );
            }),
      ),
    );
  }
}
