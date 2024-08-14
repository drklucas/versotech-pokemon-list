import 'package:app/models/pokemon/sprite.model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SpriteListWidget extends StatelessWidget {
  final Sprite item;
  const SpriteListWidget(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CachedNetworkImage(
          imageUrl: item.front_default, 
          errorWidget: (context, url, error) => Icon(Icons.error),
          height: 64,
          width: 64,
          fit: BoxFit.cover,
        ),
        CachedNetworkImage(
          imageUrl: item.back_default, 
          errorWidget: (context, url, error) => Icon(Icons.error),
          height: 64,
          width: 64,
          fit: BoxFit.cover,
        ),
        CachedNetworkImage(
          imageUrl: item.front_shiny, 
          errorWidget: (context, url, error) => Icon(Icons.error),
          height: 64,
          width: 64,
          fit: BoxFit.cover,
        ),
        CachedNetworkImage(
          imageUrl: item.back_shiny, 
          errorWidget: (context, url, error) => Icon(Icons.error),
          height: 64,
          width: 64,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
