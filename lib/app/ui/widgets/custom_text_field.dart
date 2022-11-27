import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../themes/app_themes.dart';
import 'custom_text.dart';

class CTextField extends StatelessWidget {
  final String hint;
  final TextEditingController tController;
  final TextInputAction textInputAction;
  final FocusNode? focusNode;
  final bool isPass;
  final bool expend;
  final bool showTopText;
  final int? maxLength;
  final int? maxLines;
  final double? height;
  final EdgeInsets? padding;

  final List<TextInputFormatter>? inputFormatter;

  final TextInputType? keyboardType;

  const CTextField(
      {Key? key,
      required this.hint,
      required this.tController,
      this.expend = false,
      this.focusNode,
      this.isPass = false,
      this.maxLength,
      this.showTopText = true,
      this.height,
      this.maxLines,
      this.inputFormatter,
      this.keyboardType,
      this.padding,
      this.textInputAction = TextInputAction.next})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildField();
  }

  Widget buildField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        showTopText ? CText(text: hint) : const SizedBox.shrink(),
        const SizedBox(height: 10),
        Container(
          padding: padding,
          height: height ?? 45,
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: Colors.grey[300]!,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: TextFormField(
            textDirection: TextDirection.ltr,
            textInputAction: textInputAction,
            controller: tController,
            style: AppThemes.textStyle,
            obscureText: isPass,
            obscuringCharacter: '*',
            focusNode: focusNode,
            keyboardType: keyboardType,
            maxLength: maxLength,
            expands: expend,
            inputFormatters: inputFormatter,
            maxLines: maxLines,
            decoration: const InputDecoration(
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
          ),
        ),
      ],
    );
  }
}
