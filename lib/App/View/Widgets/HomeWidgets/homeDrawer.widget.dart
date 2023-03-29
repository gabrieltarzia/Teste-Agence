import 'package:agence_task/App/Controller/user.controller.dart';
import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Controller/home.controller.dart';

class HomeWidgets {
  final controller = Get.put(HomeController());
  final userController = Get.put(UserController());
  homeDrawer(RxString userName, RxString pictureUrl) => Drawer(
        child: ListView(
          padding: const EdgeInsets.all(7),
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(),
              child: Obx(() {
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 60.0,
                      backgroundImage: NetworkImage(pictureUrl.value),
                    ),
                    Text(userName.value)
                  ],
                );
              }),
            ),
            ListTile(
              title: const Text('Perfil'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Meus produtos'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Configurações'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('LogOut'),
              onTap: () {
                userController.googleLogOut();
              },
            ),
          ],
        ),
      );
}
