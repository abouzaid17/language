import 'package:flutter/material.dart';
import 'package:language/components/item_info.dart';
import 'package:language/models/number.dart';

class phrasesItem extends StatelessWidget {
  const phrasesItem({super.key, required this.items, required this.color});
  final ItemModel items;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: color,
      child: Row(children: [
        Container(
          child: Expanded(child: ItemInfo(items: items)),
        )
      ]),
    );
  }
}
