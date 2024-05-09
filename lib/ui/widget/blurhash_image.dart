import 'package:digital_bookshelf_client/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:global_configuration/global_configuration.dart';

class BlurhashImage extends StatelessWidget {
  const BlurhashImage({required this.image, super.key});

  final ImageModel image;

  @override
  Widget build(BuildContext context) => Image.network(
    "${GlobalConfiguration().getValue('imageUrl') as String}${image.id}",
    loadingBuilder: (context, child, loadingProgress) {
      if (loadingProgress == null) {
        return child;
      }
      return Center(
        child: BlurHash(
          hash: image.blurhash,
          imageFit: BoxFit.contain,
        ),
      );
    },
    errorBuilder: (context, ex, stack) => Center(
      child: BlurHash(
        hash: image.blurhash,
        imageFit: BoxFit.contain,
      ),
    ),
  );
}
