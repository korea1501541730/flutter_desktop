
import 'package:flutter/material.dart';
import 'package:flutter_desktop/routers/app_routes.dart';
import 'package:flutter_desktop/utils/language_util.dart';
import 'package:flutter_desktop/utils/log_util.dart';
import 'package:flutter_desktop/utils/storage_util.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'localizable/translations.dart';

void main() {
  _initApp();
  runApp(const MyApp());
  StorageUtil.getInstance();
}
///init utils
_initApp(){
  Log().init();
  _initLoading();
  // StorageUtil.getInstance();//单利初始化
}
///initLoading
_initLoading() {
  EasyLoading.instance.userInteractions = false;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      translations: IntlTranslation(),
      locale:LanguageUtil.getCurrentLocale(),
      supportedLocales: IntlTranslation.supportedLocales,
      getPages: AppRoutes.appRoutes(),
      initialRoute: AppRoutes.mainPage,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
    );
  }
}
