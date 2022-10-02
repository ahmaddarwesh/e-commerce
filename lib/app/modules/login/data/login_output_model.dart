class LoginOutputModel {
  LoginOutputModel({
    required this.result,
    required this.message,
    required this.code,
    required this.user,
    required this.token,
  });
  late final bool result;
  late final String message;
  late final int code;
  late final User user;
  late final String token;

  LoginOutputModel.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    message = json['message'];
    code = json['code'];
    user = User.fromJson(json['user']);
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['result'] = result;
    _data['message'] = message;
    _data['code'] = code;
    _data['user'] = user.toJson();
    _data['token'] = token;
    return _data;
  }
}

class User {
  User({
    required this.id,
    required this.name,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.phone,
    required this.status,
    required this.activated,
    required this.activationDate,
    required this.roleId,
    this.code,
    required this.patientId,
    required this.points,
    required this.role,
    required this.addresses,
    this.discount,
  });
  late final int id;
  late final String name;
  late final String firstName;
  late final String lastName;
  late final String email;
  late final Null phone;
  late final int status;
  late final int activated;
  late final String activationDate;
  late final int roleId;
  late final Null code;
  late final int patientId;
  late final int points;
  late final Role role;
  late final List<dynamic> addresses;
  late final Null discount;

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    phone = null;
    status = json['status'];
    activated = json['activated'];
    activationDate = json['activation_date'];
    roleId = json['role_id'];
    code = null;
    patientId = json['patientId'];
    points = json['points'];
    role = Role.fromJson(json['role']);
    addresses = List.castFrom<dynamic, dynamic>(json['addresses']);
    discount = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['first_name'] = firstName;
    _data['last_name'] = lastName;
    _data['email'] = email;
    _data['phone'] = phone;
    _data['status'] = status;
    _data['activated'] = activated;
    _data['activation_date'] = activationDate;
    _data['role_id'] = roleId;
    _data['code'] = code;
    _data['patientId'] = patientId;
    _data['points'] = points;
    _data['role'] = role.toJson();
    _data['addresses'] = addresses;
    _data['discount'] = discount;
    return _data;
  }
}

class Role {
  Role({
    required this.id,
    required this.name,
    required this.status,
    required this.sortorder,
  });
  late final int id;
  late final String name;
  late final int status;
  late final int sortorder;

  Role.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    sortorder = json['sortorder'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['status'] = status;
    _data['sortorder'] = sortorder;
    return _data;
  }
}
