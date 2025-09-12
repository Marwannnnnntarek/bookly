import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingNewestBooks extends StatelessWidget {
  const LoadingNewestBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[600]!,
      highlightColor: Colors.grey[300]!,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, bottom: 16),
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 120, // control row height
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Book Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          width: 80,
                          height: 120,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(width: 16),
                      // Book Info
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Title
                            Container(
                              width: 200,
                              height: 20,
                              color: Colors.grey[600],
                            ),
                            const SizedBox(height: 4),
                            // Author
                            Container(
                              width: 100,
                              height: 16,
                              color: Colors.grey[600],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 20,
                                  color: Colors.grey[600],
                                ),
                                const Spacer(),
                                Container(
                                  width: 30,
                                  height: 20,
                                  color: Colors.grey[600],
                                ),
                                const SizedBox(width: 24),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 24);
          },
          itemCount: 5,
        ),
      ),
    );
  }
}
