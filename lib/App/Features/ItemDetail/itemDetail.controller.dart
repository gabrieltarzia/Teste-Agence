import 'package:agence_task/lib.dart';

class ItemDetailController extends GetxController {
  ItemDetailController(this.userService);
  late Iten iten;
  final UserService userService;

  @override
  void onInit() {
    iten = Get.arguments;
    super.onInit();
  }
}
