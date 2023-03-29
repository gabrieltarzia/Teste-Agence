import 'package:agence_task/App/Controller/home.controller.dart';
import 'package:agence_task/App/Controller/user.controller.dart';
import 'package:agence_task/App/Helper/theme.helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Model/item.model.dart';
import 'Widgets/HomeWidgets/homeDrawer.widget.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  @override
  final controller = Get.put(HomeController());
  final userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Obx(() {
            return Text('Bem Vindo ' + controller.userName.value);
          }),
          actions: [
            IconButton(
                onPressed: () {
                  userController.googleLogOut();
                },
                icon: const Icon(Icons.exit_to_app))
          ],
        ),
        body: _body(),
        drawer: HomeWidgets()
            .homeDrawer(controller.userName, controller.userPictureUrl));
  }

  _body() => Padding(
      padding: EdgeInsets.all(12),
      child: Row(children: [_firstColumn(), _secondColumn()]));

  _firstColumn() => Expanded(
      flex: 5,
      child: ListView.builder(
          itemCount: controller.items.length,
          itemBuilder: (context, index) {
            final item = controller.items[index];
            return _itemCard(controller.items[index]);
          }));

  _secondColumn() => Expanded(
      flex: 5,
      child: ListView.builder(
          itemCount: controller.items.length,
          itemBuilder: (context, index) {
            final item = controller.items[index];
            return _itemCard(controller.items[index]);
          }));

  _itemCard(Item item) => Card(
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
            style: ThemeHelper.titleStyle,
          ),
        ),
      );
}
