import 'package:agence_task/lib.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LoginController(Get.find()),
    );
  }
}
