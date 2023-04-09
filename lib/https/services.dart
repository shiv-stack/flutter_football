import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_sports/models/live_score_model.dart';

const String apiKey =
    'b393d35a95cd406d8e162c139a6c39b46993ac37e042015c8335699dd8996ad6';

class Services {
  final _dio = Dio();

  Future<LiveScoreDetails?> getLiveScore() async {
    LiveScoreDetails? details;
    // try {
    final response = await _dio.get(
        'https://apiv2.allsportsapi.com/football/?met=Livescore&APIkey=$apiKey');

    if (response.statusCode == 200) {
      details = LiveScoreDetails.fromJson(response.data);
    } else {
      log('failed!!!!!');
    }
    // }
    // catch (e) {
    //   log(e.toString());
    // }
    return details;
  }
}
