import 'package:cool_alert/cool_alert.dart';
import 'package:get/get.dart';

import '../../generated/assets.dart';

class Dialogs {
  Dialogs._();

  static showSuccess(String title, {String? text, onConfirm}) {
    CoolAlert.show(
      context: Get.context!,
      type: CoolAlertType.success,
      title: title,
      text: text,
      confirmBtnText: 'تم',
      barrierDismissible: false,
      onConfirmBtnTap: () {
        if (onConfirm != null) {
          onConfirm();
        } else {
          Get.back();
        }
      },
      lottieAsset: Assets.animSuccess,
      loopAnimation: false,
      showCancelBtn: false,
    );
  }

  static showError(String title, {String? text}) {
    CoolAlert.show(
      context: Get.context!,
      type: CoolAlertType.error,
      title: title,
      text: text,
      confirmBtnText: 'تم',
      lottieAsset: Assets.animError,
      loopAnimation: false,
      animType: CoolAlertAnimType.scale,
      onConfirmBtnTap: () {
        Get.back();
      },
      showCancelBtn: false,
    );
  }

  static void showConfirmation({
    required String title,
    required void Function()? onConfirm,
    required void Function()? onCancel,
    String? text,
  }) {
    CoolAlert.show(
      context: Get.context!,
      type: CoolAlertType.confirm,
      text: text,
      title: title,
      confirmBtnText: 'موافق',
      cancelBtnText: 'إلفاء',
      onConfirmBtnTap: onConfirm,
      onCancelBtnTap: onCancel,
      lottieAsset: Assets.animConfirm,
    );
  }
}
