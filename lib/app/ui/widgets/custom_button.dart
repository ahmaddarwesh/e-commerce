import 'package:e_commerce/app/ui/themes/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';

import 'custom_text.dart';

enum ButtonState { active, loading, disabled }

ButtonState getStateFromRx(RxStatus status) {
  if (status == RxStatus.loading()) {
    return ButtonState.loading;
  }
  if (status == RxStatus.success()) {
    return ButtonState.active;
  }
  if (status == RxStatus.empty()) {
    return ButtonState.active;
  }

  if (status == RxStatus.error()) {
    return ButtonState.active;
  }

  return ButtonState.active;
}

class CButton extends StatelessWidget {
  final String? text;

  final EdgeInsets? padding;
  final Function()? onTap;
  final Color? color;
  final Color? fontColor;
  final double? width;
  final double? height;
  final double? radius;
  final double? fontSize;
  final Border? border;
  final EdgeInsets? margin;
  final bool disable;
  final FontWeight? fontWight;
  final double? opacity;
  final bool withAnimated;
  final ButtonState buttonState;

  const CButton({
    Key? key,
    this.text,
    this.onTap,
    this.color = Colors.white,
    this.fontColor,
    this.padding,
    this.width,
    this.height,
    this.radius,
    this.border,
    this.margin,
    this.disable = false,
    this.fontSize,
    this.fontWight,
    this.opacity,
    this.buttonState = ButtonState.active,
    this.withAnimated = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: disable,
      child: Container(
        width: width,
        margin: margin,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 0),
          border: border,
          color: disable ? Colors.grey[300] : color,
        ),
        child: CupertinoButton(
          pressedOpacity: opacity ?? 0.4,
          disabledColor: Colors.black12,
          borderRadius: BorderRadius.circular(radius ?? 15),
          onPressed: onTap,
          padding: padding ?? EdgeInsets.zero,
          child: SimpleBuilder(
            builder: (c) {
              Widget widget(Color color) {
                return CText(
                  text: text!,
                  fontSize: fontSize,
                  color: color,
                  fontWeight: fontWight ?? FontWeight.w600,
                );
              }

              switch (buttonState) {
                case ButtonState.active:
                  return widget(fontColor ?? AppColors.primaryColor);
                case ButtonState.loading:
                  return const CupertinoActivityIndicator(color: Colors.white);
                case ButtonState.disabled:
                  return widget(Colors.grey[500]!);
                default:
                  return const SizedBox.shrink();
              }
            },
          ),
          // color: disable ? Colors.grey[300] : color,
        ),
      ),
    );
  }
}
