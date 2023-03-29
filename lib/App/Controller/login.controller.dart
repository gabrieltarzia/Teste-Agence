import 'package:agence_task/App/Controller/home.controller.dart';
import 'package:agence_task/App/Controller/user.controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  final obscurePassWord = true.obs;

  final userController = Get.put(UserController());
  final homeController = Get.put(HomeController());
}
