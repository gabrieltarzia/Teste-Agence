import 'package:agence_task/lib.dart';

import 'login.controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LoginController(Get.find()),
    );
  }
}
