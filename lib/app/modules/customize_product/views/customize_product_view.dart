import 'package:e_commerce/app/ui/widgets/custom_button.dart';
import 'package:e_commerce/app/ui/widgets/custom_text.dart';
import 'package:e_commerce/app/utilities/hex_color_helper.dart';
import 'package:e_commerce/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../ui/themes/app_colors.dart';
import '../../../ui/widgets/custom_section_views.dart';
import '../controllers/customize_product_controller.dart';
import '../data/attributes_model.dart';
import 'measurement_view.dart';

class CustomizeProductView extends GetView<CustomizeProductController> {
  const CustomizeProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      appBar: AppBar(
        title: const Text('CustomizeProductView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(flex: 5, child: buildTop()),
          Expanded(flex: 10, child: _buildAttr()),
        ],
      ),
      bottomNavigationBar: SizedBox(
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

  Widget buildTop() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: Column(
          children: [
            Expanded(flex: 10, child: SvgPicture.asset(Assets.imagesThob)),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CText(text: "PRICE"),
                  CText(
                    text: "350 QR",
                    color: HexColor("#420000"),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget _buildAttr() {
    return Center(
      child: controller.obx(
        (state) {
          var attributes = state!.data!
              .where((element) => element.attributeId == null)
              .toList();
          var options = state.data!
              .where((element) => element.attributeId != null)
              .toList();

          return ListView.separated(
            itemCount: attributes.length,
            padding: const EdgeInsets.symmetric(vertical: 20),
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              Data item = attributes[index];
              List<Data> mOptions = options
                  .where((element) => element.attributeId == item.id)
                  .toList();

              return DropDownView(
                item: item,
                data: mOptions,
                onSelect: () {},
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                color: Colors.black,
                endIndent: 4,
                indent: 5,
                thickness: 0.1,
              );
            },
          );
        },
        onError: (e) => CText(text: e!),
        onLoading: const CupertinoActivityIndicator(),
        onEmpty: const CText(text: "No Data found"),
      ),
    );
  }

  Widget colorView() {
    return const SizedBox();
  }
}
