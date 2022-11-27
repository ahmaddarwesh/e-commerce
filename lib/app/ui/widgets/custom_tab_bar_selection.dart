import 'package:e_commerce/app/ui/themes/app_colors.dart';
import 'package:e_commerce/app/ui/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CTabBarSelection extends StatefulWidget {
  const CTabBarSelection({Key? key}) : super(key: key);

  @override
  State<CTabBarSelection> createState() => _CTabBarSelectionState();
}

class _CTabBarSelectionState extends State<CTabBarSelection> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoSegmentedControl<int>(
      borderColor: Colors.grey[300],
      selectedColor: AppColors.primaryColor,
      onValueChanged: (value) => setState(() => selectedIndex = value),
      children: <int, Widget>{
        0: buildWidget(0, "THOBE MEASUREMENT"),
        1: buildWidget(1, "BODY MEASUREMENT"),
      },
      padding: const EdgeInsets.all(12),
      groupValue: selectedIndex,
    );
  }

  Widget buildWidget(int index, String text) {
    return SizedBox(
      height: 40,
      child: Center(
        child: CText(
          text: text,
          color: selectedIndex == index ? Colors.white : Colors.grey,
          fontSize: 12,
        ),
      ),
    );
  }
}
