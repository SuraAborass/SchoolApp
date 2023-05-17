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
                width: 66,
                height: 64,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: const Icon(Icons.feed,
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
                        children: [
                         Row(children: [
                           Text( homeWork.title,
                               style: UITextStyle.titleBold),
                           const SizedBox(width: 10,),
                           Text( homeWork.title,
                               style: UITextStyle.titleBold),
                         ],),
                          Text( homeWork.description,
                              style: UITextStyle.titleBold),
                        ])
                )),
          ],
        ),
      ),
    );
  }
}
