import 'package:get/get.dart';

import 'controller.dart';

class AuthBindings extends Bindings {
  @override
  void dependencies() {
    Get.find<AuthController>();
  }
}
