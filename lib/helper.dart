import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Map> fetchJson(Uri url) async{

  final response = await http.get(url);

  if (response.statusCode == 200){

    return jsonDecode(response.body);

  } else {
    throw Exception('Failed to load ${url.toString()}');
  }

}