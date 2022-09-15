import 'package:dolphy/presentation/common_widgets/colors.dart';
import 'package:dolphy/presentation/common_widgets/custom_text.dart';
import 'package:dolphy/presentation/pages/details/constants/texts.dart';
import 'package:dolphy/presentation/pages/details/widgets/add_to_card_widget.dart';
import 'package:dolphy/presentation/pages/details/widgets/item_details_dropdown.dart';
import 'package:dolphy/presentation/pages/home/constants/texts.dart';
import 'package:flutter/material.dart';

class CollectionItemDetails extends StatelessWidget {
  const CollectionItemDetails(
      {Key? key,
      required this.collectionItemName,
      required this.collectionItemPrice})
      : super(key: key);

  final String collectionItemName;
  final String collectionItemPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 0, right: 0, bottom: 35),
          child: Center(
            child: CustomText(
              text: collectionItemName,
              minFontSize: 35,
              maxFontSize: 40,
              textStyle: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        //  const SizedBox(width: 55),

        const AddToCardWidget()
      ],
    );
  }
}
