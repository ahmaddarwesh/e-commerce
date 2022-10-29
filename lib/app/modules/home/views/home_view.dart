import 'package:e_commerce/app/ui/themes/app_colors.dart';
import 'package:e_commerce/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (logic) {
        return Scaffold(
          appBar: buildAppBar(),
          body: const Center(
            child: Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      },
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      toolbarHeight: 100,
      leadingWidth: 90,
      automaticallyImplyLeading: false,
      leading: Image.asset(
        Assets.iconsMenu,
      ),
      actions: [
        Image.asset(
          Assets.iconsMarket,
          width: 30,
          height: 30,
          color: Colors.black,
        ),
        const SizedBox(width: 12),
        Image.asset(
          Assets.iconsNotification,
          width: 30,
          height: 30,
          color: Colors.black,
        ),
        const SizedBox(width: 20),
      ],
      title: Image.asset(
        Assets.iconsLogo,
        height: 80,
        width: 80,
        color: AppColors.primaryColor,
      ),
    );
  }
}
