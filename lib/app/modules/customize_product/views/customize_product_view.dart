import 'package:e_commerce/app/ui/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../ui/widgets/custom_section_views.dart';
import '../controllers/customize_product_controller.dart';
import '../data/attributes_model.dart';

class CustomizeProductView extends GetView<CustomizeProductController> {
  const CustomizeProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomizeProductView'),
        centerTitle: true,
      ),
      body: Center(
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
                return const SizedBox(height: 40);
              },
            );
          },
          onError: (e) => CText(text: e!),
          onLoading: const CupertinoActivityIndicator(),
          onEmpty: const CText(text: "No Data found"),
        ),
      ),
    );
  }

  Widget colorView() {
    return const SizedBox();
  }
}
