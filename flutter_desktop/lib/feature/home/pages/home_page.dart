import 'package:flutter/material.dart';
import 'package:flutter_desktop/feature/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('home'.tr),
      ),
      body: Center(
        child: Image.asset('assets/images/add.png'),
      ),
    );
  }
}
