import 'package:flutter/material.dart';
import 'package:school_app/Constants/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/installment.dart';


class InstallmentItem extends StatelessWidget {
 const InstallmentItem({Key? key,required this.installment}) : super(key: key);
final Installment installment;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 373,
        height: 84,
        decoration:  BoxDecoration(
            color: installment.type == "تسديد" ? UIColors.paymentOn : UIColors.paymentOff,
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
                child: const Icon(FontAwesomeIcons.moneyBill,
                  color: UIColors.white,size: 40,),
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
                            installment.statement,
                            style: UITextStyle.titleBold,
                          ),
                          Text(installment.amount.toString(),
                              style: UITextStyle.titleBold.copyWith(fontSize: 24)),
                        ])
                )),
          ],
        ),
      ),
    );
  }
}
