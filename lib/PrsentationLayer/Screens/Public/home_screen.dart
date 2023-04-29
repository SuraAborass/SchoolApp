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

import '../../Widgets/Subjects/Subject_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.white,
      appBar: customAppBar(context),
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
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: const [
               Expanded(
                 flex: 2,
                  child: Padding(
                    padding:  EdgeInsets.only(top: 20.0,right: 20,),
                    //child:
                    // Container(
                    //   decoration: const BoxDecoration(
                    //       image: DecorationImage(image: AssetImage("assets/images/user-default.png"),
                    //           fit: BoxFit.cover),
                    //       color: UIColors.white,
                    //       borderRadius:  BorderRadius.all(Radius.circular(200.0))),
                    //   height: 90,
                    //   width: 90 ,
                    // ),
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
              child: SizedBox(
                width: Get.width,
                child: GridView.builder(
                  itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                ),
                  itemBuilder: (context, i){
                    return  Container(
                        margin: const EdgeInsets.only(right: 20,left: 20),
                        child:  const SubjectItem());
                  },
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
