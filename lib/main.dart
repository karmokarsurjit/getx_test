import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Getx Assignment',
      enableLog: true,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.INITIAL,
      getPages: AppRoutes.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}