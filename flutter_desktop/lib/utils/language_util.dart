
import 'dart:ui';

import 'package:flutter_desktop/utils/storage_util.dart';
import '../constants/app_strings.dart';

class LanguageUtil{
  ///设置语言
  static setAppLanguage(String language){
    if(language.isEmpty) {
      language = "";
    }
    StorageUtil.putString(AppStrings.language, language);
  }
  ///获取语言
  static getAppLanguage(){
    return StorageUtil.getString(AppStrings.language);
  }
  ///获取当前的语言
  static Locale getCurrentLocale(){
    var locale = const Locale('en', 'US');
    String languageConfig = getAppLanguage();
    if(languageConfig.isEmpty||languageConfig == AppStrings.followSystem){
      String systemLocale = window.locale.languageCode;
      String? countryCode = window.locale.countryCode;
      if (systemLocale == 'zh' || systemLocale == 'Hant' || countryCode == 'CN') {
        print('繁体、简体默认简体');
        locale = const Locale('zh', 'CN');
      } else {
        // 其他语言
        print('当前语言不是中文');
        locale = const Locale('en', 'US');
      }
    }
    else if(languageConfig == AppStrings.chinese){
      print('当前语言是中文');
      locale = const Locale('zh', 'CN');
    }
    else if(languageConfig == AppStrings.english){
      print('当前语言不是中文');
      locale = const Locale('en', 'US');
    }
    return locale;
  }
}