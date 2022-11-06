import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.dart';
import '../data/nav_item_model.dart';

class LandingController extends GetxController {
  List<NavItemModel> navItems = [];
  late int currentItem;

  late PageController pageController;

  @override
  void onInit() {
    navItems.add(NavItemModel("Home", Assets.iconsHome));
    navItems.add(NavItemModel("Wish List", Assets.iconsFav));
    navItems.add(NavItemModel("Categories", Assets.iconsCategories));
    navItems.add(NavItemModel("Account", Assets.iconsAccount));
    currentItem = 0;
    pageController = PageController(
      initialPage: currentItem,
      viewportFraction: 0.9999,
    );
    super.onInit();
  }

  @override
  void onReady() async {
    // await 1.seconds.delay();
    // Get.toNamed(Routes.PRODUCTS_LIST);
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onPageChange(int value) {
    currentItem = value;
    pageController.jumpToPage(
      value,
      // duration: 200.milliseconds,
      // curve: Curves.bounceIn,
    );
    update();
  }
}
