import 'package:cupertino_radio_choice/cupertino_radio_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

alert(context) {
  TextEditingController _num = TextEditingController();
  String _monnaie = "150";
  _num.text = _monnaie;
  return Alert(
      context: context,
      title: "ENVOIE DE MONNAIE",
      content: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          CupertinoRadioChoice(
              selectedColor: Color(0xFFFFCA06),
              choices: {'50': '50', '150': '150', '250': '250', '200': '250'},
              onChange: (value) {
                _num.text = value;
              },
              initialKeyValue: _monnaie),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: _num,
            decoration: InputDecoration(
              // icon: Icon(Icons.account_circle),
              labelText: 'ou entrer le montant',
            ),
          ),
        ],
      ),
      buttons: [
        DialogButton(
          color: Color(0xFF015A9B),
          onPressed: () => Navigator.pop(context),
          child: Text(
            "ENVOYER",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ]).show();
}
