import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class ItemDetailComponent extends StatelessWidget {
  const ItemDetailComponent({Key? key, required this.item}) : super(key: key);
  final Iten item;
  @override
  Widget build(BuildContext context) => Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: Get.width / 2,
              height: Get.height / 3,
              child: Image.network(
                item.image,
                loadingBuilder: (context, child, loadingProgress) {
                  return loadingProgress == null
                      ? child
                      : const LoadingComponent();
                },
              ),
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Divider(),
                Text(item.description)
              ],
            ),
          ),
        ],
      );
}
