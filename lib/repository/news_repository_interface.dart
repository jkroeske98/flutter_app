

import 'package:flutter_app/models/news_entry.dart';

abstract class INewsRepository{
  Future<List<NewsEntry>> getAllNews(String url);
}