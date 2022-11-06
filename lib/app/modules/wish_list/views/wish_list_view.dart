import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/wish_list_controller.dart';

class WishListView extends GetView<WishListController> {
  const WishListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WishListView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'WishListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
