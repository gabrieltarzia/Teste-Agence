import 'package:agence_task/lib.dart';

class MyItensController extends GetxController {
  MyItensController(this._myItensRepository);
  final IMyItensRepository _myItensRepository;

  final loading = false.obs;
  final myItensList = <Iten>[].obs;

  @override
  void onInit() {
    _getMyItens();
    super.onInit();
  }

  void _getMyItens() {
    loading(true);
    final result = _myItensRepository.getMyItens();
    myItensList(result);
    loading(false);
  }
}
