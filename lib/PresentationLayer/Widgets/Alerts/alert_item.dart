import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/alert.dart';

class AlertItem extends StatelessWidget {
  const AlertItem({Key? key,required this.alert}) : super(key: key);
final Alert alert;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 373,
        height: 94,
        decoration:  BoxDecoration(
            color: alert.type == "warning" ? UIColors.alertWarning :  UIColors.alertDanger,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(10),
                width: 66,
                height: 64,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child:  Icon(alert.type == "warning" ? Icons.warning : Icons.back_hand,
                  color: UIColors.white,size: 50,),
              ),
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
                        children:  [
                          Text(
                            alert.subject,
                            style: UITextStyle.titleBold,
                          ),
                          Text(alert.text,
                              style: UITextStyle.titleBold),
                        ])
                )),
          ],
        ),
      ),
    );
  }
}
