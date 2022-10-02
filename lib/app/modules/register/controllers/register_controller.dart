import 'package:e_commerce/app/modules/register/data/register_input_model.dart';
import 'package:e_commerce/app/modules/register/services/register_service.dart';
import 'package:e_commerce/app/routes/app_pages.dart';
import 'package:e_commerce/app/utilities/dialogs.dart';
import 'package:e_commerce/app/utilities/logging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/dio_helper/dio_helper.dart';
import '../../../ui/widgets/custom_button.dart';
import '../data/register_output_model.dart';

class RegisterController extends GetxController {
  late TextEditingController emailController,
      pswrdController,
      confPswrdController,
      firstNameController,
      lastNameController;
  late Rx<ButtonState> buttonState;

  @override
  void onInit() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    pswrdController = TextEditingController();
    confPswrdController = TextEditingController();
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

  void register() async {
    RxStatus.loading();
    RegisterInputModel inputModel = RegisterInputModel(
      firstName: firstNameController.text,
      lastName: lastNameController.text,
      email: emailController.text,
      password: pswrdController.text,
      passwordConfirmation: confPswrdController.text,
    );
    Log.info(inputModel.toJson());
    await RegisterService.register(
      inputModel,
      onSuccess: (RegisterOutputModel outputModel) {
        RxStatus.success();
        Dialogs.showSuccess(
          "Account Created",
          text:
              "Thank you for registering with us, an email with activation link has been sent to your email address",
          onConfirm: () {
            Get.offAllNamed(Routes.LOGIN);
          },
        );
      },
      onError: (e) {
        String message = DioHelper.errorHandler(e);
        Dialogs.showError(message);
        RxStatus.error(message);
      },
    );
  }
}
