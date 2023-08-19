import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/get_routes.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/complaint.dart';
import 'package:get/get.dart';


class ComplaintItem extends StatelessWidget {
  const ComplaintItem({Key? key,required this.complaint}) : super(key: key);
final Complaint complaint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: ()=> Get.toNamed(AppRoutes.complaint,arguments: [complaint]),
        child: Container(
          width: 373,
          height: 84,
          decoration:  BoxDecoration(
              color: UIColors.complaint,
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
                  child: const Icon(Icons.feedback,
                    color: UIColors.white,size: 40,),
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
                          children:  [
                            Text(
                              complaint.type,
                              style: UITextStyle.titleBold,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(complaint.description,
                                      style: UITextStyle.titleBold,
                                    overflow: TextOverflow.ellipsis,),
                                ),
                              ],
                            ),
                          ])
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
