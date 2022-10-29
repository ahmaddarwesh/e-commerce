import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/app/modules/onboarding/data/on_bording_model.dart';
import 'package:e_commerce/app/ui/themes/app_colors.dart';
import 'package:e_commerce/app/ui/widgets/custom_button.dart';
import 'package:e_commerce/app/ui/widgets/custom_text.dart';
import 'package:e_commerce/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utilities/hex_color_helper.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      init: OnboardingController(),
      builder: (context) {
        return Scaffold(
          backgroundColor: AppColors.primaryColor,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Expanded(flex: 31, child: _pageView),
                Expanded(flex: 7, child: _buildButtons)
              ],
            ),
          ),
        );
      },
    );
  }

  Widget get _pageView {
    return PageView.builder(
      itemCount: controller.onBoardingList.length,
      onPageChanged: (index) {
        controller.currentItem(index);
      },
      controller: controller.pageController,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        var item = controller.onBoardingList[index];
        return Column(
          children: [
            Expanded(flex: 17, child: imageView(item)),
            Expanded(flex: 14, child: buildTexts(item)),
          ],
        );
      },
    );
  }

  Widget get _buildButtons => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Obx(
              () {
                double current = double.parse(
                  controller.currentItem.value.toString(),
                );
                return DotsIndicator(
                  dotsCount: 3,
                  position: current,
                  decorator: DotsDecorator(
                    spacing: const EdgeInsets.symmetric(horizontal: 5),
                    color: HexColor("#999999"),
                    activeColor: HexColor("#A49966"),
                    size: const Size.square(10),
                    activeSize: const Size.square(10),
                  ),
                );
              },
            ),
          ),
          CButton(
            text: "Next",
            width: Get.width,
            onTap: () {
              controller.onNext();
            },
          ),
          CButton(
            text: "Skip",
            color: null,
            fontColor: Colors.white,
            onTap: () {},
          ),
        ],
      );

  Column buildTexts(OnBoardingModel model) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CText(
          text: model.title,
          color: Colors.white,
          fontWeight: FontWeight.w900,
          fontSize: 18,
        ),
        SizedBox(
          width: Get.width * .65,
          child: CText(
            text: model.description,
            textAlign: TextAlign.center,
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }

  Widget imageView(OnBoardingModel model) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -80,
          left: 0,
          right: 0,
          child: Image.asset(Assets.imagesOnBoardingStand),
        ),
        Align(
          alignment: const Alignment(0, -0.2),
          child: Image.asset(
            model.image,
            width: 280,
            height: 280,
          ),
        ),
      ],
    );
  }
}
