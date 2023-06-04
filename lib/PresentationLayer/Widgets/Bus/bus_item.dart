import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../../BusinessLayer/Controllers/complaint_controller.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../Constants/ui_styles.dart';
import '../../../DataAccessLayer/Models/bus.dart';
import 'package:get/get.dart';

class BusItem extends StatelessWidget {
   BusItem({Key? key, required this.busInfo,required this.index}) : super(key: key);
  final BusInfo busInfo;
  final int index;
  final ComplaintController complaintController = Get.put(ComplaintController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
              flex: 1,
              child: Image.asset(
                'assets/images/school-bus-dessin.png',
                width: 330,
                height: 300,
              )),
          Flexible(
            flex: 1,
            child: Container(
              height: 328,
              width: Get.width,
              decoration: const BoxDecoration(
                color: UIColors.lightGray,
                borderRadius: radiustopleftandright,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 2,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 40,
                        ),
                        Flexible(
                            flex: 1,
                            child: ListTile(
                              title: const Text(
                                "اسم السائق",
                                style: UITextStyle.smallBodyNormal,
                              ),
                              subtitle: Text(
                                busInfo.name,
                                style: UITextStyle.smallBodyNormal
                                    .copyWith(color: UIColors.primary),
                              ),
                            )),
                        Flexible(
                            flex: 1,
                            child: ListTile(
                              title: const Text(
                                "اسم المساعد",
                                style: UITextStyle.smallBodyNormal,
                              ),
                              subtitle: Text(
                                busInfo.assistantName,
                                style: UITextStyle.smallBodyNormal
                                    .copyWith(color: UIColors.primary),
                              ),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Flexible(
                      flex: 2,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 40,
                          ),
                          Flexible(
                              flex: 1,
                              child: ListTile(
                                  title: const Text(
                                    "رقم السائق",
                                    style: UITextStyle.smallBodyNormal,
                                  ),
                                  subtitle: Text(
                                    busInfo.phone,
                                    style: UITextStyle.smallBodyNormal
                                        .copyWith(color: UIColors.primary),
                                  ))),
                          Flexible(
                              flex: 1,
                              child: ListTile(
                                title: const Text(
                                  "رقم لوحة الباص",
                                  style: UITextStyle.smallBodyNormal,
                                ),
                                subtitle: Text(
                                  busInfo.plateNumber,
                                  style: UITextStyle.smallBodyNormal
                                      .copyWith(color: UIColors.primary),
                                ),
                              )),
                        ],
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10, right: 40, left: 40),
                    child: MaterialButton(
                      onPressed: () {
                        complaintController.showBusDialog();
                      },
                      height: 50,
                      minWidth: 250,
                      color: UIColors.yellow,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 50,
                          ),
                          Icon(
                            Ionicons.send,
                            color: UIColors.white,
                            size: 30,
                          ),
                          Text(' إرسال شكوى', style: UITextStyle.titleBold),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
