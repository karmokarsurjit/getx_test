import 'package:get/get.dart';
import 'package:getx_test/modules/dashboard/dashboard_binding.dart';
import 'package:getx_test/modules/dashboard/dashboard_view.dart';
import 'package:getx_test/modules/login/login_binding.dart';
import 'package:getx_test/modules/login/login_view.dart';
import 'package:getx_test/modules/register/register_binding.dart';
import 'package:getx_test/modules/register/register_view.dart';
import 'package:getx_test/routes/app_pages.dart';

class AppRoutes{
  static final INITIAL =AppPages.REGISTER;
  static final routes = [
    GetPage(
        name: AppPages.LOGIN,
        page: () => LoginPage(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: AppPages.REGISTER,
      page: () => RegisterPage(),
      bindings: [
        RegisterBinding(),
      ]
    ),
    GetPage(
        name: AppPages.DASHBOARD,
        page: () => DashboardPage(),
        bindings: [
          DashboardBinding(),
        ]
    ),
  ];
}