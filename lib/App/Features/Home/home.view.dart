import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsConstants.welcome.tr +
            controller.appService.userServices.currentUser.name),
        actions: const [
          LanguageDialogComponent(),
        ],
      ),
      body: _body(),
      drawer: DrawerComponent(
        pictureUrl: controller.appService.userServices.currentUser.imageUrl,
        userName: controller.appService.userServices.currentUser.name,
        logOutFunction: controller.appService.userServices.logout,
      ),
    );
  }

  _body() => Obx(
        () => controller.loading.isTrue
            ? const LoadingComponent()
            : Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    _cardColumn(),
                    _cardColumn(),
                  ],
                ),
              ),
      );

  Widget _cardColumn() => Expanded(
        flex: 5,
        child: ListView.builder(
          itemCount: controller.itemList.length,
          itemBuilder: (context, index) {
            final item = controller.itemList[index];
            return ItemCard(
              item: item,
              goToItem: () => controller.goToItem(item),
            );
          },
        ),
      );
}
