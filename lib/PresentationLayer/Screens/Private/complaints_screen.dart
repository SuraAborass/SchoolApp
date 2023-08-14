import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/complaint_controller.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Complaints/complaint_item.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';
import '../../Widgets/Shimmers/homework_shimmer.dart';

class ComplaintsScreen extends StatelessWidget {
  ComplaintsScreen({Key? key}) : super(key: key);
  final ComplaintController complaintController =
      Get.put(ComplaintController());
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const SchoolBottomNavigationBar(),
        appBar: schoolAppBar(
            title: Text("الشكاوى",
                style: UITextStyle.titleBold.copyWith(fontSize: 25))),
        drawer: SchoolDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GetBuilder(
              init: complaintController,
              builder: (context) {
                return complaintController.loading.value == true
                    ?SizedBox(
                  height: Get.height - 250,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      return const HomeworkShimmer();
                    },
                  ),
                )
                  :RefreshIndicator(
                  onRefresh: () async {
                    complaintController.getComplaints();
                  },
                  child: complaintController.complaints.isEmpty
                      ? SizedBox(
                          height: Get.height - 200,
                          child: Center(
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                Text(
                                  "لايوجد شكاوى!",
                                  style: UITextStyle.titleBold
                                      .copyWith(fontSize: 16,color: UIColors.lightBlack),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        )
                      : SizedBox(
                          height: Get.height - 170,
                          child: ListView.builder(
                            itemCount: complaintController.complaints.length,
                            itemBuilder: (context, i) {
                              return ComplaintItem(
                                complaint: complaintController.complaints[i],
                              );
                            },
                          ),
                        ),
                );
              }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async{
            complaintController.showAddComplaintDialog();
          },
          backgroundColor: UIColors.white,
          child: const Icon(
            Icons.add,
            color: UIColors.complaint,
            size: 40,
          ),
        ),
      ),
    );
  }
}
