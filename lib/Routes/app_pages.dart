import 'package:agence_task/lib.dart';

class AppPages {
  static const login = '/login';
  static const home = '/home';
  static const itemDetail = '/itemDetail';
  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: itemDetail,
      page: () => const ItemDetailView(),
      binding: ItemDetailBinding(),
    ),
  ];
}
