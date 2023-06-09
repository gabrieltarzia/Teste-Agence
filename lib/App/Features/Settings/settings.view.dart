import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(StringsConstants.settings.tr),
        ),
        body: _body(),
      );

  _body() => Column(
        children: [
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                const Card(child: LanguageDialogComponent()),
                Text(StringsConstants.selectLanguage.tr),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                const Card(child: LanguageDialogComponent()),
                Text(StringsConstants.selectLanguage.tr),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                const Card(child: LanguageDialogComponent()),
                Text(StringsConstants.selectLanguage.tr),
              ],
            ),
          ),
          const Divider()
        ],
      );
}
