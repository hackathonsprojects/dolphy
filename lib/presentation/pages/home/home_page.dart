import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:dolphy/presentation/common_widgets/colors.dart';
import 'package:dolphy/presentation/pages/home/widgets/bottom_nav_bar.dart';
import 'package:dolphy/presentation/common_widgets/custom_action_button.dart';
import 'package:dolphy/presentation/pages/home/widgets/home_page_app_bar.dart';
import 'package:dolphy/presentation/pages/home/widgets/home_page_body.dart';
import 'package:dolphy/presentation/pages/login/main.dart';
import 'package:dolphy/presentation/pages/profil/page/profile_page.dart';
import 'package:dolphy/presentation/pages/profil/profil_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:showcaseview/showcaseview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _Accueil();
}

class _Accueil extends State<HomePage> {
  // const _Accueil({Key? key}) : super(key: key);
  int _currentIndex = 0;
   bool isAuth = false;
  final _key1 = GlobalKey();
  final _key2 = GlobalKey();
  final _key3 = GlobalKey();
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  BuildContext? myContext;
  @override
  initState() {
    super.initState();

    ambiguate(WidgetsBinding.instance)?.addPostFrameCallback(
      (_) => ShowCaseWidget.of(myContext!).startShowCase([_key1, _key2]),
    );
  }

 void _checkIfLoggedIn() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    if (token != null) {
      setState(() {
        isAuth = true;
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {


    return 
    ! isAuth
     ? HomeLoginPage():
    ShowCaseWidget(builder: Builder(builder: (context) {
      myContext = context;
      return Scaffold(
        backgroundColor: appBackgroundColor,
        appBar: HomePageAppBar(),
        body: 
        // HomeLoginPage(),
        _currentIndex == 0 ? const HomePageBody() :  ProfilePage(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Showcase(
          key: _key1,
          // blurValue: 0.0,
          description: "Ici vous pourrez scanner d'autres code qr",

          child: const CustomFloatActionButton(),
        ),
        bottomNavigationBar: AnimatedBottomNavigationBar(
            inactiveColor: greyColor,
            activeColor: appBarIconButtonColor,
            iconSize: 25,
            elevation: 75,
            notchMargin: 15,
            icons: const [
              Icons.home,
              CupertinoIcons.person,
            ],
            activeIndex: _currentIndex,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.softEdge,
            leftCornerRadius: 32,
            rightCornerRadius: 32,
            onTap: onTabTapped
            //other params
            ),
      );
    }));

  }
}
