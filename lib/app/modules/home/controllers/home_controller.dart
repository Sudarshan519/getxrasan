import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final scrollController = ScrollController();
  final selectedIndex = 0.obs;
  var selectedTheme = 'lightTheme'.obs;
  var show = false.obs;
  @override
  void onInit() {
    super.onInit();
    checkScroll();
  }

  void changeTheme(String value) {
    selectedTheme.value = value;
    if (value == 'lightTheme') {
      Get.changeThemeMode(ThemeMode.light);
    } else
      Get.changeThemeMode(ThemeMode.dark);
  }

  changeThemeMode() {
    bool dart = Get.isDarkMode;

    if (dart)
      Get.changeThemeMode(ThemeMode.light);
    else if (!dart) Get.changeThemeMode(ThemeMode.dark);
  }

  void checkScroll() {
    scrollController.addListener(() {
      // print(scrollController.position.pixels);

      if (scrollController.position.pixels > 80)
        show.value = true;
      else
        show.value = false;
    });
  }

  void changevalue(index) => this.selectedIndex.value = index;
}

final homeController = Get.find<HomeController>();
