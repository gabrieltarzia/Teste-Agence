import 'package:agence_task/App/Features/ItemDetail/itemDetail.controller.dart';
import 'package:agence_task/lib.dart';

class ItemDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemDetailController());
  }
}
