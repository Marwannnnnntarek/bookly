import 'package:bookly/core/utils/classes/app_assets.dart';
import 'package:bookly/core/utils/classes/app_routes.dart';
import 'package:bookly/core/utils/classes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestBooksListviewItem extends StatelessWidget {
  const NewestBooksListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: GestureDetector(
        onTap: () {
          context.push(AppRoutes.details);
        },
        child: SizedBox(
          height: 110,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: AspectRatio(
                  aspectRatio: 2.5 / 4,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red,
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(AppAssets.testImage),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        'Harry Potter and the Goblet of Fire',
                        style: AppStyles.textStyle18,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text('J.K Rowling', style: AppStyles.textStyle14),
                    SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Row(
                        children: [
                          Text('Free', style: AppStyles.textStyle18),
                          Spacer(),
                          Icon(Icons.star, color: Colors.yellow, size: 20),
                          SizedBox(width: 2),
                          Text(
                            '4.8',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 2),
                          Text(
                            '(25709)',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
