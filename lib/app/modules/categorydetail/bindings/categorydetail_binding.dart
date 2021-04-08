import 'package:get/get.dart';

import '../controllers/categorydetail_controller.dart';

class CategorydetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategorydetailController>(
      () => CategorydetailController(),
    );
  }
}
