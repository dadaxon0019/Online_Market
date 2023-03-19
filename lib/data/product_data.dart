import 'dart:convert';

import 'package:http/http.dart' as http;

class Products {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  Products({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  Products.fromJson(Map<String, dynamic> json) {
    albumId = json['albumId'];
    id = json['id'];
    title = json['title'];
    url = json['url'];
    thumbnailUrl = json['thumbnailUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['albumId'] = this.albumId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['url'] = this.url;
    data['thumbnailUrl'] = this.thumbnailUrl;
    return data;
  }

  Future<Products?> getProducts() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    final responce = await http.get(url);
    return Products.fromJson(json.decode(responce.body));
  }
}
