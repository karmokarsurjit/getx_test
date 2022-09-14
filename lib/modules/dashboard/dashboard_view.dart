import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'Dashboard/dashboard_mobile.dart';
import 'Dashboard/dashboard_tablet.dart';
import 'dashboard_logic.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => DashboardPageMobilePortrait(sizingInformation: sizingInformation),
            landscape: (context) => DashboardPageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait:(context) => DashboardPageTabletPortrait(sizingInformation: sizingInformation),
            landscape: (context) => DashboardPageMobileLandscape(sizingInformation: sizingInformation),
          ),
        );
      },
    );
  }
}