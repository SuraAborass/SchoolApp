import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/notifications_controller.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Notifications/notification_item.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key? key}) : super(key: key);
  final UserNotificationsController userNotificationsController =
      Get.put(UserNotificationsController());
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          bottomNavigationBar: const SchoolBottomNavigationBar(),
          appBar: schoolAppBar(
              title: Text("الإشعارات",
                  style: UITextStyle.titleBold.copyWith(fontSize: 25))),
          drawer: SchoolDrawer(),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              child: GetBuilder(
                init: userNotificationsController,
                builder: (context) {
                  return RefreshIndicator(
                    onRefresh: () async {
                      userNotificationsController.getNotifications();
                    },
                    child: userNotificationsController.userNotifications.isEmpty
                        ? SizedBox(
                            height: Get.height - 200,
                            child: Center(
                              child: ListView(
                                shrinkWrap: true,
                                children: [
                                  Text(
                                    "لايوجد إشعارات",
                                    style:
                                        UITextStyle.titleBold.copyWith(fontSize: 16,color: UIColors.lightBlack),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          )
                        : SizedBox(
                            height: Get.height - 170,
                            child: ListView.builder(
                              itemCount: userNotificationsController
                                  .userNotifications.length,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {
                                    userNotificationsController.gotoPayload(userNotificationsController.userNotifications[index]);
                                  },
                                  child: NotificationItem(
                                    userNotification: userNotificationsController
                                        .userNotifications[index],
                                  ),
                                );
                              },
                            ),
                          ),
                  );
                }
              ),
            ),
          )),
    );
  }
}
