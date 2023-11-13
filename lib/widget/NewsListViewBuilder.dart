import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_setup_app/Model/article_Model.dart';
import 'package:news_setup_app/servers/Servers_News_Dio.dart';
import 'package:news_setup_app/widget/NewsTile_List.dart';
import 'package:news_setup_app/widget/Simmer_ListView.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key,required this.catogery});
final String catogery;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    future = NewsDio(Dio()).getNews(category: widget.catogery);
    Future.delayed(Duration(seconds: 2), () {
      setState(() {

      });
    });
    super.initState();
  }

  // List<ArticleModel> articles = [];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsTileList(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return SliverFillRemaining(
              child: Center(
                child: Text('oops there was an error , try later'),
              ),
            );
          } else {
            return SliverFillRemaining(
              child: Center(
                child: ShimmerListView(),
              ),
            );
          }
        });
    // return isLoading ? SliverFillRemaining(child: Center(child: CircularProgressIndicator()),): articles.isNotEmpty? NewsTileList(articles:articles):SliverFillRemaining(child: Center(child: Text('oops there was an error , try later')),);
  }
}
