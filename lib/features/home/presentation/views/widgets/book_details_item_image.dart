import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookDetailsitemImage extends StatelessWidget {
  const BookDetailsitemImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
          aspectRatio: 2.5 / 4,
          child: CachedNetworkImage(
            imageUrl: '',
            fit: BoxFit.fill,
          )),
    );
  }
}
