import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (GetxController controller) {
        return const Scaffold(
          body: Center(
            child: Text(
              'SplashView E-Commerce',
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      },
    );
  }
}
