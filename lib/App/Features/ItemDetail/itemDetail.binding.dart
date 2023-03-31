import 'package:agence_task/App/Features/MyItens/Repository/i_myItens.repository.dart';
import 'package:agence_task/lib.dart';

import '../MyItens/Repository/myItens.repository.dart';

class ItemDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut(() => ItemDetailController(
            Get.find(),
          ))
      ..lazyPut<IMyItensRepository>(() => MyItenRepository())
      ..lazyPut(() => MyItenRepository());
  }
}
