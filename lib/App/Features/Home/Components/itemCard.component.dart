import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({required this.item, Key? key, required this.goToItem})
      : super(key: key);
  final Item item;
  final Function goToItem;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => goToItem(),
        title: Image.network(
          item.image,
          loadingBuilder: (context, child, loadingProgress) {
            return loadingProgress == null
                ? child
                : const Center(child: LoadingComponent());
          },
        ),
        subtitle: Text(
          item.name,
          style: ThemeConstants.titleTextStyle,
        ),
      ),
    );
  }
}
