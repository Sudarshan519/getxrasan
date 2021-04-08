import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  ScrollController scrollController = ScrollController();
  final selectedIndex = 0.obs;
  var show = false.obs;
  @override
  void onInit() {
    super.onInit();
    checkScroll();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void checkScroll() {
    scrollController.addListener(() {
      //print(scrollController.position.pixels);
      if (scrollController.position.pixels > 80)
        show.value = true;
      else
        show.value = false;
    });
  }

  void changevalue(index) => this.selectedIndex.value = index;
}

final homeController = Get.put(HomeController(), permanent: true);
