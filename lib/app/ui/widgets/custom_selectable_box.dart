import 'package:e_commerce/app/ui/themes/app_colors.dart';
import 'package:e_commerce/app/ui/widgets/custom_text.dart';
import 'package:e_commerce/app/utilities/hex_color_helper.dart';
import 'package:flutter/material.dart';

class CustomSelectableBox extends StatelessWidget {
  final bool isSelected;
  final String label;
  final void Function()? onTap;

  const CustomSelectableBox({
    super.key,
    this.isSelected = false,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryColor : HexColor("#F1F1F1"),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        child: CText(
          text: label,
          fontSize: 14,
          color: isSelected ? Colors.white : Colors.black,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
