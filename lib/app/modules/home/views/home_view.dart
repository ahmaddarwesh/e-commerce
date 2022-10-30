import 'package:e_commerce/app/ui/themes/app_colors.dart';
import 'package:e_commerce/app/utilities/hex_color_helper.dart';
import 'package:e_commerce/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> navigationBarItems = [];
    navigationBarItems.add(navItem(Assets.iconsHome, "Home"));
    navigationBarItems.add(navItem(Assets.iconsFav, "Wish List"));
    navigationBarItems.add(navItem(Assets.iconsCategories, "Categories"));
    navigationBarItems.add(navItem(Assets.iconsAccount, "Account"));
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
          bottomNavigationBar: BottomNavigationBar(
            items: navigationBarItems,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 10,
            unselectedIconTheme: IconThemeData(color: HexColor("#999999")),
            selectedIconTheme: IconThemeData(color: AppColors.primaryColor),
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: HexColor("#999999"),
            currentIndex: 0,
          ),
        );
      },
    );
  }

  BottomNavigationBarItem navItem(String icon, String text) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(icon),
      label: text,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      toolbarHeight: 92,
      leadingWidth: 27 + 36,
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: const EdgeInsets.only(left: 36),
        child: SvgPicture.asset(
          Assets.iconsMenu,
          width: 27,
          height: 18,
        ),
      ),
      actions: [
        SvgPicture.asset(
          Assets.iconsMarket,
          width: 21,
          height: 24,
          color: Colors.black,
        ),
        const SizedBox(width: 20),
        SvgPicture.asset(
          Assets.iconsNotification,
          width: 20,
          height: 25,
          color: Colors.black,
        ),
        const SizedBox(width: 43),
      ],
      title: SvgPicture.asset(
        Assets.iconsLogo,
        height: 80,
        width: 80,
        color: AppColors.primaryColor,
      ),
    );
  }
}
