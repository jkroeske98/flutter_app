
import 'dart:ui';

import 'package:flutter/cupertino.dart';

 class NewsEntry {
   late int id;
   late String name;
   late String title;
   late String description;
   String? text;
   String? image;
   String? author;
   String? source;

  NewsEntry(this.id, this.name, this.author, this.description, this.text, this.image, this.source, this.title);

  NewsEntry.fromJson(Map<String, dynamic> json){
   id = json["id"];
   source = json["source"];
   author = json["author"];
   title = json["title"];
   description = json["description"];
   image = json["img_url"];
   description = json["article"];
  }


  ImageProvider? getImage() {
    return image != null ? NetworkImage(image.toString()) : null;
  }

}