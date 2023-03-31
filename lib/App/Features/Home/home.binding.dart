import 'package:agence_task/lib.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut<IHomeRepository>(() => HomeRepository())
      ..lazyPut(
        () => HomeController(
          Get.find(),
          Get.find(),
        ),
      );
  }
}
