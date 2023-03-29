import 'package:get/get.dart';

class User {
  RxString name = ''.obs;
  RxString imageUrl = ''.obs;

  User({required this.name, required this.imageUrl});
}
