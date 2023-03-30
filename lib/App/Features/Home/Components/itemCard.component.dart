import 'package:agence_task/App/Constants/theme.constants.dart';
import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({required this.item, Key? key}) : super(key: key);
  final Item item;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Image.network(
          item.image,
          loadingBuilder: (context, child, loadingProgress) {
            return loadingProgress == null
                ? child
                : const Center(child: CircularProgressIndicator());
          },
        ),
        subtitle: Text(
          item.name,
          style: ThemeConstants.titleStyle,
        ),
      ),
    );
  }
}
