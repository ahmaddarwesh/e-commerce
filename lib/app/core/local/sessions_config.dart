import 'dart:async';

import 'package:get_storage/get_storage.dart';

class SessionsConfig {
  SessionsConfig._();

  static const storageName = 'ecommerce';
}

class Store {
  static T read<T>(String key, {required T def}) {
    GetStorage box = GetStorage(SessionsConfig.storageName);
    if (box.hasData(key)) {
      return box.read(key) as T;
    }
    return def;
  }

  static Future<void> write(String key, dynamic value) async {
    GetStorage box = GetStorage(SessionsConfig.storageName);
    await box.write(key, value);
  }
}

class SKeys {
  SKeys._();

  static const user = 'USER';
  static const token = 'SESSION';
  static const myInfo = 'MY_INFO';
  static const isAuth = 'IS_AUTH';
}
