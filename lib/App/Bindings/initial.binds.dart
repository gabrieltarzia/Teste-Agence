import 'package:agence_task/App/Services/user.services.dart';
import 'package:agence_task/App/View/home.view.dart';
import 'package:get/get.dart';
import '../View/login.view.dart';

class InitBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginView());
    Get.put(HomeView());
    Get.put(UserServices());
  }
}
