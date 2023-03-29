import 'package:agence_task/App/Controller/home.controller.dart';
import 'package:agence_task/App/View/home.view.dart';
import 'package:agence_task/App/View/login.view.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserController extends GetxController {
  final homeController = Get.put(HomeController());
  final loginController = Get.put(HomeController());
}
