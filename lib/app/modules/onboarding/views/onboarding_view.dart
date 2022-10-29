import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/app/ui/themes/app_colors.dart';
import 'package:e_commerce/app/ui/widgets/custom_button.dart';
import 'package:e_commerce/app/ui/widgets/custom_text.dart';
import 'package:e_commerce/app/utilities/hex_color_helper.dart';
import 'package:e_commerce/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                Expanded(flex: 17, child: _imageView),
                Expanded(flex: 14, child: _buildTexts),
                Expanded(flex: 5, child: _buildButtons)
              ],
            ),
          ),
        );
      },
    );
  }

  Widget get _buildButtons => Column(
        children: [
          CButton(
            text: "Next",
            width: Get.width,
            onTap: () {},
          ),
          CButton(
            text: "Skip",
            color: null,
            fontColor: Colors.white,
            onTap: () {},
          ),
        ],
      );

  Column get _buildTexts {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CText(
          text: "Tailor Made Thobes",
          color: Colors.white,
          fontWeight: FontWeight.w900,
          fontSize: 18,
        ),
        SizedBox(
          width: Get.width * .65,
          child: const CText(
            text: "Create your custom fit those from the comfort of your home",
            textAlign: TextAlign.center,
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: DotsIndicator(
            dotsCount: 3,
            decorator: DotsDecorator(
              spacing: const EdgeInsets.symmetric(horizontal: 5),
              color: HexColor("#999999"),
              activeColor: HexColor("#A49966"),
              size: const Size.square(10),
              activeSize: const Size.square(10),
            ),
          ),
        ),
      ],
    );
  }

  Widget get _imageView {
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
            Assets.imagesOnBoarding1,
            width: 280,
            height: 280,
          ),
        ),
      ],
    );
  }
}
