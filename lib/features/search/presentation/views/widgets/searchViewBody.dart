import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          hint: Text('Start Searching'),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 20),
          ),
        ),
      ),
    );
  }
}
