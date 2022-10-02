class RegisterOutputModel {
  RegisterOutputModel({
    required this.result,
    required this.message,
    required this.code,
    required this.activationLink,
  });
  late final bool result;
  late final String message;
  late final int code;
  late final String activationLink;

  RegisterOutputModel.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    message = json['message'];
    code = json['code'];
    activationLink = json['activation_link'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['result'] = result;
    _data['message'] = message;
    _data['code'] = code;
    _data['activation_link'] = activationLink;
    return _data;
  }
}
