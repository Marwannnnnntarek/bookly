import 'package:flutter/material.dart';

class NewestBookImage extends StatelessWidget {
  const NewestBookImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(imageUrl, width: 80, height: 120, fit: BoxFit.cover),
    );
  }
}
