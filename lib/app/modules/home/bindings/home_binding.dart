import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    // Get.put(NetworkController(), permanent: true);
    // Get.lazyPut<ProductControllerController>(
    //   () => ProductControllerController(),
    // );
  }
}
