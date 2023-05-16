import 'package:flutter/material.dart';
import '../../../Constants/Helpers/alert_state.dart';
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
        height: 84,
        decoration:  BoxDecoration(
            color: AlertState.getAlertState(alert.type),
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
                child:  Icon(alert.type == "danger" ? Icons.back_hand  : Icons.warning,
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
