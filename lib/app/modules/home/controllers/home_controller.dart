import 'package:e_commerce/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    await 1.seconds.delay();
    Get.toNamed(Routes.PRODUCTS_LIST);
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
