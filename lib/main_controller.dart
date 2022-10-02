import 'package:e_commerce/app/core/dio_helper/dio_client.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  final appName = 'E-commerce';

  @override
  void onInit() async {
    DioInstance.dioInit();
    super.onInit();
  }
}
