import 'package:easy_hotel/app/core/themes/app_theme.dart';
import 'package:easy_hotel/app/core/values/languages/app_translation.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(480, 800),
      builder: (_,__) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Easy Hotel",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          locale: AppTranslation.getLocale(),
          themeMode: AppTheme().isSavedDarkMode()?ThemeMode.dark:ThemeMode.light,
          translations: AppTranslation(),
          translationsKeys: AppTranslation().keys,
        );
      }
    );
  }
}
