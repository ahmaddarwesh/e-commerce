import 'package:e_commerce/app/core/local/sessions_config.dart';
import 'package:e_commerce/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    navigateRightRoute();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void navigateRightRoute() async {
    await 2.seconds.delay();
    bool isAuth = Store.read<bool>(SKeys.isAuth, def: false);
    if (!isAuth) {
      Get.offAllNamed(Routes.REGISTER);
    } else {
      Get.offAllNamed(Routes.HOME);
    }
  }
}
