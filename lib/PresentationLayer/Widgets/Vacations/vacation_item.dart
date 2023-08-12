import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/vacation.dart';

class VacationItem extends StatelessWidget {
  const VacationItem({Key? key,required this.vacation}) : super(key: key);
  final Vacation vacation;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 200,
        height: 65,
        decoration:  BoxDecoration(
            color: UIColors.vacation,
            border: Border.all(color: UIColors.lightBlack,width: 1),
            borderRadius: BorderRadius.circular(25)
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
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/school icon.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            vacation.title,
                            style: UITextStyle.titleBold.copyWith(color: UIColors.primary),
                          ),
                          Row(
                            children: [
                              Text(vacation.day,
                                  style: UITextStyle.titleBold.copyWith(color: UIColors.primary)),
                              const SizedBox(width: 5.0,),
                              Text(vacation.month,
                                  style: UITextStyle.titleBold.copyWith(color: UIColors.primary)),
                            ],
                          ),
                        ])
                )),
          ],
        ),
      ),
    );
  }
}
