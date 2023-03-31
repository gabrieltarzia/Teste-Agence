import 'package:agence_task/App/Features/Settings/settings.controller.dart';
import 'package:agence_task/lib.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingsController());
  }
}
