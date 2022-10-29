import 'package:e_commerce/app/core/dio_helper/dio_client.dart';
import 'package:e_commerce/app/utilities/logging.dart';
import 'package:get/get.dart';

import 'app/core/local/sessions_config.dart';

class MainController extends GetxController {
  final appName = 'E-commerce';
  bool isAuth = false;

  checkIfAuth() {
    isAuth = Store.read<bool>(SKeys.isAuth, def: false);
    if (isAuth) {
      Log.info("AUTH");
      // Get.offAllNamed(Routes.HOME);
    } else {
      Log.info("NOT_AUTH");
      // Get.offAllNamed(Routes.REGISTER);
    }
  }

  @override
  void onInit() async {
    checkIfAuth();
    DioInstance.dioInit();
    super.onInit();
  }
}
