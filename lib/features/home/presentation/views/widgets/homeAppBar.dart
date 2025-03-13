import 'package:bookly/core/helpers/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:go_router/go_router.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 30, left: 30),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 25),
          Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push('/SearchView');
            },
            icon: Icon(FontAwesomeIcons.magnifyingGlass),
          ),
        ],
      ),
    );
  }
}
