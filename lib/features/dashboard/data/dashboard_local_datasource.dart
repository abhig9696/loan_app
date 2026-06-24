import 'dart:convert';

import 'package:flutter/services.dart';

class DashboardLocalDataSource {
  Future<Map<String, dynamic>>
  getDashboardData() async {
    final response =
    await rootBundle.loadString(
      'assets/json/dashboard.json',
    );

    return json.decode(response);
  }
}