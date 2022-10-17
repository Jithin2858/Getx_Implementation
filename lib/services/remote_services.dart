import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:task5/domain/modal_class.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<Datum>?> fetchMovies() async {
    var response =
        await client.get(Uri.parse('https://reqres.in/api/users?page=2'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var jsonData = json.decode(response.body);
      var jsonDataData = jsonData['data'];
      return movieFromJson(jsonDataData);
    } else {
      return null;
      //show error
    }
  }
}
