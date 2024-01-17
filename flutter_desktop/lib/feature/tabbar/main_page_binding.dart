import 'package:flutter_desktop/feature/home/controllers/home_controller.dart';
import 'package:flutter_desktop/feature/mine/pages/controllers/my_controller.dart';
import 'package:flutter_desktop/feature/tabbar/mainpage_controller.dart';
import 'package:get/get.dart';

class MainPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainPageController>(() => MainPageController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<MineController>(() => MineController());
  }
}