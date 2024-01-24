import 'package:flutter/material.dart';
import 'package:flutter_desktop/feature/mine/pages/controllers/my_controller.dart';
import 'package:flutter_desktop/feature/mine/pages/widgets/my_row_view.dart';
import 'package:flutter_desktop/routers/app_routes.dart';
import 'package:get/get.dart';


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
                      Get.toNamed(AppRoutes.languagePage);
                    },
                    child: MineRowView(model: controller.dataSources[index]),
                  );
                })
            )
        )
    );
  }
}
