import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/Constants/text_styles.dart';

import '../../../Constants/colors.dart';

class SnackBars {
  static void showSuccess(message) {
    Get.rawSnackbar(
        padding: const EdgeInsets.symmetric(vertical: 15),
        messageText: Text(
          message,
          style: UITextStyle.titleBold,
          textAlign: TextAlign.center,
        ),
        backgroundColor: UIColors.success);
  }

  static void showError(message) {
    Get.rawSnackbar(
        padding: const EdgeInsets.symmetric(vertical: 15),
        messageText: Text(
          message,
          style: UITextStyle.titleBold,
          textAlign: TextAlign.center,
        ),
        backgroundColor: UIColors.error);
  }

  static void showWarning(message) {
    Get.rawSnackbar(
        padding: const EdgeInsets.symmetric(vertical: 15),
        messageText: Text(
          message,
          style: UITextStyle.titleBold,
          textAlign: TextAlign.center,
        ),
        backgroundColor: UIColors.error);
  }
}