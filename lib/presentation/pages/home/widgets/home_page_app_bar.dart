import 'package:dolphy/presentation/common_widgets/colors.dart';
import 'package:dolphy/presentation/pages/home/constants/texts.dart';
import 'package:dolphy/presentation/common_widgets/app_bar_custom_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageAppBar extends StatelessWidget with PreferredSizeWidget {
  HomePageAppBar({Key? key})
      : preferredSize = const Size.fromHeight(95.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      toolbarHeight: 80,
      elevation: 0,
      title: const Padding(
        padding: EdgeInsets.only(top: 20),
        child: Text(hAndM),
      ),
      // automaticallyImplyLeading: false,
      leadingWidth: 0,
      // leading:
      actions: const [
        const AppBarCustomIcon(
          iconData: CupertinoIcons.question,
          leftPadding: 0,
          rightPadding: 20,
          iconColor: appBarIconButtonColor,
          iconSize: 30,
          containerPadding: EdgeInsets.all(30),
          containerBackgroundColor: appBarIconBackgroundColor,
          iconPadding: EdgeInsets.all(0),
          topPadding: 20,
          bottomPadding: 0,
        ),
        // AppBarCustomIcon(
        //   iconData: CupertinoIcons.search,
        //   rightPadding: 30,
        //   leftPadding: 0,
        //   iconColor: appBarIconButtonColor,
        //   iconSize: 30,
        //   containerPadding: EdgeInsets.all(30),
        //   containerBackgroundColor: appBarIconBackgroundColor,
        //   iconPadding: EdgeInsets.all(0),
        //   topPadding: 20,
        //   bottomPadding: 0,
        // )
      ],
    );
  }
}
