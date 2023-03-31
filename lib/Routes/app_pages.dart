import 'package:agence_task/App/Features/MyItens/myItens.binding.dart';
import 'package:agence_task/App/Features/MyItens/myItens.view.dart';
import 'package:agence_task/App/Features/Settings/settings.binding.dart';
import 'package:agence_task/lib.dart';

import '../App/Features/Settings/settings.view.dart';

class AppPages {
  static const login = '/login';
  static const home = '/home';
  static const itemDetail = '/itemDetail';
  static const profile = '/profile';
  static const myIten = '/myItens';
  static const settings = '/settings';

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
    GetPage(
      name: profile,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: myIten,
      page: () => const MyItensView(),
      binding: MyItensBinding(),
    ),
    GetPage(
      name: settings,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
  ];
}
