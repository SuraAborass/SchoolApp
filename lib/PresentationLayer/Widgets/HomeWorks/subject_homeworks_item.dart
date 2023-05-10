import 'package:flutter/material.dart';
import 'package:school_app/Constants/text_styles.dart';
import '../../../Constants/colors.dart';
import '../../../DataAccessLayer/Models/homework.dart';

class SubjectHomeworksItem extends StatelessWidget {
   const SubjectHomeworksItem({Key? key,required this.homeWork}) : super(key: key);
 final HomeWork homeWork;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 200,
        height: 79,
        decoration:  BoxDecoration(
          color: UIColors.studentTime,
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
                            homeWork.title,
                            style: UITextStyle.titleBold.copyWith(color: UIColors.primary),
                          ),
                          Text(homeWork.description,
                              style: UITextStyle.titleBold.copyWith(color: UIColors.primary)),
                        ])
                )),
          ],
        ),
      ),
    );
  }
}
