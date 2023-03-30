import 'package:agence_task/App/Model/user.model.dart';
import 'package:agence_task/Routes/app_pages.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserServices extends GetxService {
  User currentUser = User(name: ''.obs, imageUrl: ''.obs);

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<bool> googleLogin() async {
    final result = await _googleSignIn.signIn().then((value) {
      currentUser.name.value = value!.displayName!;
      currentUser.imageUrl.value = value.photoUrl!;
    });
    return result;
  }

  Future<void> googleLogOut() async {
    await _googleSignIn.signOut();
    Get.offAllNamed(AppPages.login);
  }

  Future<bool> facebookLogIn() async {
    final result =
        await FacebookAuth.i.login(permissions: ['public profile', 'email']);
    if (result.status == LoginStatus.success) {
      final requestData = await FacebookAuth.i.getUserData(fields: 'name');
      print(requestData);
      return true;
    }
    return false;
  }
}
