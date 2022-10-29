import 'package:e_commerce/app/core/dio_helper/dio_client.dart';
import 'package:get/get.dart';

import 'app/core/local/sessions_config.dart';

class MainController extends GetxController {
  static get to => Get.find<MainController>;
  final appName = 'E-commerce';
  bool isAuth = false;

  checkIfAuth() {
    isAuth = Store.read<bool>(SKeys.isAuth, def: false);
  }

  @override
  void onInit() async {
    checkIfAuth();
    DioInstance.dioInit();
    super.onInit();
  }
}
