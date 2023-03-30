import 'package:agence_task/App/Features/Core/app.controller.dart';
import 'package:agence_task/App/Features/Home/Repository/i_home.repository.dart';
import 'package:agence_task/App/Model/item.model.dart';
import 'package:agence_task/Routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController(this._homeRepository, this.appController);

  final IHomeRepository _homeRepository;
  final AppController appController;

  final loading = false.obs;

  final itemList = <Item>[].obs;

  @override
  void onInit() {
    _getItens();
    super.onInit();
  }

  void _getItens() {
    loading(true);
    final result = _homeRepository.getItens();
    itemList(result);
    loading(false);
  }

  void goToItem(Item item) => Get.toNamed(AppPages.itemDetail, arguments: item);
}
