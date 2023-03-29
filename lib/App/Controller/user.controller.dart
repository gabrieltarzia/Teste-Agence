import 'package:agence_task/App/Controller/home.controller.dart';
import 'package:agence_task/App/View/home.view.dart';
import 'package:agence_task/App/View/login.view.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserController extends GetxController {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  final homeController = Get.put(HomeController());
  final loginController = Get.put(HomeController());

  Future<void> googleLogin() async {
    await _googleSignIn.signIn().then((value) {
      homeController.userName.value = value!.displayName!;
      homeController.userPictureUrl.value = value!.photoUrl!;
    });
    Get.to(HomeView());
  }

  Future<void> googleLogOut() async {
    await _googleSignIn.signOut();
    Get.to(LoginView());
  }
}
