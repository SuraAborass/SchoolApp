import 'package:flutter/material.dart';
import 'package:school_app/Constants/colors.dart';
import 'package:school_app/Constants/get_routes.dart';
import 'package:school_app/Constants/text_styles.dart';
import 'package:get/get.dart';
import '../../../DataAcessLayer/Models/subject.dart';

class SubjectItem extends StatelessWidget {
  const SubjectItem({Key? key,required this.subject}) : super(key: key);
final Subject subject;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: ()=> Get.toNamed(AppRoutes.subjectHomeWorks,arguments: [subject]),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: UIColors.primary,
            ),
            width: 180,
            height: 120,
            child: Image.asset('assets/images/Capture.png',fit: BoxFit.cover,
            opacity: const AlwaysStoppedAnimation(.10),),
          ),
          Positioned( top: 70,right:40,
            child: Text(subject.name,
              style: UITextStyle.bodyNormal.copyWith(color: UIColors.white,fontSize: 25,),),),
         Positioned(right: 120,top: 15,
            child: CircleAvatar(
              backgroundColor: UIColors.iconColor,
              radius: 15,
              child: Text("1", style:UITextStyle.bodyNormal.copyWith(color: UIColors.white),),

        ))
        ],
      ),
    );
  }
}
