import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/Constants/colors.dart';
import '../../../BusinessLayer/Controllers/alerts_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Alerts/alert_item.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';
import '../../Widgets/Shimmers/homework_shimmer.dart';

class AlertsScreen extends StatelessWidget {
  AlertsScreen({Key? key}) : super(key: key);
  final AlertsController alertsController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const SchoolBottomNavigationBar(),
        appBar: schoolAppBar(
            title: Text("التنبيهات",
                style: UITextStyle.titleBold.copyWith(fontSize: 20))),
        drawer: SchoolDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GetBuilder(
              init: alertsController,
              builder: (context) {
                return alertsController.loading.value == true
                    ? SizedBox(
                        height: Get.height - 250,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 8,
                          itemBuilder: (BuildContext context, int index) {
                            return const HomeworkShimmer();
                          },
                        ),
                      )
                    : RefreshIndicator(
                        onRefresh: () async {
                          alertsController.getAlerts();
                        },
                        child: alertsController.alerts.isEmpty
                            ? SizedBox(
                                height: Get.height - 200,
                                child: Center(
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: [
                                      Text(
                                        "لايوجد تنبيهات!",
                                        style: UITextStyle.titleBold.copyWith(
                                            fontSize: 16,
                                            color: UIColors.lightBlack),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : SizedBox(
                                height: Get.height - 170,
                                child: ListView.builder(
                                  itemCount: alertsController.alerts.length,
                                  itemBuilder: (context, i) {
                                    return AlertItem(
                                      alert: alertsController.alerts[i],
                                    );
                                  },
                                ),
                              ),
                      );
              }),
        ),
      ),
    );
  }
}
