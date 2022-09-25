import 'dart:ffi';
import 'package:cupertino_radio_choice/cupertino_radio_choice.dart';
import 'package:dolphy/presentation/common_widgets/colors.dart';
import 'package:dolphy/presentation/common_widgets/model_pop.dart';
import 'package:dolphy/presentation/pages/home/constants/texts.dart';
import 'package:dolphy/presentation/common_widgets/app_bar_custom_icon.dart';
import 'package:dolphy/presentation/pages/home/widgets/collection_items.dart';
import 'package:dolphy/presentation/pages/home/widgets/collections.dart';
import 'package:dolphy/presentation/common_widgets/custom_icon_button.dart';
import 'package:dolphy/presentation/common_widgets/custom_text.dart';
import 'package:dolphy/presentation/pages/home/widgets/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:flutter/services.dart';
import 'package:showcaseview/showcaseview.dart';

T? ambiguate<T>(T? object) => object;

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);
  @override
  State<HomePageBody> createState() => _Home();
}

class _Home extends State<HomePageBody> {
  final _key1 = GlobalKey();
  final _key2 = GlobalKey();
  final _key3 = GlobalKey();
  final _key4 = GlobalKey();
  final _key5 = GlobalKey();
  final _key6 = GlobalKey();

  BuildContext? myContext;
  @override
  initState() {
    super.initState();

    ambiguate(WidgetsBinding.instance)?.addPostFrameCallback(
      (_) => ShowCaseWidget.of(myContext!).startShowCase([_key4]),
    );
  }


  @override
  Widget build(BuildContext context) {
    return ShowCaseWidget(builder: Builder(builder: (context) {
      myContext = context;
      return SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              // height: 90,
              child: Card(
                color: Colors.transparent.withOpacity(0.2),
                elevation: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Showcase(
                      key: _key3,
                      description:
                          'Entrer le numero au lieu du scanneur\nde qr code',
                      child: GestureDetector(
                          onTap: () {
                           
                          },
                          child: 
                          GestureDetector(
                        onTap: (() => showCupertinoModalBottomSheet(
                              expand: false,
                              context: context,
                              builder: (context) => 
                              Material(
      child: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
              leading: Container(), middle: Text('Entrez le numero')),
          child: Container(
            // height: 300,
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20,bottom: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child:  Text("loo")
                              ),))
                            )),
                        child: Icon(
                            Icons.onetwothree_sharp,
                            size: 58,
                          )),),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Showcase(
                      key: _key1,
                      description:
                          'Entrer le numero au lieu du scanneur\nde qr code',
                      child: GestureDetector(
                        onTap: (() => showCupertinoModalBottomSheet(
                              expand: true,
                              context: context,
                              builder: (context) => ModalWithScroll(),
                            )),
                        child: Icon(
                          Icons.history,
                          size: 45,
                          color: Color(0xFFD91B1E),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Showcase(
                      key: _key2,
                      description:
                          'Entrer le numero au lieu du scanneur\nde qr code',
                      child: Icon(Icons.security, size: 28),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //             width: double.infinity,
            //             color: Color(0xFF0E3311).withOpacity(0.5),
            //                 margin: const EdgeInsets.only(left: 35, top: 25,right: 35),

            //             padding: EdgeInsets.all(10),
            //             child: Row(
            //               children: [
            //                 Icon(Icons.onetwothree),
            //                 Icon(Icons.onetwothree),
            //                 Icon(Icons.onetwothree),
            //               ],
            //             ))),

            Showcase(
              key: _key6,
              // blurValue: 0.0,
              description: 'Votre monnaie actuel',
              child: Collections(),
            ),
            Showcase(
              key: _key5,
              // blurValue: 0.0,
              description: 'Votre qr code',
              child: CollectionItems(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // AppBarCustomIcon(
                  //   iconData: Icons.arrow_back_ios,
                  //   leftPadding: 0,
                  //   rightPadding: 0,
                  //   iconColor: greyColor,
                  //   iconSize: 25,
                  //   containerPadding: const EdgeInsets.all(25),
                  //   containerBackgroundColor: whiteColor,
                  //   iconPadding: const EdgeInsets.only(left: 10),
                  //   topPadding: 20,
                  //   bottomPadding: 0,
                  //   containerBoxShadow: [
                  //     BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 2, blurRadius: 7),
                  //   ],
                  // ),

                  Column(
                    children: [
                      const CustomText(
                        text: hoodieRose,
                        minFontSize: 25,
                        maxFontSize: 35,
                        textStyle: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      // Row(
                      //   children: [
                      //     CustomText(text: dollarSign, minFontSize: 30, maxFontSize: 35, textStyle: TextStyle(fontWeight: FontWeight.w600, color: orangeColor)),
                      //     const SizedBox(width: 10),
                      //     CustomText(text: priceOfTheItem, minFontSize: 25, maxFontSize: 35, textStyle: TextStyle(fontWeight: FontWeight.w700, color: orangeColor))
                      //   ],
                      // )
                    ],
                  ),-
                  // AppBarCustomIcon(
                  //   bottomPadding: 0,
                  //   iconData: Icons.arrow_forward_ios,
                  //   leftPadding: 0,
                  //   rightPadding: 0,
                  //   iconColor: greyColor,
                  //   iconSize: 25,
                  //   topPadding: 20,
                  //   containerPadding: const EdgeInsets.all(25),
                  //   containerBackgroundColor: whiteColor,
                  //   iconPadding: const EdgeInsets.all(0),
                  //   containerBoxShadow: [
                  //     BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 2, blurRadius: 7),
                  //   ],
                  // ),
                ],
              ),
            )
          ],
        ),
      );
    }));
  }
}
