import 'package:get/get.dart';

import '../controllers/customize_product_controller.dart';

class CustomizeProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomizeProductController>(
      () => CustomizeProductController(),
    );
  }
}
