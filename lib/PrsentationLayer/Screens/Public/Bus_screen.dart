import 'package:flutter/material.dart';

import '../../Widgets/Public/AppBar.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';

class BusScreen extends StatelessWidget {
  const BusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      appBar: customAppBar(),
    );
  }
}
