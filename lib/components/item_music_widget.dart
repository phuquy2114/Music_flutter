
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_flutter/models/music_model.dart';

import '../gen/assets.gen.dart';

class ItemMusicWidget extends StatelessWidget {
  final MusicModel model;
  const ItemMusicWidget({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          shadowColor: Colors.grey,
          child: CachedNetworkImage(
            imageUrl: model.imageUrl ?? '',
            placeholder: (context, url) =>
            const CircularProgressIndicator(),
            errorWidget: (context, url, error) =>
            const Icon(Icons.error),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model.title ?? " No Data",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            Text(model.author?? "No Data"),
          ],
        ),
        Container(
            margin: const EdgeInsets.only(left: 30), child: Text(model.time?? "00.00")),
        Container(
            margin: const EdgeInsets.only(left: 75),
            child: Assets.icons.icDot.svg()),
        Container(
            margin: const EdgeInsets.only(left: 75, right: 25),
            child: Assets.icons.icOption.svg()),
      ],
    );
  }
}
