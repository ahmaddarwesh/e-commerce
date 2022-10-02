import 'package:e_commerce/app/routes/app_pages.dart';
import 'package:e_commerce/app/utilities/misc_extentions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../ui/widgets/custom_app_bar.dart';
import '../../../ui/widgets/custom_button.dart';
import '../../../ui/widgets/custom_text.dart';
import '../../../ui/widgets/custom_text_field.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CAppBar(title: 'Register'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const CText(
                text: 'Register Now.',
                fontSize: 28,
              ),
              const SizedBox(height: 10),
              CTextField(
                hint: 'First Name',
                tController: controller.firstNameController,
                showTopText: false,
              ),
              CTextField(
                hint: 'Last Name',
                tController: controller.lastNameController,
                showTopText: false,
              ),
              CTextField(
                hint: 'Email',
                tController: controller.emailController,
                showTopText: false,
              ),
              CTextField(
                hint: 'Password',
                tController: controller.pswrdController,
                isPass: true,
                showTopText: false,
                maxLines: 1,
              ),
              CTextField(
                hint: 'Confirm Password',
                tController: controller.confPswrdController,
                isPass: true,
                showTopText: false,
                maxLines: 1,
                textInputAction: TextInputAction.done,
              ),
              const SizedBox(height: 20),
              Obx(
                () => CButton(
                  width: Get.width,
                  text: 'Register',
                  color: Colors.black,
                  buttonState: controller.buttonState.value,
                  onTap: controller.register,
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Get.offAllNamed(Routes.LOGIN);
                  },
                  child: const Text("Login"),
                ),
              ),
            ].withSpace(height: 10),
          ),
        ),
      ),
    );
  }
}
