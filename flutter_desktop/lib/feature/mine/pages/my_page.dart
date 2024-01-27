import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desktop/feature/mine/pages/controllers/my_controller.dart';
import 'package:flutter_desktop/feature/mine/pages/widgets/my_row_view.dart';
import 'package:flutter_desktop/routers/app_routes.dart';
import 'package:get/get.dart';

import '../../../constants/app_colors.dart';


class MinePage extends GetView<MineController> {
  const MinePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('mine'.tr),
        ),
        body: Center(
            child: Obx(() => ListView.builder(
                itemCount: controller.dataSources.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      // Handle item click here
                     _onTapListViewItem(index);
                    },
                    child: MineRowView(model: controller.dataSources[index]),
                  );
                })
            )
        )
    );
  }
  ///点击列表
  _onTapListViewItem(int index){
    switch(index){
      case 0:
      {
        Get.toNamed(AppRoutes.languagePage);
      }
        break;
      case 1:
        {
         //theme
          _showThemeDialog();
        }
        break;
      case 2:
        break;
      case 3:
        break;
    }
  }
  ///
  _showThemeDialog() async {
    String? result = await showModalActionSheet<String>(
      context: Get.context!,
      style: AdaptiveStyle.iOS,
      cancelLabel: "cancel".tr,
      actions: [
        SheetAction(
          label: 'light'.tr,
          key: 'light',
          textStyle: TextStyle(color: AppColors.black),
        ),
        SheetAction(
          label: 'dark'.tr,
          key: 'dark',
          textStyle: TextStyle(color: AppColors.black),
        )
      ],
    );
    if (result == "light") {
      if(Get.isDarkMode){
        Get.changeTheme(ThemeData.light());
      }
    } else if (result == "dark") {
      if(!Get.isDarkMode){
        Get.changeTheme(ThemeData.dark());
      }
    }
  }

}
