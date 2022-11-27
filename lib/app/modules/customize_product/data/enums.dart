import 'dart:core';

enum FormFieldsTypeEnum { textField, dropdown }

extension FormFieldTypeExtension on FormFieldsTypeEnum {
  String get text {
    switch (this) {
      case FormFieldsTypeEnum.textField:
        return "textbox";
      case FormFieldsTypeEnum.dropdown:
        return "dropdown";
      default:
        return "";
    }
  }
}
