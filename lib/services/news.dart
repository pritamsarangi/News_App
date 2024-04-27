import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/artical_model.dart';

class News{
  List<ArticleModel> news =[];
  Future<void> getNews(String catagory)async{
    String url = "https://newsapi.org/v2/everything?q=$catagory&apiKey=20334f48ecdc4a8a913313e3a0385c92";
    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);
    if(jsonData['status']=='ok'){
      jsonData['articles'].forEach((element){
        if(element['urlToImage'] != null && element['description']!=null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element['content'],
            author: element['author'],
          );
          news.add(articleModel);
        }
      });
    }

  }
}