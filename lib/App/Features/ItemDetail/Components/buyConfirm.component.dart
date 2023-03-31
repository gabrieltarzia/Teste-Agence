import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';

class BuyConfirmComponent extends GetView<ItemDetailController> {
  const BuyConfirmComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(12),
        child: Card(
          child: Column(
            children: [
              const SizedBox(height: 18),
              Center(
                child: Text(
                  StringsContants.confirmBuy.tr,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _buySnackBar();
                    },
                    child: Text(StringsContants.confirm.tr),
                  ),
                  const SizedBox(width: 18),
                  ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(StringsContants.cancel.tr),
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  Card(
                      child: Column(
                    children: [
                      Text(
                        controller.iten.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 387,
                        width: 387,
                        child: Image.network(
                          controller.iten.image,
                          loadingBuilder: (context, child, loadingProgress) {
                            return loadingProgress == null
                                ? child
                                : const Center(child: LoadingComponent());
                          },
                        ),
                      ),
                    ],
                  )),
                ],
              )
            ],
          ),
        ),
      );

  void _buySnackBar() {
    final _snackBar = GetSnackBar(
      duration: const Duration(seconds: 3),
      icon: const Icon(
        Icons.check,
        color: Colors.green,
      ),
      title: StringsContants.successBuy.tr,
      message: StringsContants.succefulBuyMessege.tr,
    );
    Get.offAllNamed(AppPages.home);
    Get.showSnackbar(_snackBar);
  }
}
