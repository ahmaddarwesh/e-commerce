import 'package:e_commerce/app/modules/customize_product/data/attributes_model.dart';
import 'package:e_commerce/app/modules/customize_product/services/attributes_service.dart';
import 'package:get/get.dart';

class CustomizeProductController extends GetxController
    with StateMixin<AttributeResponseModel> {
  @override
  void onInit() {
    getAttributes();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future getAttributes() async {
    RxStatus.loading();
    await AttributesService.attributes(
      onSuccess: (res) => change(res, status: RxStatus.success()),
      onError: (error) => RxStatus.error(error.message),
    );
  }
}
