import 'package:agence_task/App/Features/MyItens/Repository/i_myItens.repository.dart';
import 'package:agence_task/lib.dart';

class MyItensController extends GetxController {
  MyItensController(this._myItensRepository);
  IMyItensRepository _myItensRepository;

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