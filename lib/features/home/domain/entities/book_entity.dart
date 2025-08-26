import 'package:flutter/material.dart';

class BookEntity {
  final String title, author;
  final Image image;
  final num rate, count;

  BookEntity({
    required this.title,
    required this.author,
    required this.image,
    required this.rate,
    required this.count,
  });
}
