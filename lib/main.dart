import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as service;
import 'package:flutter_getx_demo/constants/app_theme.dart';
import 'package:flutter_getx_demo/di/service_locator.dart';
import 'package:flutter_getx_demo/utils/routes/pages.dart';
import 'package:flutter_getx_demo/utils/routes/routes.dart';
import 'package:flutter_getx_demo/utils/translations/app_translations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();

  service.SystemChrome.setPreferredOrientations(
      [service.DeviceOrientation.portraitUp]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        locale: const Locale('en', 'US'),
        fallbackLocale: const Locale('en', 'US'),
        title: 'Getx Boilerplate',
        initialRoute: Routes.ONBOARD,
        theme: Get.isDarkMode? themeDataDark: themeData,
        defaultTransition: Transition.fade,
        getPages: AppPages.pages,
        translationsKeys: AppTranslation.translations,
      ),
    );
  }
}
