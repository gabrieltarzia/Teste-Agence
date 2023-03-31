import 'package:agence_task/lib.dart';

class ItemDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemDetailController(Get.find()));
  }
}
