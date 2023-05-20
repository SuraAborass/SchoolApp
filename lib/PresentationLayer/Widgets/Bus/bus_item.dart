import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/bus.dart';

class BusItem extends StatelessWidget {
  const BusItem({Key? key,required this.busInfo}) : super(key: key);
  final BusInfo busInfo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                Expanded(
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
                Expanded(
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
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  Expanded(
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
                  Expanded(
                      flex: 1,
                      child: ListTile(
                        title: const Text(
                          "رقم المساعد",
                          style: UITextStyle.smallBodyNormal,
                        ),
                        subtitle: Text(
                          "01514888",
                          style: UITextStyle.smallBodyNormal
                              .copyWith(color: UIColors.primary),
                        ),
                      )),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(
                top: 10.0, bottom: 10, right: 40, left: 40),
            child: MaterialButton(
              onPressed: () {},
              height: 50,
              minWidth: 250,
              color: UIColors.yellow,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(20.0))),
              child: Row(
                children: const [
                  SizedBox(
                    width: 70,
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
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
