import 'package:flutter/material.dart';
import 'package:news_setup_app/Model/Catogory_Model.dart';
import 'package:news_setup_app/widget/Catogery_Card.dart';


class CatogeryList extends StatelessWidget {
  const CatogeryList({super.key});
  final List<CatogryModel> items=const[
    CatogryModel(catogryName: 'business', imageAsset: 'assets/business.avif'),
    CatogryModel(catogryName: 'entertainment', imageAsset: 'assets/entertaiment.avif'),
    CatogryModel(catogryName: 'general', imageAsset: 'assets/general.avif'),
    CatogryModel(catogryName: 'health', imageAsset: 'assets/health.avif'),
    CatogryModel(catogryName: 'science', imageAsset: 'assets/science.avif'),
    CatogryModel(catogryName: 'sports', imageAsset: 'assets/sports.avif'),
    CatogryModel(catogryName: 'technology', imageAsset: 'assets/technology.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context,index){
            return CatogeryCard(Catogries: items[index],);
          }
      ),
    );
  }
}
