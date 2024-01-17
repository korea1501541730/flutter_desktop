import 'package:get/get.dart';

import '../../../../generated/l10n.dart';
import '../../../../utils/log_util.dart';
import '../models/home_model.dart';


class HomeController extends GetxController {
  late final RxList dataSources = [].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  @override void onClose() {
    // TODO: implement onClose
    super.onClose();
    Log().t('','ChangeIpController onClose');
  }

  ///
  reloadTypes() {
    dataSources.add(HomeModel(title: S.of(Get.context!).language,text: ''));
    dataSources.add(HomeModel(title: S.of(Get.context!).theme));
    dataSources.add(HomeModel(title: S.of(Get.context!).about));
  }


}