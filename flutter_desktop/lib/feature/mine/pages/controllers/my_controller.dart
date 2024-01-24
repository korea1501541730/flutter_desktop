import 'package:get/get.dart';

import '../../../../utils/log_util.dart';
import '../models/my_model.dart';


class MineController extends GetxController {
  late final RxList dataSources = [].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    reloadTypes();
  }
  @override void onClose() {
    // TODO: implement onClose
    super.onClose();
    Log().t('','MineController onClose');
  }

  ///
  reloadTypes() {
    dataSources.add(MineModel(title: 'language',imagePath: 'assets/images/account_language.png'));
    dataSources.add(MineModel(title: 'theme',imagePath: 'assets/images/account_help.png'));
    dataSources.add(MineModel(title: 'about',imagePath: 'assets/images/account_about.png'));
  }


  ///返回首页
  _popHome() {

  }

}