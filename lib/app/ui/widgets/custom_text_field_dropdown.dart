import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class CTextFieldDropDown<T> extends StatefulWidget {
  const CTextFieldDropDown({
    Key? key,
    required this.hint,
    required this.tController,
    required this.dropDownItems,
    this.showTopText = true,
    this.height,
    this.padding,
  }) : super(key: key);
  final bool showTopText;
  final String hint;
  final TextEditingController tController;
  final List<T> dropDownItems;
  final double? height;
  final EdgeInsets? padding;

  @override
  State<CTextFieldDropDown> createState() => _CTextFieldDropDownState();
}

class _CTextFieldDropDownState extends State<CTextFieldDropDown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.showTopText ? CText(text: widget.hint) : const SizedBox.shrink(),
        Container(
          padding: widget.padding,
          height: widget.height ?? 40,
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: Colors.grey[300]!,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: DropDownTextField(
            textFieldDecoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0.01, color: Colors.transparent),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0.01, color: Colors.transparent),
              ),
              hintTextDirection: TextDirection.ltr,
              hintText: '',
            ),
            controller: SingleValueDropDownController(),
            dropDownList: widget.dropDownItems
                .map((e) => DropDownValueModel(name: e.title, value: e.id))
                .toList(),

            // decoration: InputDecoration(
            //   contentPadding: EdgeInsets.zero,
            //   focusedBorder: const OutlineInputBorder(
            //     borderSide: BorderSide(width: 0.01, color: Colors.transparent),
            //   ),
            //   enabledBorder: const OutlineInputBorder(
            //     borderSide: BorderSide(width: 0.01, color: Colors.transparent),
            //   ),
            //   hintTextDirection: TextDirection.ltr,
            //   hintText: widget.hint,
            // ),
          ),
        ),
      ],
    );
  }
}
