

import 'package:dio/dio.dart';
import 'package:flutter_app/models/news_entry.dart';
import 'package:flutter_app/repository/news_repository_interface.dart';

class NewsRepository implements INewsRepository{
  final Dio _dio;

  NewsRepository(this._dio);

  @override
  Future<List<NewsEntry>> getAllNews(String url) async {
    List<NewsEntry> newsEntries = [];

    var response = await _dio.get(url);

    response.data['data'].map((news){
      newsEntries.add(NewsEntry.fromJson(news));
    }).toString();
    return newsEntries;
  }
}