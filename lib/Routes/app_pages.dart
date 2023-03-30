import 'package:agence_task/App/Features/Login/login.binding.dart';
import 'package:agence_task/lib.dart';
import '../App/Features/Home/home.view.dart';
import '../App/Features/Login/login.view.dart';

class AppPages {
  static const login = '/login';
  static const home = '/home';
  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: login,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: home,
      page: () => HomeView(),
      binding: HomeBindings(),
    ),
  ];
}
