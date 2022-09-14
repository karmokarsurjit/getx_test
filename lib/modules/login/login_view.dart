import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/modules/login/Login/login_mobile.dart';
import 'package:getx_test/modules/login/Login/login_tablet.dart';
import 'package:getx_test/modules/login/login_logic.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) {
          return ScreenTypeLayout(
              mobile: OrientationLayoutBuilder(
                  portrait: (context) => LoginPageMobilePortrait(sizingInformation: sizingInformation),
                landscape: (context) => LoginPageMobileLandscape(sizingInformation: sizingInformation),
              ),
            tablet: OrientationLayoutBuilder(
                portrait:(context) => LoginPageTabletPortrait(sizingInformation: sizingInformation),
              landscape: (context) => LoginPageMobileLandscape(sizingInformation: sizingInformation),
            ),
          );
        },
    );
  }
}