import 'package:flutter/material.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';

class HomeWorkItem extends StatelessWidget {
  const HomeWorkItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: UIColors.pink,
          ),
          width: 180,
          height: 120,
          // child: Image.asset('assets/images/Capture.png',fit: BoxFit.cover,
          //   opacity: const AlwaysStoppedAnimation(.10),),
        ),
        Positioned( top: 60,right:12,
          child: Text('اللغة العربية',
            style: UITextStyle.bodyNormal.copyWith(color: UIColors.white,fontSize: 18,),),),
        Positioned(right: 75,top: 15,
            child: CircleAvatar(
              backgroundColor: UIColors.iconColor,
              radius: 10,
              child: Text("1", style:UITextStyle.bodyNormal.copyWith(color: UIColors.white),),
            )),
        const Positioned(top: 25,right: 40,
            child: Icon(Icons.newspaper,size: 30,color: UIColors.white,))
      ],
    );
  }
}
