import 'package:e_commerce/app/modules/customize_product/controllers/customize_product_controller.dart';
import 'package:e_commerce/app/modules/customize_product/data/enums.dart';
import 'package:e_commerce/app/ui/widgets/custom_tab_bar_selection.dart';
import 'package:e_commerce/app/ui/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../ui/themes/app_colors.dart';
import '../../../ui/widgets/custom_app_bar.dart';
import '../../../ui/widgets/custom_button.dart';
import '../../../ui/widgets/custom_text.dart';
import '../../../ui/widgets/custom_text_field_dropdown.dart';
import '../data/attributes_model.dart';

class MeasurementView extends GetView<CustomizeProductController> {
  const MeasurementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: 'Measurement'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 70,
              width: Get.width,
              child: const CTabBarSelection(),
            ),
          ),
          Expanded(child: buildForm()),
        ],
      ),
      bottomSheet: SizedBox(
        width: Get.width,
        child: CButton(
          text: "ADD MEASUREMENT",
          color: AppColors.primaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          fontColor: Colors.white,
          radius: 0,
          onTap: () {
            Get.to(const MeasurementView());
          },
        ),
      ),
    );
  }

  buildForm() {
    return controller.obx(
      (state) {
        var fields = state!.formFields!;

        return ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          itemCount: fields.length,
          itemBuilder: (BuildContext context, int index) {
            FormFields formField = fields[index];
            if (formField.type == FormFieldsTypeEnum.textField.text) {
              return CTextField(
                hint: formField.label!,
                tController: TextEditingController(),
              );
            } else if (formField.type == FormFieldsTypeEnum.dropdown.text) {
              return CTextFieldDropDown<Options>(
                hint: formField.label!,
                tController: TextEditingController(),
                dropDownItems: formField.options!,
              );
            } else {
              throw "The type ${formField.type} not implemented yet";
            }
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 20);
          },
        );
      },
      onError: (e) => CText(text: e!),
      onLoading: const CupertinoActivityIndicator(),
      onEmpty: const CText(text: "No Data found"),
    );
  }
}
