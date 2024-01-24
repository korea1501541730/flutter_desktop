import 'package:flutter/material.dart';
import 'package:flutter_desktop/feature/mine/pages/controllers/language_controller.dart';
import 'package:flutter_desktop/feature/mine/pages/widgets/language_card_view.dart';
import 'package:get/get.dart';

class LanguagePage extends GetView<LanguageController> {
  const LanguagePage({super.key});

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
                  return GestureDetector(
                    onTap: () {
                      // Handle item click here
                      controller.didSelectLanguage(index);
                    },
                    child: LanguageCardView(model: controller.dataSources[index]),
                  );
                })
            )
        )
    );
  }
  
}
