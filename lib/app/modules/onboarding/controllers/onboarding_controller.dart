import 'package:e_commerce/generated/assets.dart';
import 'package:get/get.dart';

import '../data/on_bording_model.dart';

class OnboardingController extends GetxController {
  final List<OnBoardingModel> onBoardingList = [];
  RxInt currentItem = 0.obs;

  onNext() {
    currentItem(currentItem.value += 1);
  }

  @override
  void onInit() {
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
