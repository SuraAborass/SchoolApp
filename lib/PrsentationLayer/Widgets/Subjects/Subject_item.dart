import 'package:flutter/material.dart';
import 'package:school_app/Constants/ui_colors.dart';
import 'package:school_app/Constants/ui_text_styles.dart';

class SubjectItem extends StatelessWidget {
  const SubjectItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: UIColors.primary,
          ),
          width: 180,
          height: 120,
        ),
        Positioned( top: 15,right:20,
          child: Text('المواد',
            style: UITextStyle.bodyNormal.copyWith(color: UIColors.white,fontSize: 25),),),
    //     Positioned(top: 60,right: 80,
    //         child: Container(height: 60, width: 120,
    // decoration: const BoxDecoration(
    //       color: UIColors.gray,
    //       borderRadius: BorderRadius. only(topRight: Radius.circular(10))
    //     ),
    //      )),
        const Positioned(top: 65,right: 80,
            child: Icon(Icons.calendar_month,size: 45,color: UIColors.iconColor,))
      ],
    );
  }
}
