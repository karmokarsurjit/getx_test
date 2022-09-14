import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashboardPageMobilePortrait extends StatelessWidget {
  final SizingInformation? sizingInformation;
  const DashboardPageMobilePortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get.find<DashboardLogic>();
    return Container();
  }
}

class DashboardPageMobileLandscape extends StatelessWidget {
  final SizingInformation? sizingInformation;
  const DashboardPageMobileLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}