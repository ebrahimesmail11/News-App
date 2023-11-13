import 'package:flutter/material.dart';
import 'package:news_setup_app/widget/Lodaing_Shimmer.dart';

class ShimmerListView extends StatelessWidget {
  const ShimmerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        LoadingShimmer(),
        LoadingShimmer(),
        LoadingShimmer(),
        LoadingShimmer(),
      ],
    );
  }
}
