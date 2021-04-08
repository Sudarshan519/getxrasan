import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app/data/utils/theme.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  //initializeApp();
  await GetStorage.init();
  await Firebase.initializeApp();
  runApp(
    GetMaterialApp(
      title: "Application",
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
