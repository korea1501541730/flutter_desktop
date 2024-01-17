import 'package:flutter_desktop/feature/mine/pages/controllers/my_controller.dart';
import 'package:get/get.dart';

class MineBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MineController>(() => MineController());
  }
}