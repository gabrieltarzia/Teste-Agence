import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class UserInformationCardComponent extends StatelessWidget {
  const UserInformationCardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Card(
          child: ListTile(
            title: Text(
              StringsContants.userInformationTitle.tr,
              style: ThemeConstants.nameTextStyle,
              textAlign: TextAlign.center,
            ),
            subtitle: Text(
              StringsContants.userInformation.tr,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
}
