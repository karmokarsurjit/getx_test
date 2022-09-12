import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/modules/login/login_logic.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginPageMobilePortrait extends GetView<LoginLogic> {

  final SizingInformation? sizingInformation;

  const LoginPageMobilePortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();
    return Scaffold(
      backgroundColor: Color(0xff32302C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/LoginIcon.png",alignment: Alignment.topCenter,height: MediaQuery.of(context).size.height*.10),
        ],
      ),
    );
  }
}

class LoginPageMobileLandscape extends StatelessWidget {
  final SizingInformation? sizingInformation;
  const LoginPageMobileLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}