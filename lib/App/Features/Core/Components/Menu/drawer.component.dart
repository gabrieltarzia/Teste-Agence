import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent(
      {Key? key,
      required this.userName,
      this.pictureUrl,
      required this.logOutFunction})
      : super(key: key);

  final String userName;
  final String? pictureUrl;
  final Function logOutFunction;

  @override
  Widget build(BuildContext context) => Drawer(
        child: ListView(
          padding: const EdgeInsets.all(7),
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(),
              child: Column(
                children: [
                  pictureUrl == null
                      ? const Placeholder()
                      : CircleAvatar(
                          radius: 60.0,
                          backgroundImage: NetworkImage(pictureUrl!),
                        ),
                  Text(userName)
                ],
              ),
            ),
            ListTile(
              title: Text(StringsContants.profile.tr),
              onTap: () {
                Get.toNamed(AppPages.profile);
              },
            ),
            ListTile(
              title: Text(StringsContants.myItens.tr),
              onTap: () {
                Get.toNamed(AppPages.myIten);
              },
            ),
            ListTile(
              title: Text(StringsContants.settings.tr),
              onTap: () {
                Get.toNamed(AppPages.settings);
              },
            ),
            ListTile(
              title: Text(StringsContants.logout.tr),
              onTap: () {
                logOutFunction();
              },
            ),
          ],
        ),
      );
}
