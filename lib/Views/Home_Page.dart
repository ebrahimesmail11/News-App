import 'package:flutter/material.dart';
import 'package:news_setup_app/widget/Catogery_List.dart';
import 'package:news_setup_app/widget/NewsListViewBuilder.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.amber,
              ),
              ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child:CatogeryList(),),
            SliverToBoxAdapter(child:  SizedBox(height: 25,),),
            NewsListViewBuilder(catogery: "general",),
          ],
        ),
      ),
      // Column(
      //   children: [
      //     CatogeryList(),
      //     SizedBox(height: 25,),
      //     Expanded(child: NewsTileList(),),
      //   ],
      // ),
      // SliverList(
      //   delegate: SliverChildBuilderDelegate(childCount: 10,(context,index){
      //     return Padding(
      //       padding: EdgeInsets.only(bottom: 16, right: 10,left: 10),
      //       child: NewsTileList(),
      //     );
      //   }),
      // ),
    );
  }
}
