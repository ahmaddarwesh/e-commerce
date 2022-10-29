import 'package:e_commerce/app/modules/products_list/data/product_model.dart';
import 'package:e_commerce/app/modules/products_list/data/products_input.dart';
import 'package:e_commerce/app/modules/products_list/repositories/products_repo.dart';
import 'package:get/get.dart';

class ProductsListController extends GetxController
    with StateMixin<List<Product>> {
  @override
  void onInit() {
    getData();
    super.onInit();
  }

  Future getData() async {
    RxStatus.loading();
    var data = await ProductsRepo.getAllProducts(ProductsInput());
    if (data.isNotEmpty) {
      change(data, status: RxStatus.success());
    } else {
      change([], status: RxStatus.empty());
    }
  }
}
