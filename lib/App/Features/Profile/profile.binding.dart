import 'package:agence_task/lib.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ProfileController(
        Get.find(),
      ),
    );
  }
}
