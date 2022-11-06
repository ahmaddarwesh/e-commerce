import 'package:e_commerce/app/modules/account/views/account_view.dart';
import 'package:e_commerce/app/modules/categories/views/categories_view.dart';
import 'package:e_commerce/app/modules/home/views/home_view.dart';
import 'package:e_commerce/app/modules/wish_list/views/wish_list_view.dart';
import 'package:e_commerce/app/ui/themes/app_colors.dart';
import 'package:e_commerce/app/utilities/hex_color_helper.dart';
import 'package:e_commerce/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controllers/landing_controller.dart';
import '../data/nav_item_model.dart';

class LandingView extends GetView<LandingController> {
  const LandingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LandingController>(
      init: LandingController(),
      builder: (logic) {
        List<NavItemModel> items = logic.navItems;

        return Scaffold(
          appBar: buildAppBar(),
          body: PageView.builder(
            itemCount: items.length,
            physics: const NeverScrollableScrollPhysics(),
            controller: controller.pageController,
            itemBuilder: (context, index) {
              if (index == 0) return const HomeView();
              if (index == 1) return const WishListView();
              if (index == 2) return const CategoriesView();
              if (index == 3) return const AccountView();
              return const SizedBox.square();
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: items.map((e) => navItem(e)).toList(),
            onTap: controller.onPageChange,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            // unselectedIconTheme: IconThemeData(color: HexColor("#999999")),
            // selectedIconTheme: IconThemeData(color: AppColors.primaryColor),
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: HexColor("#999999"),
            currentIndex: controller.currentItem,
          ),
        );
      },
    );
  }

  BottomNavigationBarItem navItem(NavItemModel item) {
    var isSelected =
        controller.currentItem == controller.navItems.indexOf(item);

    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SvgPicture.asset(
          item.icon,
          color: isSelected ? AppColors.primaryColor : Colors.grey,
        ),
      ),
      label: item.label,
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
