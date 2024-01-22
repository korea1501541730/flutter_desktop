
import 'package:flutter/material.dart';
import 'package:flutter_desktop/feature/tabbar/mainpage_controller.dart';
import 'package:get/get.dart';

import '../../constants/app_colors.dart';
import '../../generated/l10n.dart';

class MainPage extends GetView<MainPageController>
 {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        body: controller.dataSources[controller.currentPage.value],
        bottomNavigationBar:BottomNavigationBar(
          onTap: (int page){
            controller.setChangeIndex(page);
          },
          items:_buildBarItems(),
          currentIndex: controller.currentPage.value,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: AppColors.gray,
          selectedItemColor: Colors.black,
          unselectedFontSize: 12,
          selectedFontSize: 14,
        )
    ));
  }
  ///BottomNavigationBarItem
  List<BottomNavigationBarItem> _buildBarItems(){
    return [
      BottomNavigationBarItem(
        label:S.of(Get.context!).home,
        icon: Image.asset(
          'assets/images/home.png',
          width: 24,
          height: 24,
        ),
        activeIcon: Image.asset(
          "assets/images/home_selected.png",
          width: 24,
          height: 24,
        ),
      ),
      BottomNavigationBarItem(
        label:S.of(Get.context!).mine,
        icon: Image.asset(
          "assets/images/me.png",
          width: 24,
          height: 24,
        ),
        activeIcon: Image.asset(
          "assets/images/me_selected.png",
          width: 24,
          height: 24,
        ),
      )];
  }
}
