

import 'package:flutter/material.dart';
import 'package:news_setup_app/Model/article_Model.dart';


import 'package:news_setup_app/widget/News_Tile.dart';

class NewsTileList extends StatelessWidget {
  final List<ArticleModel> articles;
  const NewsTileList({super.key,required this.articles});



  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,(context,index){
        return Padding(
          padding: EdgeInsets.only(bottom: 16, right: 10,left: 10),
          child: NewsTile(articleModel: articles[index],),
        );
      }),
    );
  }
}
