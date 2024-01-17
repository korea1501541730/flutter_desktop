
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';

import '../../routers/app_routes.dart';

class MainPageController extends GetxController {
  RxInt currentPage = 0.obs;
  late final List dataSources = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _addList();
  }
  @override void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
  //添加数据
  _addList(){
    dataSources.add(AppRoutes.homePageView());
    dataSources.add(AppRoutes.minePageView());
  }
  setChangeIndex(int index){
    currentPage.value = index;
  }
}