import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/homework.dart';


class HomeWorkItem extends StatelessWidget {
  const HomeWorkItem({Key? key,required this.homeWork}) : super(key: key);
final HomeWork homeWork;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 373,
        height: 72,
        decoration:  BoxDecoration(
            color: UIColors.homework,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration:  BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                      image: NetworkImage("http://school.brain.sy/storage/${homeWork.subjectImage}"),
                      fit: BoxFit.contain,
                      opacity: .5),
                ),
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
                        children: [
                         Row(children: [
                           Text( homeWork.title,
                               style: UITextStyle.titleBold),
                           //const SizedBox(width: 10,),
                           // Text( homeWork.title,
                           //     style: UITextStyle.titleBold),
                         ],),
                          Text( homeWork.description,
                              style: UITextStyle.titleBold,
                            overflow: TextOverflow.ellipsis,),
                        ])
                )),
          ],
        ),
      ),
    );
  }
}
