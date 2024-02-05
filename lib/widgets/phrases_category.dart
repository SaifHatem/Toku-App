import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';

import 'package:toku/widgets/item_info.dart';

class PhrasesCategory extends StatelessWidget {
  const PhrasesCategory(
      {super.key, required this.finalItemModel, required this.color});

  final ItemModel finalItemModel;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [Expanded(child: ItemInfo(itemModel: finalItemModel))],
      ),
    );
  }
}
