import 'package:agence_task/App/Controller/home.controller.dart';
import 'package:agence_task/App/View/login.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/login.controller.dart';
import 'Widgets/HomeWidgets/homeDrawer.widget.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  @override
  final controller = Get.put(HomeController());
  final loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Obx(() {
            return Text('Bem Vindo ' + controller.userName.value);
          }),
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(LoginView());
                },
                icon: const Icon(Icons.exit_to_app))
          ],
        ),
        body: _body(),
        drawer: HomeWidgets()
            .homeDrawer(controller.userName, controller.userPictureUrl));
  }

  _body() => Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('TEST'),
        ),
      );
}
