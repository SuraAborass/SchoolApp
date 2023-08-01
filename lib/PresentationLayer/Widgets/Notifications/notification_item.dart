import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/Constants/colors.dart';
import 'package:school_app/Constants/text_styles.dart';

import '../../../DataAccessLayer/Models/notification.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({Key? key, required this.userNotification})
      : super(key: key);
  final UserNotification userNotification;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 2),
        width: Get.width,
        height: 80,
        decoration: BoxDecoration(
          color: UIColors.gray.withOpacity(.2),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              width: 65,
              height: 65,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/teacher-ph.jpg")),
                color: UIColors.secondary,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Center(
                  child: Text(
                "${userNotification.id}#",
                style: UITextStyle.titleBold
                    .copyWith(color: UIColors.iconColor, fontSize: 25),
              )),
            ),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(userNotification.title,
                            style: UITextStyle.titleBold
                                .apply(color: UIColors.black)),
                        Text(userNotification.description,
                            style: UITextStyle.titleNormal
                                .apply(color: UIColors.gray)),
                        Text(userNotification.time,
                            style: UITextStyle.smallBodyNormal
                                .apply(fontSizeFactor: .5)),
                      ]),
                )),
          ],
        ));
  }
}
