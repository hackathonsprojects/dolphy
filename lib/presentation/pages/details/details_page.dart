import 'package:dolphy/presentation/common_widgets/colors.dart';
import 'package:dolphy/presentation/pages/details/widgets/details_page_body.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage(
      {Key? key,
      required this.collectionItemName,
      required this.collectionItemPrice,
      required this.imagePathOfTheModel})
      : super(key: key);
  final String collectionItemName;
  final String collectionItemPrice;
  final String imagePathOfTheModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DetailsPageBody(
        collectionItemName: collectionItemName,
        collectionItemPrice: collectionItemPrice,
        imagePathOfTheModel: imagePathOfTheModel,
      ),
    );
  }
}
