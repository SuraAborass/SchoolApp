import 'package:flutter/material.dart';
import 'package:school_app/PresentationLayer/Widgets/Shimmers/shimmer.dart';
import 'package:shimmer/shimmer.dart';
import 'package:get/get.dart';
import '../../../Constants/colors.dart';

class HomeworkShimmer extends StatelessWidget {
  const HomeworkShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: UIColors.shimmerBaseColor,
      highlightColor: UIColors.shimmerHighLightColor,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: Get.width,
          height: 56,
          margin: const EdgeInsets.symmetric(vertical: 8),
          //padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              // const Expanded(flex: 1,
              //     child: ShimmerWidget.circular(width: 50, height: 50)),
              Expanded(flex: 2,
                  child: ShimmerWidget.roundedRectangular(width: Get.width, height: 20,)),
            ],
          ),
        ),
      ),
    );
  }
}
