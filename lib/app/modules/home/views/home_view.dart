import 'package:e_commerce/app/modules/home/data/ready_to_wear_model.dart';
import 'package:e_commerce/app/routes/app_pages.dart';
import 'package:e_commerce/app/ui/themes/app_colors.dart';
import 'package:e_commerce/app/ui/widgets/custom_button.dart';
import 'package:e_commerce/app/ui/widgets/custom_text.dart';
import 'package:e_commerce/app/utilities/hex_color_helper.dart';
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
          body: ListView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.zero,
            children: [
              Image.asset(Assets.imagesImg, fit: BoxFit.cover),
              const SizedBox(height: 40),
              _customizeYourThob,
              const SizedBox(height: 40),
              _readyToWear(),
            ],
          ),
        );
      },
    );
  }

  Widget get _customizeYourThob => CButton(
        text: "Customize your thob",
        color: AppColors.primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        fontColor: Colors.white,
        radius: 30,
        onTap: () {
          Get.toNamed(Routes.CUSTOMIZE_PRODUCT);
        },
      );

  Widget _readyToWear() {
    return SizedBox(
      height: 330,
      width: Get.width,
      child: Column(
        children: [
          _header,
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: controller.readyToWear.length,
              itemBuilder: (BuildContext context, int index) {
                ReadyToWearModel e = controller.readyToWear[index];
                return SizedBox(
                  width: Get.width * .47,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.asset(e.image, fit: BoxFit.cover),
                      ),
                      const SizedBox(height: 10),
                      CText(
                        text: e.title,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      CText(
                        text: e.price.toString(),
                        color: HexColor("#B18766"),
                        fontSize: 12,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget get _header {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CText(
            text: "Ready to wear",
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          Row(
            children: const [
              CText(
                text: "view all",
                fontWeight: FontWeight.normal,
                fontSize: 12,
                color: Colors.grey,
              ),
              SizedBox(width: 6),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 10,
              )
            ],
          ),
        ],
      ),
    );
  }
}
