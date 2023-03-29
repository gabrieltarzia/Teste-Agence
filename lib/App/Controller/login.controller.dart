import 'package:agence_task/App/Controller/home.controller.dart';
import 'package:agence_task/App/Services/user.services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  final obscurePassWord = true.obs;

  final userServices = Get.put(UserServices());
}
