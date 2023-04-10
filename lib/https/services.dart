import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_sports/models/live_score_model.dart';

const String apiKey = 'a7dde8be40e05ed246d99abdede8772c4899330883caa38d7f9dee1f6c2d458d';

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
