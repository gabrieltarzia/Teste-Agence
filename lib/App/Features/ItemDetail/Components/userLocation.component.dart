import 'package:agence_task/lib.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UserLocationComponent extends GetView<ItemDetailController> {
  UserLocationComponent({
    Key? key,
  }) : super(key: key);

  late GoogleMapController mapController;

  void _onMapCreated(GoogleMapController mapController) {
    mapController = mapController;
  }

  @override
  Widget build(BuildContext context) => Container(
        height: Get.height / 3,
        color: Colors.black,
        child: Center(
          child: _map(),
        ),
      );

  _map() {
    return GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
            target: LatLng(
              controller.userService.userLatitude,
              controller.userService.userLongitude,
            ),
            zoom: 15));
  }
}
