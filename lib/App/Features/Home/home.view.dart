import 'package:agence_task/App/Features/Core/Components/Menu/drawer.component.dart';
import 'package:agence_task/App/Features/Home/home.controller.dart';
import 'package:agence_task/App/Features/Core/Components/loading.component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Components/itemCard.component.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text('Bem Vindo ' +
              controller.appController.userServices.currentUser.name.value),
        ),
        actions: [
          IconButton(
            onPressed: () {
              controller.appController.userServices.googleLogOut();
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: _body(),
      drawer: DrawerComponent(
        pictureUrl:
            controller.appController.userServices.currentUser.imageUrl(),
        onLogoutTap: () => controller.appController.userServices.googleLogOut(),
        userName: controller.appController.userServices.currentUser.name(),
      ),
    );
  }

  _body() => Obx(
        () => controller.loading.isTrue
            ? const LoadingComponent()
            : Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    _cardColumn(),
                    _cardColumn(),
                  ],
                ),
              ),
      );

  Widget _cardColumn() => Expanded(
        flex: 5,
        child: ListView.builder(
          itemCount: controller.itemList.length,
          itemBuilder: (context, index) {
            final item = controller.itemList[index];
            return ItemCard(
              item: item,
            );
          },
        ),
      );
}
