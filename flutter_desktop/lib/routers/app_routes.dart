
import 'package:flutter_desktop/feature/home/pages/home_page.dart';
import 'package:flutter_desktop/feature/login/pages/login_page.dart';
import 'package:flutter_desktop/feature/mine/pages/mine_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static const String homePage = '/home_page';
  static const String loginPage = '/login_page';
  static const String minePage = '/mine_page';

  static appRoutes() => [
    GetPage(
      name: homePage,
      page: () => homePageView(),
    ),
    GetPage(
      name: minePage,
      page: () => minePageView(),
    ),
    GetPage(
      name: loginPage,
      page: () => const LoginPage(),
    ),
  ];

  static HomePage homePageView(){
    return const HomePage();
  }

  static MinePage minePageView(){
    return const MinePage();
  }
}
