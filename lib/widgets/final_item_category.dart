import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';
import 'package:toku/widgets/custom_picture.dart';
import 'package:toku/widgets/item_info.dart';

class FinalItemCategory extends StatelessWidget {
  const FinalItemCategory(
      {super.key, required this.finalItemModel, required this.color});

  final ItemModel finalItemModel;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          CustomPicture(itemModel: finalItemModel),
          Expanded(child: ItemInfo(itemModel: finalItemModel))
        ],
      ),
    );
  }
}
