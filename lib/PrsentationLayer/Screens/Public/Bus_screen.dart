import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/ui_styles.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/school_appbar.dart';
import 'package:get/get.dart';


class BusScreen extends StatelessWidget {
  const BusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SchoolBottomNavigationBar(),
      appBar: schoolAppBar(title: Text("الباص",style: UITextStyle.titleBold.copyWith(fontSize: 25))),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset('assets/images/Image 1.png',width: 300,height: 219,)
          ),
          Expanded(flex: 1,
              child: Container(
                height: 328,
                width: Get.width,
                decoration: const BoxDecoration(
                  color: UIColors.lightGray,
                  borderRadius: radiustopleftandright,
                ),
                child: Column(
                  children: [
                    Expanded(flex:2,child: Row(children: const [
                       SizedBox(width: 40,),

                      Expanded(flex:1,child: ListTile(title: Text("اسم السائق",style: UITextStyle.smallBodyNormal,),
                      subtitle: Text("محمد سعيد",style: UITextStyle.smallBodyNormal,),) ),

                      Expanded(flex:1,child: ListTile(title: Text("اسم المساعد",style: UITextStyle.smallBodyNormal,),
                        subtitle: Text("سميرة حافظ",style: UITextStyle.smallBodyNormal,),) ),
                    ],),),
                    Expanded(flex:2,child: Row(children: const [
                      SizedBox(width: 40,),

                      Expanded(flex:1,child: ListTile(title: Text("رقم السائق",style: UITextStyle.smallBodyNormal,),
                        subtitle: Text("09561545",style: UITextStyle.smallBodyNormal,) )),

                      Expanded(flex:1,child: ListTile(title: Text("رقم المساعد",style: UITextStyle.smallBodyNormal,),
                        subtitle: Text("01514888",style: UITextStyle.smallBodyNormal,),) ),
                    ],)),
                    Padding(
                      padding: const EdgeInsets.only(top:10.0,bottom: 10,right: 40,left: 40),
                      child: MaterialButton(
                        onPressed:(){},
                        height: 50,
                        minWidth: 250,
                        color: UIColors.yellow ,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(20.0))),
                        child: Row(
                          children: const [
                            SizedBox(width: 70,),
                            Text('إرسال شكوى', style: UITextStyle.titleBold ),
                             Icon(Icons.send_sharp,color: UIColors.white,size: 30,),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,)
                  ],
                ),
              ),)
        ],
      ),
    );
  }
}
