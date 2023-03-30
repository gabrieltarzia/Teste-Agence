import 'package:agence_task/App/App.dart';
import 'package:agence_task/App/Features/Core/app.controller.dart';
import 'package:cupertino_text_button/cupertino_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageDialogComponent extends GetView<AppController> {
  const LanguageDialogComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: () => _openDialogMenu(),
        icon: const Icon(Icons.language),
      );

  void _openDialogMenu() => Get.defaultDialog(
        title: StringsContants.selectLanguage.tr,
        content: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  controller.changeLanguage(
                    const Locale('pt', 'BR'),
                  );
                  Get.back();
                },
                child: Text(StringsContants.brazilianPortuguese.tr)),
            ElevatedButton(
                onPressed: () {
                  controller.changeLanguage(
                    const Locale('pt', 'BR'),
                  );
                  Get.back();
                },
                child: Text(StringsContants.english.tr))
          ],
        ),
        actions: [
          CupertinoTextButton(
              onTap: () {
                Get.back();
              },
              text: StringsContants.back.tr),
        ],
      );
}
