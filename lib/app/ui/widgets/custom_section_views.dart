import 'package:advance_expansion_tile/advance_expansion_tile.dart';
import 'package:e_commerce/app/modules/customize_product/data/attributes_model.dart';
import 'package:flutter/material.dart';

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
    return AdvanceExpansionTile(
      hideIcon: true,
      dense: true,
      title: CText(text: item.name!, fontSize: 16),
      decoration: const BoxDecoration(),
      tilePadding: const EdgeInsets.symmetric(horizontal: 20),
      key: UniqueKey(),
      children: [
        SizedBox(
          height: 60,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemCount: data.length,
            itemBuilder: (context, index) {
              var item = data[index];
              return CustomSelectableBox(
                label: item.name!,
                isSelected: isSelect,
                onTap: onSelect,
              );
            },
            separatorBuilder: (context, i) {
              return const SizedBox(width: 10);
            },
          ),
        ),
      ],
      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     const SizedBox(height: 5),
      //     SizedBox(
      //       width: Get.width,
      //       height: 60,
      //       child: ListView.separated(
      //         physics: const BouncingScrollPhysics(),
      //         scrollDirection: Axis.horizontal,
      //         itemCount: data.length,
      //         itemBuilder: (context, index) {
      //           var item = data[index];
      //           return CustomSelectableBox(
      //             label: item.name!,
      //             isSelected: isSelect,
      //             onTap: onSelect,
      //           );
      //         },
      //         separatorBuilder: (context, i) {
      //           return const SizedBox(width: 10);
      //         },
      //       ),
      //     ),
      //   ],
      // ),
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
