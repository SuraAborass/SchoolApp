import 'dart:ui';

import '../colors.dart';

class AlertState{
  static Color getAlertState(String alertState) {
    switch (alertState) {
      case "warning":
        return UIColors.alertWarning;
      case "info":
        return UIColors.alertInfo;
      case "danger":
        return UIColors.alertDanger;
      default:
        return UIColors.unjustified;
    }
  }
}