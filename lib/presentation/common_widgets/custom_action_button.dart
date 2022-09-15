import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:dolphy/presentation/common_widgets/colors.dart';
import 'package:dolphy/presentation/pages/home/widgets/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFloatActionButton extends StatelessWidget {
  const CustomFloatActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(60)),
        boxShadow: [
          BoxShadow(
              color: appBarIconButtonColor.withOpacity(0.35),
              spreadRadius: 2,
              blurRadius: 17),
        ],
      ),
      child: 
      GestureDetector(
        onTap: () => scan(context),
        child: 
      const CircleAvatar(
        radius: 34.0,
        backgroundColor: Color(0xFFFFCA06),
        child: CircleAvatar(
          backgroundColor: Color(0xFF015A9B),
          radius: 30,
          child: Icon(
            CupertinoIcons.qrcode_viewfinder,
            size: 38,
            color: appBarIconBackgroundColor,
          ),
        ),
      ),
    ));
  }

  void scan(context) async {

  var result = await BarcodeScanner.scan();

  print(result.type); // The result type (barcode, cancelled, failed)
  print(result.rawContent); // The barcode content
  if(result.rawContent!=""){
     alert(context);
  }
  print(result.format); // The barcode format (as enum)
  print(result.formatNote); // If a unknown format was scanned this field contains a note
}
}
