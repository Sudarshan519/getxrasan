import 'dart:async';

import 'package:get/get.dart';
import 'package:rasanmart/app/modules/home/views/home_view.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {
    loadPage();
    super.onInit();
    
    
      }
    
      @override
      void onReady() {
        super.onReady();
      }
    
      @override
      void onClose() {}
      void increment() => count.value++;
    
       loadPage() {
        var _duration = Duration(seconds: 2);
        
        return Timer(_duration,navigate);
      }
      void navigate(){
 Get.off(() => HomeView());
      }
}
