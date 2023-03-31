import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class MyItensView extends GetView<MyItensController> {
  const MyItensView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsContants.myItens.tr),
      ),
      body: _body(),
    );
  }

  _body() => Obx(
        () => controller.loading.isTrue
            ? const LoadingComponent()
            : Padding(
                padding: const EdgeInsets.all(12),
                child: _cardColumn(),
              ),
      );

  Widget _cardColumn() => controller.myItensList.isNotEmpty
      ? Expanded(
          flex: 5,
          child: ListView.builder(
            itemCount: controller.myItensList.length,
            itemBuilder: (context, index) {
              final item = controller.myItensList[index];
              return ItemCard(
                item: item,
                goToItem: () => null,
              );
            },
          ),
        )
      : Center(
          child: Text(StringsContants.noItens.tr),
        );
}
