import 'package:agence_task/App/View/login.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeWidgets {
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
                Get.to(LoginView());
              },
            ),
          ],
        ),
      );
}
