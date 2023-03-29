import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../View/home.view.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  final obscurePassWord = true.obs;

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> googleLogin() async {
    _googleSignIn.signIn().then((value) {
      String userName = value!.displayName!;
      String profilePicture = value!.photoUrl!;
    });
    Get.to(HomeView());
  }
}
