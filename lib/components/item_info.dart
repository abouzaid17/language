import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language/models/number.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.items});
  final ItemModel items;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                items.jpName,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                items.enName,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 8,
        ),
        IconButton(
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource(items.sound));
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 28,
          ),
        )
      ],
    );
  }
}
