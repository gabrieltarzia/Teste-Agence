import 'package:agence_task/lib.dart';

class MyItensBinding extends Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut<IMyItensRepository>(() => MyItenRepository())
      ..lazyPut(
        () => MyItensController(
          Get.find(),
        ),
      );
  }
}
