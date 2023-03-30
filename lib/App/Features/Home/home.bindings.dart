import 'package:agence_task/App/Features/Home/home.controller.dart';
import 'package:agence_task/App/Features/Home/Repository/home.respository.dart';
import 'package:agence_task/App/Features/Home/Repository/i_home.repository.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut<IHomeRepository>(() => HomeRepository())
      ..lazyPut(
        () => HomeController(
          Get.find(),
          Get.find(),
        ),
      );
  }
}
