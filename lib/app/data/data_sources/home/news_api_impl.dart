import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:kon/app/config/constants/network_constants.dart';
import 'package:kon/app/core/error/app_exceptions.dart';
import 'package:kon/app/data/data_sources/home/abstract_news_api.dart';
import 'package:kon/app/domain/models/news_model.dart';
import 'package:kon/app/domain/models/news_params.dart';
import 'package:http/http.dart' as http;

class NewsApiImpl extends AbstractNewsApi {
  @override
  Future<List<NewsResult>> getNews(NewsParams params) async {
    try {
      final uri = Uri.parse(NetworkConstants.apiUrl);
      final response = await http
          .get(uri)
          .timeout(Duration(seconds: NetworkConstants.getApiTimeoutDuration));
      var decode = jsonDecode(response.body);
      var newsModel = newsModelFromJson(response.body);
      List<NewsResult> list = newsModel.results!.toList();
      print(list);
      return list;
// return decode.
    } on SocketException {
      throw SocketException("No Internet!");
    } on TimeoutException {
      throw TimeoutException("Request Timed out!");
    } catch (e) {
      throw AppException("An Unknown Error Occured");
    }
  }
}
