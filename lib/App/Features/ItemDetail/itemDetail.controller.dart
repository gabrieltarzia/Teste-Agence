import 'package:agence_task/lib.dart';

class ItemDetailController extends GetxController {
  late Item item;

  @override
  void onInit() {
    item = Get.arguments;
    super.onInit();
  }
}
