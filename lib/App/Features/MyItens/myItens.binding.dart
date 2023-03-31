import 'package:agence_task/App/Features/MyItens/Repository/i_myItens.repository.dart';
import 'package:agence_task/App/Features/MyItens/Repository/myItens.repository.dart';
import 'package:agence_task/App/Features/MyItens/myItens.controller.dart';
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
