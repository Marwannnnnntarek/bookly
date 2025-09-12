import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingFeaturedBooks extends StatelessWidget {
  const LoadingFeaturedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[600]!,
      highlightColor: Colors.grey[300]!,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          height: 240, // height for book cards
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            separatorBuilder: (context, index) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: AspectRatio(
                  aspectRatio: 2 / 3, // typical book cover ratio
                  child: Container(color: Colors.grey[600]),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
