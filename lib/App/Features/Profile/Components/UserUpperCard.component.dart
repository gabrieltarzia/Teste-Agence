import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class UserUpperCardComponent extends GetView<ProfileController> {
  const UserUpperCardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: Get.height / 4,
            width: Get.width,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image:
                          NetworkImage(PathConstants.backgroundProfilePath))),
            ),
          ),
          CircleAvatar(
            radius: 124,
            backgroundImage: NetworkImage(
                controller.appService.userServices.currentUser.imageUrl),
          ),
        ],
      );
}
