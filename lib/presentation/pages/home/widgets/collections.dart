import 'package:dolphy/presentation/common_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Collections extends StatelessWidget {
  const Collections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 30, bottom: 30, right: 25),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        // height: 140,
        child:  Card(
          color: Color(0xFFFFCA06),
          elevation: 10,
          shadowColor: Colors.grey,
          // margin: EdgeInsets.all(20),
          child: ListTile(
            title: Text("MA MONNAIE ",
            style: TextStyle(
      fontFamily: GoogleFonts.jacquesFrancois().fontFamily,
      // color: appBarTitleColor,
      // fontSize: 25,
      fontWeight: FontWeight.w600,
    ),  ),
    // subtitle: Text("This is the subtitle"),
            // leading: Text("This is leading wdiget"),
            trailing: Text(
              "250 fr",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
