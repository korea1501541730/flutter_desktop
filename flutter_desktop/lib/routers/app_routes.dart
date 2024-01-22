
import 'package:flutter_desktop/feature/home/bindings/homebinding.dart';
import 'package:flutter_desktop/feature/home/pages/home_page.dart';
import 'package:flutter_desktop/feature/login/pages/login_page.dart';
import 'package:flutter_desktop/feature/mine/pages/bindings/language_binding.dart';
import 'package:flutter_desktop/feature/mine/pages/language_page.dart';
import 'package:flutter_desktop/feature/mine/pages/my_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../feature/mine/pages/bindings/my_binding.dart';
import '../feature/tabbar/main_page.dart';
import '../feature/tabbar/main_page_binding.dart';

class AppRoutes {
  static const String mainPage = '/';
  static const String homePage = '/home_page';
  static const String loginPage = '/login_page';
  static const String minePage = '/mine_page';
  static const String languagePage = '/language_page';

  static appRoutes() => [
    GetPage(
      name: mainPage,
      page: () => const MainPage(),
      binding: MainPageBinding(),
    ),
    GetPage(
      name: homePage,
      page: () => homePageView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: minePage,
      page: () => minePageView(),
      binding: MineBinding(),
    ),
    GetPage(
      name: loginPage,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: languagePage,
      page: () => const LanguagePage(),
      binding: LanguageBinding(),
    ),
  ];

  static HomePage homePageView(){
    return const HomePage();
  }

  static MinePage minePageView(){
    return const MinePage();
  }
}
