import 'package:flutter/material.dart';

class NewestBookAuthor extends StatelessWidget {
  const NewestBookAuthor({super.key, required this.author});

  final String author;

  @override
  Widget build(BuildContext context) {
    return Text(
      author,
      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
