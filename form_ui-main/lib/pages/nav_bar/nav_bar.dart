import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
// import 'package:login_page_hw/pages/navi_pages/profile/ui/profile_page.dart';
// import 'package:login_page_hw/pages/navi_pages/qr/ui/qr_page.dart';

 import 'package:form_ui/constants/colors.dart';
import 'package:form_ui/translations/locale_keys.g.dart';

// import 'navi_pages/animation/ui/animation_page.dart';
// import 'navi_pages/news/ui/news_page.dart';
// import 'navi_pages/map/ui/map_page.dart';

import 'package:form_ui/pages/nav_wid/home_page.dart';
import 'package:form_ui/pages/nav_wid/QR/qr_page.dart';
import 'package:form_ui/pages/nav_wid/profile/profile_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _currentIndex = 0;
  List pages = [
    HomePage(),
    QRpage(),
    //MapPage(),
    //AnimationPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.welcome.tr()),
        centerTitle: true,
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.black26,
        currentIndex: _currentIndex,
        elevation: 5,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_outlined),
            activeIcon: Icon(Icons.qr_code),
            label: 'QR',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            activeIcon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.animation_outlined),
            activeIcon: Icon(Icons.animation),
            label: 'Animation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
