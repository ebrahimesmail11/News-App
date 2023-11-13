import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';
class LoadingShimmer extends StatelessWidget {
  const LoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child:  Container(
              color: Colors.white,
              width: double.infinity,
              height: 200,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            width: double.infinity,
            height: 14.0,
            color: Colors.white,
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            width: double.infinity,
            height: 14.0,
            color: Colors.white,
          ),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
