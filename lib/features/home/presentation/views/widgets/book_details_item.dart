import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/preview_button.dart';
import 'package:flutter/material.dart';

class BookDetailsItems extends StatelessWidget {
  const BookDetailsItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
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
        SizedBox(height: 16),
        Text(
          'The Lord Of The Rings',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Opacity(
          opacity: 0.5,
          child: Text(
            'J.R.R TOLKIEN',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          ),
        ),
        SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.yellow, size: 20),
            SizedBox(width: 2),
            Text(
              '4.8',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 2),
            Opacity(
              opacity: 0.5,
              child: Text(
                '(25709)',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
        PreviewButton(),
      ],
    );
  }
}
