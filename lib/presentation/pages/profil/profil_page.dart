import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../home/widgets/collection_items.dart';
import '../home/widgets/collections.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
           Container(
      width: MediaQuery.of(context).size.width * 0.65,

      // padding: const EdgeInsets.only(left: 55, top: 25,right: 55),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        // height: 140,
        child: Card(
          color: Colors.transparent.withOpacity(0.2),
          elevation: 0,
          // shadowColor: Colors.grey,
          // margin: EdgeInsets.all(20),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.onetwothree_sharp,
                size: 58,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.history,
                size: 45,
                color: Color(0xFFD91B1E),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.security, size: 28),
              SizedBox(
                width: 8,
              ),
            ],
          ),
        ),
      ),
    ),
  
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Row(
              children: [],
            ),
         
          )
        
        ]));
  }
}
