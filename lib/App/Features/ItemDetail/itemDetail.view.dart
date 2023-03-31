import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class ItemDetailView extends GetView<ItemDetailController> {
  const ItemDetailView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(StringsContants.itemDetail.tr),
        ),
        body: _body(),
      );

  _body() => ListView(
        children: [
          const UserLocationComponent(),
          ItemDetailComponent(
            item: controller.iten,
          ),
          const BuyButtonComponent(),
        ],
      );
}
