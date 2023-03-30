import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class HomeButtonComponent extends StatelessWidget {
  const HomeButtonComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => IconButton(
      onPressed: () => Get.offAllNamed(AppPages.home),
      icon: const Icon(Icons.home));
}
