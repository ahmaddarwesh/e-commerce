import 'package:e_commerce/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../data/on_bording_model.dart';

class OnboardingController extends GetxController {
  final List<OnBoardingModel> onBoardingList = [];
  RxInt currentItem = 0.obs;

  late PageController pageController;

  onNext() {
    int indexToMove = currentItem.value + 1;
    if (indexToMove > 2) {
      Get.offAllNamed(Routes.HOME);
    }
    pageController.animateToPage(
      indexToMove,
      duration: 300.milliseconds,
      curve: Curves.ease,
    );
  }

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    fillOnBoardingData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void fillOnBoardingData() {
    onBoardingList.add(
      OnBoardingModel(
        Assets.imagesOnBoarding1,
        "Tailor Made Thobes",
        "Create your custom fit those from the comfort of your home",
      ),
    );
    onBoardingList.add(
      OnBoardingModel(
        Assets.imagesOnBoarding2,
        "Customize your thobe",
        "Take your measurements and fill Up the form!  We’ll be happy to Deliver your Thobe at your door",
      ),
    );
    onBoardingList.add(
      OnBoardingModel(
        Assets.imagesOnBoarding3,
        "Multiple payment methods",
        "Pay by credit card, cash on delivery or give visit our store.",
      ),
    );
  }
}
