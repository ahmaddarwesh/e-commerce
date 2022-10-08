import 'package:e_commerce/app/modules/products_list/data/product_model.dart';
import 'package:e_commerce/app/ui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../ui/widgets/custom_text.dart';
import '../controllers/products_list_controller.dart';

class ProductsListView extends GetView<ProductsListController> {
  const ProductsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ProductsListController(),
      builder: (GetxController c) {
        return Scaffold(
          appBar: CAppBar(
            title: "Products",
          ),
          body: Center(
            child: controller.obx(
              onEmpty: buildEmpty,
              onError: (error) => buildError(error!),
              onLoading: const CircularProgressIndicator(),
              (state) {
                return buildProductsList(state!);
              },
            ),
          ),
        );
      },
    );
  }

  CText buildError(String e) {
    return const CText(
      text: "Error",
      fontSize: 20,
      color: Colors.red,
    );
  }

  Widget get buildEmpty {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        CText(
          text: 'There is no items ',
          fontSize: 20,
          color: Colors.grey,
        ),
      ],
    );
  }

  Widget buildProductsList(List<Product> list) {
    return ListView.builder(
      itemCount: list.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: CText(
            text: list[index].variations!.isNotEmpty
                ? list[index].variations![0].name!
                : list[index].name!,
          ),
          subtitle: CText(text: list[index].description!),
        );
      },
    );
  }
}
