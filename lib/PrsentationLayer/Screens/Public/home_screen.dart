import 'package:flutter/material.dart';
import 'package:school_app/PrsentationLayer/Widgets/Public/SizedBoxHeight.dart';
import 'package:school_app/PrsentationLayer/Widgets/Public/SizedBoxWidth.dart';
import '../../../Constants/ui_colors.dart';
import '../../../Constants/ui_styles.dart';
import '../../../Constants/ui_text_styles.dart';
import '../../Widgets/Public/AppBar.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import 'package:get/get.dart';

import '../../Widgets/Public/home_item.dart';
import '../../Widgets/Subjects/Subject_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.white,
      appBar: customAppBar(),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Expanded(
        flex: 1,
        child: Stack(
         children:[
           Container(
             height: 150,
             width: Get.width,
             decoration: const BoxDecoration(
               color: UIColors.primary,
               borderRadius: radiusbottomright,
             ),
             child: Image.asset('assets/images/Image 2.png',fit: BoxFit.cover,),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: const [
               Expanded(
                 flex: 2,
                  child: Padding(
                    padding:  EdgeInsets.only(top: 20.0,right: 20,),
                    child: CircleAvatar(
                     radius: 40,
                     backgroundImage: AssetImage("assets/images/user-default.png",),
               ),
                  ),
                ),
                Expanded(
                 flex: 3,
                 child: Padding(
                   padding: EdgeInsets.only(top: 30.0,left: 8),
                   child: ListTile(
                     title: Text("اسم الطالب",style: UITextStyle.titleBold,textAlign: TextAlign.start,),
                     subtitle: Text("الصف الأول-الشعبة الرابعة",style:  UITextStyle.bodyNormal, textAlign: TextAlign.start
                   ),)
                 ),
               )
             ],
           ),
         ]
        ),
      ),

      Expanded(
        flex: 3,
        child: Column(
          children: [
            const SizedBoxHeight(),
            Row(
              children: [
                const SizedBoxWidth(),
                RichText(
                  text:  TextSpan(children: [
                    TextSpan(text: "مرحباً بك:",style: UITextStyle.bodyNormal.copyWith(fontSize: 20)),
                    TextSpan(text: " اسم الأم ",style: UITextStyle.bodyNormal.copyWith(color: UIColors.primary,fontSize: 20))
                  ]),),
              ],
            ),
            const SizedBoxHeight(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: GridView.builder(
                    itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,crossAxisSpacing: 20),
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, i){
                      return   HomeItem();
                    },
                ),
                ),
              ),
            )
          ],
        ),
      )
        ],
      ),

    );
  }
}
