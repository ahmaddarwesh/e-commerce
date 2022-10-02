class RegisterInputModel {
  RegisterInputModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.passwordConfirmation,
  });
  late final String firstName;
  late final String lastName;
  late final String email;
  late final String password;
  late final String passwordConfirmation;

  RegisterInputModel.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    password = json['password'];
    passwordConfirmation = json['password_confirmation'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['first_name'] = firstName;
    _data['last_name'] = lastName;
    _data['email'] = email;
    _data['password'] = password;
    _data['password_confirmation'] = passwordConfirmation;
    return _data;
  }
}
