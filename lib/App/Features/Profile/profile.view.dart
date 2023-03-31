import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(StringsContants.profile.tr)),
        body: _body(),
      );

  _body() => Column(
        children: [
          const UserUpperCardComponent(),
          Container(
            color: ColorConstants.primaryColor,
            height: 57,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Center(
                  child: Text(
                    controller.appService.userServices.currentUser.name,
                    style: ThemeConstants.nameTextStyle,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          const UserInformationCardComponent(),
        ],
      );
}
