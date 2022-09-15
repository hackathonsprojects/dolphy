import 'package:dolphy/presentation/common_widgets/app_bar_custom_icon.dart';
import 'package:dolphy/presentation/common_widgets/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownActionButtons extends StatefulWidget {
  const DropDownActionButtons({Key? key}) : super(key: key);
  @override
  State<DropDownActionButtons> createState() => _Home();
}

class _Home extends State<DropDownActionButtons> {
  double _width = 60;
  double _height = 60;
  bool _depli = false;
  Color _color = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 25),
      child: Stack(
        children: [
          AnimatedContainer(
            // clipBehavior: Clip.hardEdge,
            width: _width,
            height: _height,
            decoration: BoxDecoration(
                color: lightGreyColor,
                borderRadius: const BorderRadius.all(Radius.circular(30))),
            duration: const Duration(seconds: 1),
            curve: Curves.fastLinearToSlowEaseIn,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 5),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _depli ? _height = 60 : _height = 200;
                      _depli
                          ? _color = Colors.transparent
                          : _color = whiteColor;
                      _depli = !_depli;
                    });
                  },
                  child: AppBarCustomIcon(
                    bottomPadding: 0,
                    iconData: Icons.more_horiz,
                    leftPadding: 0,
                    rightPadding: 0,
                    topPadding: 0,
                    iconSize: 30,
                    iconColor: whiteColor,
                    containerPadding: EdgeInsets.all(25),
                    containerBackgroundColor: appBarIconButtonColor,
                    iconPadding: EdgeInsets.all(0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Icon(
                    Icons.onetwothree,
                    color: _color,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(
                    Icons.history,
                    color: _color,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Icon(
                    Icons.security,
                    color: _color,
                    size: 30,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
