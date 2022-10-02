import 'package:flutter/material.dart';

import '../themes/app_themes.dart';

class CText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final TextAlign? textAlign;
  final double? height;
  final FontWeight? fontWeight;
  final TextDirection? textDirection;
  final int? maxLines;
  final double? letterSpacing;
  final bool? softWrap;
  final List<double>? presetFontSizes;
  final TextOverflow? overflow;
  final Decoration? decoration;
  final String? fontFamily;
  final FontStyle? fontStyle;

  const CText({
    Key? key,
    required this.text,
    this.fontSize,
    this.color,
    this.textAlign,
    this.height,
    this.fontWeight,
    this.textDirection,
    this.maxLines,
    this.letterSpacing,
    this.presetFontSizes,
    this.overflow,
    this.decoration,
    this.fontFamily,
    this.fontStyle,
    this.softWrap = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: overflow,
      softWrap: softWrap,
      style: AppThemes.textStyle.copyWith(
        height: height,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
