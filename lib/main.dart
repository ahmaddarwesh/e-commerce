import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/core/local/sessions_config.dart';
import 'app/routes/app_pages.dart';
import 'app/ui/themes/app_themes.dart';
import 'main_controller.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await GetStorage.init(SessionsConfig.storageName);
  Get.lazyPut<MainController>(() => MainController(), fenix: true);
  runApp(const MyApp());
}

class MyApp extends GetView<MainController> {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (s) {
        Get.focusScope?.unfocus();
      },
      child: GetMaterialApp(
        title: controller.appName,
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: ThemeData(
          appBarTheme: AppThemes.appBarTheme,
        ),
      ),
    );
  }
}
