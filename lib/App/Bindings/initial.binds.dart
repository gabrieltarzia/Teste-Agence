import 'package:get/get.dart';
import '../View/login.view.dart';

class InitBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginView());
  }
}
