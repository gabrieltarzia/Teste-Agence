import 'package:agence_task/lib.dart';
import 'package:cupertino_text_button/cupertino_text_button.dart';
import 'package:flutter/material.dart';

class LanguageDialogComponent extends GetView<AppService> {
  const LanguageDialogComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: () => _openDialogMenu(),
        icon: const Icon(Icons.language),
      );

  void _openDialogMenu() => Get.defaultDialog(
        title: StringsConstants.selectLanguage.tr,
        content: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  controller.changeLanguage(
                    const Locale('pt', 'BR'),
                  );
                  _closeMenu();
                },
                child: Text(StringsConstants.brazilianPortuguese.tr)),
            ElevatedButton(
                onPressed: () {
                  controller.changeLanguage(
                    const Locale('en', 'US'),
                  );
                  _closeMenu();
                },
                child: Text(StringsConstants.english.tr))
          ],
        ),
        actions: [
          CupertinoTextButton(
              onTap: () {
                _closeMenu();
              },
              text: StringsConstants.back.tr),
        ],
      );

  void _closeMenu() => Get.back();
}
