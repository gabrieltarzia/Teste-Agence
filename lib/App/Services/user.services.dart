import 'package:agence_task/App/Model/user.model.dart';
import 'package:agence_task/Routes/app_pages.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserServices extends GetxService {
  User currentUser = User(name: ''.obs, imageUrl: ''.obs);

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> googleLogin() async {
    final result = await _googleSignIn.signIn().then((value) {
      currentUser.name.value = value!.displayName!;
      currentUser.imageUrl.value = value.photoUrl!;
    });
    return result;
  }

  /* Future<void> googleLogOut() async {
    await _googleSignIn.signOut();
    Get.offAllNamed(AppPages.login);
  }*/

  Future<void> logout() async {
    await _googleSignIn.signOut();
    await FacebookAuth.i.logOut();
    Get.offAllNamed(AppPages.login);
  }

  Future<LoginResult?> facebookLogIn() async {
    final result =
        await FacebookAuth.i.login(permissions: ['public profile', 'email']);
    if (result.status == LoginStatus.success) {
      final requestData = await FacebookAuth.i.getUserData(fields: 'name');
      print(requestData);
      currentUser.name.value = requestData.values.toString();
      currentUser.imageUrl.value = requestData.values.toString();
      return result;
    }
    return null;
  }

  /* Future<bool> facebookLogIn() async {
    final result =
        await FacebookAuth.i.login(permissions: ['public profile', 'email']);
    if (result.status == LoginStatus.success) {
      final requestData = await FacebookAuth.i.getUserData(fields: 'name');
      print(requestData);
      return true;
    }
    return false;
  }*/
}
