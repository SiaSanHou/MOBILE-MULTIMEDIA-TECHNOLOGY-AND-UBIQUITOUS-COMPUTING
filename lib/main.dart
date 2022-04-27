import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hearing_impairment/route/app_pages.dart';

final appData = GetStorage();
void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Hearing Impairment',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.Splash,
      getPages: AppPages.routes,
      unknownRoute: AppPages.unknownRoute,
      themeMode: ThemeMode.system,
    );
  }
}