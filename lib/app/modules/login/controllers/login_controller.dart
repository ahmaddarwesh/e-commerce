import 'package:e_commerce/app/core/local/sessions_config.dart';
import 'package:e_commerce/app/modules/login/data/login_input_model.dart';
import 'package:e_commerce/app/modules/login/data/login_output_model.dart';
import 'package:e_commerce/app/modules/login/services/login_service.dart';
import 'package:e_commerce/app/routes/app_pages.dart';
import 'package:e_commerce/app/ui/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/dio_helper/dio_helper.dart';
import '../../../utilities/dialogs.dart';

class LoginController extends GetxController {
  late TextEditingController emailController, pswrdController;
  late Rx<ButtonState> buttonState;

  @override
  void onInit() {
    emailController = TextEditingController();
    pswrdController = TextEditingController();
    buttonState = Rx(ButtonState.active);
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

  void login() async {
    RxStatus.loading();
    LoginInputModel inputModel = LoginInputModel(
      email: emailController.text,
      password: pswrdController.text,
    );
    await LoginService.login(
      inputModel,
      onSuccess: (LoginOutputModel outputModel) {
        RxStatus.success();
        Store.write(SKeys.user, outputModel.user);
        Store.write(SKeys.token, outputModel.token);
        Store.write(SKeys.isAuth, true);

        Get.offAllNamed(Routes.LANDING);
      },
      onError: (e) {
        var message = DioHelper.errorHandler(e);
        Dialogs.showError(message);
        RxStatus.error(message);
      },
    );
  }
}
