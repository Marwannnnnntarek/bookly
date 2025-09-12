import 'package:flutter/material.dart';

class BookInfoImage extends StatelessWidget {
  const BookInfoImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        imageUrl,
        height: 250,
        width: 160,
        fit: BoxFit.cover,
        errorBuilder:
            (context, error, stackTrace) =>
                const Icon(Icons.broken_image, size: 80),
      ),
    );
  }
}
