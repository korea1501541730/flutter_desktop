import 'package:flutter/material.dart';
import 'package:flutter_desktop/feature/home/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../generated/l10n.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).home),
      ),
      body: Center(
        child: Image.asset('assets/images/add.png'),
      ),
    );
  }
}
