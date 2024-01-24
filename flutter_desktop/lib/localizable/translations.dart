import 'dart:ui';

import 'package:get/get.dart';

import 'intl_en_us.dart';
import 'intl_zh_cn.dart';

class IntlTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'zh_cn': intlZhCn,
    'en_us': intlEnUs,
  };

  static List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh')
    ];
  }
}