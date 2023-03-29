import 'package:agence_task/App/Model/user.model.dart';
import 'package:agence_task/App/View/home.view.dart';
import 'package:agence_task/App/View/login.view.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserServices extends GetxService {
  User currentUser = User(name: ''.obs, imageUrl: ''.obs);

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> googleLogin() async {
    await _googleSignIn.signIn().then((value) {
      currentUser.name.value = value!.displayName!;
      currentUser.imageUrl.value = value!.photoUrl!;
    });
    Get.to(HomeView());
  }

  Future<void> googleLogOut() async {
    await _googleSignIn.signOut();
    Get.to(LoginView());
  }
}
