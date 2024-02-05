import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';

class CustomPicture extends StatelessWidget {
  const CustomPicture({super.key, required this.itemModel});

  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        color: const Color(0xffFFF6DC),
        child: Image.asset(itemModel.image!),
      ),
    );
  }
}
