import 'package:flutter/material.dart';

class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
        ],
      ),
    );
  }
}
