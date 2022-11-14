import 'package:e_commerce/app/modules/customize_product/data/attributes_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_selectable_box.dart';
import 'custom_text.dart';

class ColorView extends StatelessWidget {
  const ColorView({Key? key, required this.model}) : super(key: key);
  final Data model;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DropDownView extends StatelessWidget {
  const DropDownView({
    Key? key,
    required this.data,
    required this.onSelect,
    this.isSelect = false,
    required this.item,
  }) : super(key: key);
  final Data item;
  final List<Data> data;
  final void Function() onSelect;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * .9,
      child: Column(
        children: [
          CText(
              text: "${item.name} (${item.displayType})",
              fontSize: 16,
              fontWeight: FontWeight.bold),
          const SizedBox(height: 5),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            alignment: WrapAlignment.start,
            children: data
                .map(
                  (e) => CustomSelectableBox(
                    label: e.name!,
                    isSelected: isSelect,
                    onTap: onSelect,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class LabelView extends StatelessWidget {
  const LabelView({Key? key, required this.model}) : super(key: key);
  final Data model;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
