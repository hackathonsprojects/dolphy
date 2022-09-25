import 'dart:convert';


import 'package:dolphy/utils/constant.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class HttpService {
  static var token;

  _getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    token = jsonDecode(localStorage.getString('token')!)['token'];
  }

  static authData(data, apiUrl) async {
    print("kkk" + data);
    try {
      var fullUrl = Uri.parse(API_URL_BASE + apiUrl);
      return await http.post(
        fullUrl,
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
        },
        encoding: Encoding.getByName('utf-8'),
        body: {"numero": data},
      );
      // return await http.post(fullUrl,
      //     body: jsonEncode(data), headers: _setHeaders());
    } catch (error, stacktrace) {
      print("Exception trouvée: $error stackTrace: $stacktrace");
      return false;
    }
  }

  getData(apiUrl) async {
    var fullUrl = Uri.parse(API_URL_BASE + apiUrl);

    try {
      await _getToken();
      return await http.get(fullUrl, headers: _setHeaders());
    } catch (error, stacktrace) {
      print("Exception trouvée: $error stackTrace: $stacktrace");
      return false;
    }
  }

  static _setHeaders() => {
        'Content-type': 'application/x-www-form-urlencoded',
        'Accept': 'application/x-www-form-urlencoded',
        'Authorization': 'Bearer $token'
      };

  // static var client = http.Client();
  // static Future<List<MissionModel>> fetchMissions() async {
  //   print("pff");

  //   var response =
  //       await http.get(Uri.parse("http://192.168.1.14:8181/api/missions"));
  //   if (response.statusCode == 200) {
  //     var data = response.body;
  //     print(data);
  //     return missionsModelFromJson(data);
  //   } else {
  //     // throw Exception();
  //     var data = response.body;
  //     return missionsModelFromJson(data);
  //   }
  // }
}
