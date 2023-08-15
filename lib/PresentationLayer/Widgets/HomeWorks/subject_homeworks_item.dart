import 'package:flutter/material.dart';
import 'package:school_app/Constants/text_styles.dart';
import '../../../Constants/colors.dart';
import '../../../DataAccessLayer/Models/homework.dart';
import '../../../DataAccessLayer/Models/subject.dart';
import 'package:get/get.dart';

class SubjectHomeworksItem extends StatelessWidget {
    SubjectHomeworksItem({Key? key,required this.homeWork}) : super(key: key);
 final HomeWork homeWork;
   final Subject subject = Get.arguments[0];
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
              child: Hero(
                tag: subject.id.toString() + subject.name ,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                    image: DecorationImage(
                        image: NetworkImage("http://school.brain.sy/storage/${subject.image}"),
                        fit: BoxFit.contain,
                        opacity: .5),
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 4,
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
