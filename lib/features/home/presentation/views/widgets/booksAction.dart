import 'package:bookly/core/helpers/styles.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
    required this.background_color,
    required this.text_color,
    this.borderRadius,
    required this.text,
  });
  final background_color;
  final text_color;
  final BorderRadius? borderRadius;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: background_color,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10),
        ),
      ),
      child: Text(text, style: Styles.textStyle16.copyWith(color: text_color)),
    );
  }
}
