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
        Container(
          padding: padding,
          height: height ?? 50,
          decoration: BoxDecoration(
            color: Colors.grey[200]!,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextFormField(
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
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
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 0.01, color: Colors.transparent),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 0.01, color: Colors.transparent),
              ),
              hintTextDirection: TextDirection.ltr,
              hintText: hint,
            ),
          ),
        ),
      ],
    );
  }
}
