import 'dart:async';
import 'dart:convert';

import 'package:dolphy/presentation/pages/home/home_page.dart';
import 'package:dolphy/services/http_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dolphy/presentation/pages/login/animation/FadeAnimation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ndialog/ndialog.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login.dart';
import 'signup.dart';

class HomeLoginPage extends StatefulWidget {
  const HomeLoginPage({super.key});

  @override
  State<HomeLoginPage> createState() => _Login();
}

class _Login extends State<HomeLoginPage> {
  String _number = "";

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "Bienvenue",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Recuperer ou transferer de la monnaie n'a jamais été aussi simple",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[700], fontSize: 15),
                    ),
                  ],
                ),
                Column(children: <Widget>[
                  Form(
                    key: _formKey,
                    child: makeInput(label: "Entrer votre numero"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 3, left: 3),
                      decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(50),
                          border: Border(
                        bottom: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                      )),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 50,
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            // print('login');
                            _formKey.currentState!.save();
                            login();
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                          }
                        },
                        color: Color(0xFFFFCA06),
                        elevation: 0,
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(50)
                        // ),
                        child: Text(
                          "VALIDER",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ))
                ]),
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/illustre.png'))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          // controller: ctr,
          onSaved: (value) {
            // print("hh" + value! + "jj");
            _number = value!;
          },
          maxLength: 10,
          validator: (value) {
            if (value!.isEmpty || value.length < 10) {
              return 'entrez un numero correct';
            }

            return null;
          },
          keyboardType: TextInputType.number,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: '0564309435',
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }

  Future<void> login() async {
    // Navigator.of(context).push(
    //   MaterialPageRoute(builder: (context) => SignupPage()),
    // );
    ProgressDialog progressDialog = ProgressDialog(
      context,
      title: const Text('Dolphy login'),
      message: const Text('traitement ...'),
    );
    progressDialog.show();

    var data = {
      'numero': _number,
    };
    var res = await HttpService.authData(_number, 'auth/login');
    // var res = true;
    // print(res.toString());
    if (res == false) {
      Fluttertoast.showToast(msg: "une erreur est survenu, merci de ressayer");

      progressDialog.dismiss();
// Timer(
//         Duration(seconds: 1),
//         () => Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => SignupPage())));

      // Navigator.of(context).pushReplacement(
      //     MaterialPageRoute(builder: (context) => HomePage()));

    } else {

      var body = json.decode(res.body!);
      progressDialog.dismiss();
      // print(body.toString());
      if (body['status'] == true) {
        print(body['user']['nom']);
        SharedPreferences localStorage = await SharedPreferences.getInstance();
        localStorage.setString('token', json.encode(body['token']));
        localStorage.setString('user', json.encode(body['user']));
        localStorage.setString('numero', json.encode(body['user']['numero']));
        Fluttertoast.showToast(msg: body['message']);

        // progressDialog.dismiss();

        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => HomePage()));
      } else {
        Fluttertoast.showToast(msg: body['message']);
      }
    }
    // _auth
  }
}
