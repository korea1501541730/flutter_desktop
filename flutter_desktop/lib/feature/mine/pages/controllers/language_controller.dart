import 'package:flutter_desktop/feature/mine/pages/models/language_model.dart';
import 'package:flutter_desktop/utils/language_util.dart';
import 'package:get/get.dart';
import 'dart:ui';

import '../../../../constants/app_strings.dart';
import '../../../../generated/l10n.dart';
import '../../../../utils/log_util.dart';
import 'package:intl/intl.dart';

class LanguageController extends GetxController {
  late final RxList dataSources = [].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _reloadDataSources();
  }
  @override void onClose() {
    // TODO: implement onClose
    super.onClose();
    Log().t('','LanguageController onClose');
  }
  ///数据源
  _reloadDataSources() {
    String? languageConfig = LanguageUtil.getAppLanguage();
    bool isFollowSystem = false;
    if(languageConfig!.isEmpty||languageConfig == AppStrings.followSystem){
      isFollowSystem = true;
    }
    dataSources.add(LanguageModel(title: S.of(Get.context!).followSystem, select: isFollowSystem,text: ''));
    dataSources.add(LanguageModel(title: S.of(Get.context!).chinese, select: languageConfig == AppStrings.chinese,text: ''));
    dataSources.add(LanguageModel(title: S.of(Get.context!).english, select: languageConfig == AppStrings.english,text: ''));
  }
  ///选择语言
  didSelectLanguage(int index){
    String languageConfig = '';
    var locale = const Locale('en', 'US');
    switch(index){
      case 0:
        languageConfig =  AppStrings.followSystem;
        locale = LanguageUtil.getCurrentLocale();
        break;
      case 1:
        languageConfig = AppStrings.chinese;
        locale = const Locale('zh', 'CN');
        break;
      case 2:
        languageConfig = AppStrings.english;
        break;
    }
    LanguageUtil.setAppLanguage(languageConfig);
    S.load(locale);
    _updateDataSources(languageConfig);
  }
  ///更熟数据
  _updateDataSources(String? languageConfig) {
    bool isFollowSystem = false;
    if(languageConfig!.isEmpty||languageConfig == AppStrings.followSystem){
      isFollowSystem = true;
    }
    for (int i = 0; i < dataSources.length; i++) {
      LanguageModel model = dataSources[i];
      if(i==0){
        model.select = isFollowSystem;
      }else if(i==1){
        model.select = (languageConfig == AppStrings.chinese);
      }else if(i==2){
        model.select = (languageConfig == AppStrings.english);
      }
    }
    dataSources.refresh();
  }
}