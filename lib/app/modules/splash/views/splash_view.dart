import 'package:e_commerce/app/ui/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (GetxController controller) {
        return Scaffold(
          backgroundColor: AppColors.primaryColor,
          body: Center(
            child: SvgPicture.asset(
              Assets.iconsLogo,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
