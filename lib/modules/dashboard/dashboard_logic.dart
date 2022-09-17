import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardLogic extends GetxController {
  var selectedIndex = 0;
  var pageList = [
  Container(
  child: Text("Tab 1 - All"),
  ),
  Container(
  child: Text("Tab 2 - BD"),
  ),
  ];

  @override
  void onInit() {
    // TODO: implement onInit
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
