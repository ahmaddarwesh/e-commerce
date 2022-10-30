import 'package:e_commerce/app/ui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.dart';
import '../../../routes/app_pages.dart';
import '../../../ui/widgets/custom_button.dart';
import '../../../ui/widgets/custom_text.dart';
import '../../../ui/widgets/custom_text_field.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: 'Login'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      Assets.iconsLogo,
                      fit: BoxFit.fitWidth,
                      height: 120,
                    ),
                    const CText(
                      text: 'E-commerce',
                      fontSize: 18,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              CTextField(
                hint: 'Email',
                tController: controller.emailController,
                showTopText: false,
              ),
              const SizedBox(height: 20),
              CTextField(
                hint: 'Password',
                tController: controller.pswrdController,
                isPass: true,
                showTopText: false,
                maxLines: 1,
              ),
              const SizedBox(height: 20),
              Obx(
                () => CButton(
                  width: Get.width,
                  text: 'Login',
                  color: Colors.black,
                  buttonState: controller.buttonState.value,
                  onTap: () {
                    controller.login();
                  },
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Get.offAllNamed(Routes.REGISTER);
                  },
                  child: const Text("Register"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
