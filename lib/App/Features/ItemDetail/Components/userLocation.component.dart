import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class UserLocationComponent extends StatelessWidget {
  const UserLocationComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: Get.height / 3,
        color: Colors.black,
        child: const Center(
          child: Text(
            'MAPA',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );

      _buyConfirm() {
        
      }
      
}
