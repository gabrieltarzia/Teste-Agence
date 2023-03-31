import 'package:agence_task/lib.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get
      ..put(UserService())
      ..put(
        AppService(
          Get.find(),
        ),
      );
  }
}
