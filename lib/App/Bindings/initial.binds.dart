import 'package:agence_task/App/Features/Core/app.controller.dart';
import 'package:agence_task/App/Services/user.services.dart';
import 'package:get/get.dart';

class InitBindings extends Bindings {
  @override
  void dependencies() {
    Get
      ..put(UserServices())
      ..put(
        AppController(
          Get.find(),
        ),
      );
  }
}
