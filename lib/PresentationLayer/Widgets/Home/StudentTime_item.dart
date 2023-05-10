import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StudentTimeItem extends StatelessWidget {
  const StudentTimeItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: UIColors.studentTime,
            ),
            width: 163,
            height: 114,
          ),
          Positioned( top: 15,right:20,
            child: Text('دوام الطالب',
              style: UITextStyle.bodyNormal.copyWith(color: UIColors.white,fontSize: 25),),),
          Positioned(top: 50,right: 80,
              child: Container(height: 80, width: 110,
                decoration: const BoxDecoration(
                    color: UIColors.lightWhite,
                    borderRadius: BorderRadius. only(topRight: Radius.circular(25))
                ),
              )),
           const Positioned(top: 65,right:100,
              child: Icon(Icons.date_range_outlined,size: 38,color: UIColors.white,))
        ],
      ),
    );
  }
}
