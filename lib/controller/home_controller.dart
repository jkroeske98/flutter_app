import 'package:flutter_app/models/news_entries.dart';

class HomeController{
  late NewsEntries newsEntries;

  HomeController(){
    newsEntries = NewsEntries();
    newsEntries.nextUrl = "https://newsapi.6min4you.de/api/get/1/news";
  }
  
}