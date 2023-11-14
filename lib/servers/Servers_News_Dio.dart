import 'package:dio/dio.dart';

import 'package:news_setup_app/Model/article_Model.dart';

class NewsDio{
  final Dio dio;
  NewsDio(this.dio);
   Future<List<ArticleModel>>getNews({required String category})async{
       try {
         var response = await dio.get(
             'https://newsapi.org/v2/top-headlines?country=us&apiKey=455eb85de17a414a943ed9da1a40a032&category=$category');
         Map<String, dynamic>jsonData = response.data;
         List<dynamic> articles = jsonData['articles'];
         List<ArticleModel> articleList = [];
         for (var article in articles) {
           ArticleModel articleModel = ArticleModel.fromJson(article);
           articleList.add(articleModel);
         }
         return articleList;
       }catch(e){
         return [];
       }
   }
}
