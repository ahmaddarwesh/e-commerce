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
    await 3.seconds.delay();
    Get.offAllNamed(Routes.ONBOARDING);
  }
}
