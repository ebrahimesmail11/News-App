import 'package:flutter/material.dart';
import 'package:news_setup_app/Model/Catogory_Model.dart';
import 'package:news_setup_app/Views/Catogry_view.dart';


class CatogeryCard extends StatelessWidget {
  const CatogeryCard({super.key,required this.Catogries});
  final CatogryModel Catogries;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CatogryView(catogery: Catogries.catogryName,);
        },),);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          width: 160,
          height: 85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12,),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(Catogries.imageAsset),
            ),
          ),
           child: Center(
            child: Text(
              Catogries.catogryName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
