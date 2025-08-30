import 'package:bookly/features/home/presentation/views/widgets/custom_fading.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListviewIndicator extends StatelessWidget {
  const FeaturedBooksListviewIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFading(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: ListView.separated(
          separatorBuilder: (_, __) => const SizedBox(width: 8),
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) {
            return AspectRatio(
              aspectRatio: 2.5 / 4,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    color: Colors.grey,
                  )),
            );
          },
        ),
      ),
    );
  }
}
