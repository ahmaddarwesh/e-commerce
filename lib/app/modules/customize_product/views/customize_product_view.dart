import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/customize_product_controller.dart';

class CustomizeProductView extends GetView<CustomizeProductController> {
  const CustomizeProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomizeProductView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CustomizeProductView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
