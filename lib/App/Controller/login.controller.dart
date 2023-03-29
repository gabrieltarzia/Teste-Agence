import 'package:agence_task/App/Controller/home.controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../View/home.view.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  final obscurePassWord = true.obs;

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  final homeController = Get.put(HomeController());

  Future<void> googleLogin() async {
    _googleSignIn.signIn().then((value) {
      String userPictureUrl = value!.photoUrl!;
      String userName = value!.displayName!;

      homeController.userName.value = value!.displayName!;
      homeController.userPictureUrl.value = value!.photoUrl!;
    });
    Get.to(HomeView());
  }
}
