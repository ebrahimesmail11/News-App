import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_setup_app/Model/article_Model.dart';
import 'package:news_setup_app/servers/Servers_News_Dio.dart';
import 'package:news_setup_app/widget/NewsTile_List.dart';


class TwoNewsTileList extends StatefulWidget {
  const TwoNewsTileList({super.key});

  @override
  State<TwoNewsTileList> createState() => _NewsTileListState();
}

class _NewsTileListState extends State<TwoNewsTileList> {
  List<ArticleModel> articles=[];
  bool isLoading=true;
  @override
  void initState() {
    getGeneralNews();
    super.initState();
  }

  Future<void> getGeneralNews()async{
    // articles=await NewsDio(Dio()).getNews();
    isLoading =false;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ? SliverFillRemaining(hasScrollBody:false,child: Center(child: CircularProgressIndicator(),)): articles.isNotEmpty ? NewsTileList(articles: articles): SliverFillRemaining(child: Center(child: Text('oops there was an error , try later')),);
     }
  }