import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:finance_app_ui/colors.dart' as color;

class Transaction {
  String title;
  String amount;
  String date;
  IconData iconData;
  Color color;

  Transaction(this.title, this.amount, this.date, this.iconData, this.color);
}

List<Transaction> transactions() {
  return [
    Transaction('A Hamed 0505478963', '450 fr', '14 avril 2020', Icons.send, Color(0xFFFFCA06)),
    Transaction('A jean H 0505478963', '500 fr', '14 avril 2022', Icons.send, Colors.green),
    Transaction('De Koffi J 0505478963', '150 fr', '4 avril 2018', Icons.get_app, Colors.green),
    Transaction('A duboi 0505478963', '1210 fr', '14 avril 2019', Icons.send, Color(0xFFFFCA06)),
    Transaction('De Djimi', '1550 fr', '4 avril 2019', Icons.car_rental_rounded, randomColor()),
    Transaction('A duboi 0505478963', '1210 fr', '14 avril 2019', Icons.send, Color(0xFFFFCA06)),
    Transaction('A duboi 0505478963', '1210 fr', '14 avril 2019', Icons.send, Color(0xFFFFCA06)),
    Transaction('A duboi 0505478963', '1210 fr', '14 avril 2019', Icons.send, Color(0xFFFFCA06)),
    Transaction('A duboi 0505478963', '1210 fr', '14 avril 2019', Icons.send, Color(0xFFFFCA06)),
    Transaction('A duboi 0505478963', '1210 fr', '14 avril 2019', Icons.send, Color(0xFFFFCA06)),
    Transaction('A duboi 0505478963', '1210 fr', '14 avril 2019', Icons.send, Color(0xFFFFCA06)),
    Transaction('A duboi 0505478963', '1210 fr', '14 avril 2019', Icons.send, Color(0xFFFFCA06)),
    Transaction('A duboi 0505478963', '1210 fr', '14 avril 2019', Icons.send, Color(0xFFFFCA06)),
    Transaction('A duboi 0505478963', '1210 fr', '14 avril 2019', Icons.send, Color(0xFFFFCA06)),

  ];
}

Color randomColor() {
  return Color(Random().nextInt(0xffffffff)).withAlpha(0xff);
}
