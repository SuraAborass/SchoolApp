import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/alerts_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Alerts/alert_item.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';

class AlertsScreen extends StatelessWidget {
  AlertsScreen({Key? key}) : super(key: key);
  final AlertsController alertsController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              return RefreshIndicator(
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
                                "لايوجد تنبيهات",
                                style: UITextStyle.titleBold
                                    .copyWith(fontSize: 16),
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
    );
  }
}
