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
            child: Image.network(PathConstants.backgroundProfilePath,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) =>
                    loadingProgress == null
                        ? child
                        : const Center(child: LinearProgressIndicator())),
          ),
          CircleAvatar(
            radius: 124,
            backgroundImage: NetworkImage(
                controller.appService.userServices.currentUser.imageUrl),
          ),
        ],
      );
}
