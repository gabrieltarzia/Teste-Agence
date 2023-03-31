import 'package:agence_task/lib.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserService extends GetxService {
  User currentUser = User(name: '', imageUrl: '');
  double userLatitude = 0.0;
  double userLongitude = 0.0;

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<bool> googleLogin() async {
    final result = await _googleSignIn.signIn().then((value) {
      currentUser.name = value!.displayName!;
      currentUser.imageUrl = value.photoUrl!;
    });
    return currentUser.name != '' ? true : false;
  }

  void getUserLocation() async {
    try {
      final userPosition = await _getCurrentPosition();
      userLatitude = userPosition.latitude;
      userLongitude = userPosition.longitude;
    } catch (e) {
      e.toString();
    }
  }

  Future<Position> _getCurrentPosition() async {
    LocationPermission locationPermission;

    bool enabled = await Geolocator.isLocationServiceEnabled();
    if (!enabled) {
      return Future.error(StringsConstants.enableLocationPermission.tr);
    }

    locationPermission = await Geolocator.checkPermission();

    if (locationPermission == LocationPermission.denied) {
      Geolocator.requestPermission();
      locationPermission = await Geolocator.checkPermission();
      if (locationPermission == LocationPermission.denied) {
        return Future.error(StringsConstants.deniedLocationPermission.tr);
      }
    }
    if (locationPermission == LocationPermission.deniedForever) {
      Geolocator.requestPermission();
      return Future.error(StringsConstants.deniedLocationPermission.tr);
    }

    return await Geolocator.getCurrentPosition();
  }

  Future<void> logout() async {
    await _googleSignIn.signOut();
    await FacebookAuth.i.logOut();

    currentUser = User(name: '', imageUrl: '');
    Get.offAllNamed(AppPages.login);
  }

  Future<bool> facebookLogIn() async {
    final result =
        await FacebookAuth.i.login(permissions: ['public profile', 'email']);
    if (result.status == LoginStatus.success) {
      final requestData = await FacebookAuth.i.getUserData(fields: 'name');

      currentUser.name = requestData.values.toString();
      currentUser.imageUrl = requestData.values.toString();

      return true;
    }
    return false;
  }
}
