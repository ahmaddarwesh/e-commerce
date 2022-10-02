import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_view_controller.dart';

class ProductViewView extends GetView<ProductViewController> {
  const ProductViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductViewView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProductViewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
