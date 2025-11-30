import 'dart:convert';

import 'package:daily_healthtracker_coderower/models/logs-model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LogsController extends GetxController {
  final logs = <Logs>[].obs;

  Future<void> fetchLogs() async {
    try {
      final result = await http.get(Uri.parse('https://dummyjson.com/todos'));
      if (result.statusCode == 200) {
        final data = jsonDecode(result.body);
        final logslist = (data['todos'] as List)
            .map((item) => Logs.fromJson(item))
            .toList();
        logs.assignAll(logslist);
      }
    } catch (e) {
      print(e);
    }
  }
}
