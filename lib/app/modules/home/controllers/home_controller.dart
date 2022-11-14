import 'package:e_commerce/generated/assets.dart';
import 'package:get/get.dart';

import '../data/ready_to_wear_model.dart';

class HomeController extends GetxController {
  List<ReadyToWearModel> readyToWear = [];
  @override
  void onInit() {
    readyToWear
        .add(ReadyToWearModel("Blake Night Abbey", Assets.imagesImg1, 1425.00));
    readyToWear
        .add(ReadyToWearModel("Blake Night Abbey", Assets.imagesImg2, 1425.00));
    readyToWear
        .add(ReadyToWearModel("Blake Night Abbey", Assets.imagesImg1, 1425.00));
    readyToWear
        .add(ReadyToWearModel("Blake Night Abbey", Assets.imagesImg2, 1425.00));
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
