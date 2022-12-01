

import 'dart:ui';

import 'package:flutter/cupertino.dart';

class NewsEntry {
  final String name;
  final String description;
  final String text;
  late NetworkImage _image;
  final String author;

  NewsEntry(this.name, this.author, this.description, this.text);

  setImage(String path){
    _image = NetworkImage(path);
  }

  Image getImage() {
    // ignore: unnecessary_null_comparison
    return _image == null ?  Image(image: _image)  : Image(image: NetworkImage(""));
  }

}