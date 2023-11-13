import 'package:flutter/material.dart';
import 'package:news_setup_app/widget/NewsListViewBuilder.dart';

class CatogryView extends StatelessWidget {
  const CatogryView({super.key,required this.catogery});
final String catogery;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(catogery: catogery,),
        ],
      ),
    );
  }
}

