import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/ui/auth/controller.dart';
import 'package:flutter_getx_demo/ui/auth/login/login_page.dart';
import 'package:flutter_getx_demo/ui/home/home_page.dart';
import 'package:get/get.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _authController = Get.find<AuthController>();
    return Obx(() {
      if (!_authController.isLogged.value) {
        return const LoginPage();
      } else {
        return const HomePage();
      }
    });
  }
}
