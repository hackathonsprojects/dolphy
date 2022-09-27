import 'package:auto_route/auto_route.dart';
import 'package:dolphy/presentation/common_widgets/colors.dart';
import 'package:dolphy/presentation/pages/home/constants/texts.dart';
import 'package:dolphy/presentation/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CollectionItems extends StatelessWidget {
  CollectionItems({Key? key}) : super(key: key);

  final ScrollController scrollController = ScrollController(
    initialScrollOffset: 215,
    keepScrollOffset: true,
  );
  final imagePathOfTheModel = "assets/qr.png";

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          AutoRouter.of(context).navigate(DetailsRoute(
            collectionItemName: hoodieRose,
            collectionItemPrice: priceOfTheItem,
            imagePathOfTheModel: imagePathOfTheModel,
          ));
        },
        child: Container(
          margin: const EdgeInsets.only(top: 35),
          width: MediaQuery.of(context).size.width / 1.2,
          height: 250,
          // color: Colors.grey[200],
          child: new Image.asset('assets/qr.png'),
          alignment: Alignment.center,
        ));
    // Container(
    //   margin: const EdgeInsets.only(top: 25),
    //   // width: MediaQuery.of(context).size.width/2,
    //   width: 200,
    //   height: 260,
    //   child:
    //   Container(
    //                             // height: 100,
    //                             // width: 20,
    //                             decoration: const BoxDecoration(
    //                               image: DecorationImage(
    //                                   image: AssetImage("assets/qr.png"),
    //                                   fit: BoxFit.cover),
    //                             ),
    //                             child: null // Foreground widget here
    //                             ),
    /* 
      ListView.builder(
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: InkWell(
                      onTap: () {
                        AutoRouter.of(context).navigate(DetailsRoute(
                          collectionItemName: hoodieRose,
                          collectionItemPrice: priceOfTheItem,
                          imagePathOfTheModel: imagePathOfTheModel,
                        ));
                      },
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundColor: whiteColor,
                            radius: 128.0,
                            child: 
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: 
                              CircleAvatar(
                                backgroundImage: AssetImage(index == 1
                                    ? imagePathOfTheModel
                                    : "assets/model.jpg"),
                                radius: 125.0,
                              ),
                            ),
                          ),
                          index == 1
                              ? GestureDetector(
                                  onTap: (() {
                                    print("tap");
                                  }),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 15, right: 15),
                                    child: CircleAvatar(
                                        radius: 25.0,
                                        backgroundColor: whiteColor,
                                        child: Icon(
                                          CupertinoIcons.refresh,
                                          size: 25,
                                          color: Color(0xFFD91B1E),
                                        )),
                                  ),
                                )
                              : Container(),
                        ],
                      )),
                ),
              ],
            );
          }),
    */
  }
}
