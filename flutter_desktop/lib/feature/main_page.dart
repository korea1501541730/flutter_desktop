
import 'package:flutter/material.dart';
import 'package:flutter_desktop/routers/app_routes.dart';

import '../constants/app_colors.dart';
import '../generated/l10n.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  final pages = [
    AppRoutes.homePageView(),
    AppRoutes.homePageView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar:BottomNavigationBar(
        onTap: (int page){
          setState(() {
            currentPage = page;
          });
        },
        items:_buildBarItems(),
        currentIndex: currentPage,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: AppColors.gray,
        selectedItemColor: Colors.black,
        unselectedFontSize: 12,
        selectedFontSize: 14,
      )
    );
  }
  ///BottomNavigationBarItem
  List<BottomNavigationBarItem> _buildBarItems(){
    return [
      BottomNavigationBarItem(
      label:S.of(context).home,
      icon: Image.asset(
        'assets/images/home.png',
        width: 24,
        height: 24,
      ),
      activeIcon: Image.asset(
        "assets/images/home_selected.png",
        width: 24,
        height: 24,
      ),
     ),
      BottomNavigationBarItem(
        label:S.of(context).mine,
        icon: Image.asset(
          "assets/images/me.png",
          width: 24,
          height: 24,
        ),
        activeIcon: Image.asset(
          "assets/images/me_selected.png",
          width: 24,
          height: 24,
        ),
      )];
  }
}
