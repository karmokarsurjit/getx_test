import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'Register/register_mobile.dart';
import 'Register/register_tablet.dart';
import 'register_logic.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => RegisterPageMobilePortrait(sizingInformation: sizingInformation),
            landscape: (context) => RegisterPageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait:(context) => RegisterPageTabletPortrait(sizingInformation: sizingInformation),
            landscape: (context) => RegisterPageMobileLandscape(sizingInformation: sizingInformation),
          ),
        );
      },
    );
  }
}