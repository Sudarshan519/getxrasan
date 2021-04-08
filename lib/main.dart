import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'app/data/utils/theme.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
     theme: CustomTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
