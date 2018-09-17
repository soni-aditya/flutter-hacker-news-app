import 'dart:async';
import 'dart:convert';

import 'package:flutter_hacker_news/model/stories_id_map.dart';
import 'package:http/http.dart' as http;

class ApiCaller {
  Future<List> fetchStories(String url) async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      List responseList = jsonDecode(response.body);
      return responseList;
    } else {
      throw Exception('Failed to load list of Stories');
    }
  }
}
