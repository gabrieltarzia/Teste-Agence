import 'package:agence_task/lib.dart';

class ItemDetailController extends GetxController {
  ItemDetailController(this.userService);
  late Item item;
  final UserService userService;

  @override
  void onInit() {
    item = Get.arguments;
    super.onInit();
  }
}
