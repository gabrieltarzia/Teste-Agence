import 'package:agence_task/lib.dart';

class HomeController extends GetxController {
  HomeController(this._homeRepository, this.appService);

  final IHomeRepository _homeRepository;
  final AppService appService;

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
